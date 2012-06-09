class Company < ActiveRecord::Base
  attr_accessible :city, :homepage, :name
    
  has_many :accusations, :as => :accusable
  validates :city, :presence => true, :length => { :in => 2..256 }
  validates :name, :presence => true, :length => { :in => 2..128 }
  validates :homepage, :format => { :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix,
                                   :message => "According to this regex I got off the internet, that isn't a valid URL/URI" }
end
