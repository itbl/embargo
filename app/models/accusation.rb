class Accusation < ActiveRecord::Base
  belongs_to :accuser, :class_name => 'User'
  belongs_to :accusable, :polymorphic => true
  attr_accessible :description, :title
end
