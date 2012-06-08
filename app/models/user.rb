

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  
  def self.find_for_github_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    if user = self.find_by_email(data.email)
      user
    elsif user_signup_allowed?(data)
      self.create(:email => data.email, :password => Devise.friendly_token[0,20], :username => data.login)
    else
      raise Hubba::RequirementsError, "We're sorry, you're not eligible to register at this time."
    end
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.github_data"] && session["devise.github_data"]["extra"]["raw_info"]
        user.email = data["email"]
        user.username = data["login"]
      end
    end
  end
  
  private
  def self.user_signup_allowed?(user_data)
    repos = user_data.public_repos
    followers = user_data.followers
    created = Time.parse(user_data.created_at)
    repos >= 5 && (followers >= 10 || created < 1.year.ago)
  end
end
