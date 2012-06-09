class Person < ActiveRecord::Base
  belongs_to :company
  attr_accessible :email, :name
  has_many :accusations, :as => :accusable
  acts_as_taggable
  acts_as_taggable_on :sins
  validates :name, :presence => true, :length => { :in => 5..128 }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                                 :message => "Email did not pass validation you jackass." }
  #validates :email, :presence => true, :uniqueness => true  #TODO decide if we want to make emails unique

end
