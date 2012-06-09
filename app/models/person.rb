class Person < ActiveRecord::Base
  belongs_to :company
  attr_accessible :email, :name
  has_many :accusations, :as => :accusable
  acts_as_taggable
  acts_as_taggable_on :sins

end
