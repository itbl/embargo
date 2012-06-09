class Person < ActiveRecord::Base

  attr_accessible :email, :name
  has_many :accusations
  acts_as_taggable
  acts_as_taggable_on :sins

end
