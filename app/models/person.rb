class Person < ActiveRecord::Base
  belongs_to :company
  attr_accessible :email, :name
end
