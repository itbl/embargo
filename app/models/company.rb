class Company < ActiveRecord::Base
  attr_accessible :city, :homepage, :name
  
  alias_attribute :city, :location
  
  has_many :accusations, :as => :accusable
end
