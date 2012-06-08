class Accusation < ActiveRecord::Base
  belongs_to :accuser
  belongs_to :accusable
  attr_accessible :description, :title
end
