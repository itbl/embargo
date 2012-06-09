class Client < ActiveRecord::Base

  attr_accessible :email, :name, :city, :homepage

  has_many :accusations
  has_many :accolades

  acts_as_taggable
  acts_as_taggable_on :sins
  

  validates :name, :presence => true, :length => { :in => 5..128 }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                                 :message => "Email did not pass validation you jackass." }
  validates :homepage, :format => { :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix,
                                                                  :message => "According to this regex I got off the internet, that isn't a valid URL/URI" }

end
