class Accusation < ActiveRecord::Base
  belongs_to :accuser, :class_name => 'User'
  belongs_to :accusable, :polymorphic => true
  attr_accessible :description, :title
  
  paginates_per 25
  
  default_scope order('created_at desc')
  
  accepts_nested_attributes_for :accusable
  make_voteable
end
