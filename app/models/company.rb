class Company < ActiveRecord::Base
  attr_accessible :city, :homepage, :name
  
  has_many :accusations, :as => :accusable
end
