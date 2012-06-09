class Report < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  attr_accessible :description, :title

  validates :title, :presence => true, :length => { :in => 5..128 }
  validates :description, :presence => true, :length => { :in => 100..2000 }
  
  paginates_per 25
  
  default_scope order('created_at desc')
  
  accepts_nested_attributes_for :client
  make_voteable
end
