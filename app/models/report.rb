class Report < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  has_many :comments
  attr_accessible :description, :title
  
  paginates_per 25
  
  default_scope order('created_at desc')
  
  accepts_nested_attributes_for :client
  make_voteable
end
