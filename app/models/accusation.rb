class Accusation < ActiveRecord::Base
  belongs_to :accuser, :class_name => 'User'
  belongs_to :client
  attr_accessible :description, :title
  
  paginates_per 25
  
  default_scope order('created_at desc')
  
  accepts_nested_attributes_for :client
  make_voteable
end
