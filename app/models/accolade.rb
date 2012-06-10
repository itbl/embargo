class Accolade < Report
  attr_accessible :virtue_list
  validates :title, :presence => true, :length => { :in => 5..128 }
  validates :description, :presence => true, :length => { :in => 20..2000 }

end
