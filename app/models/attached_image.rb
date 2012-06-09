class AttachedImage < ActiveRecord::Base
  belongs_to :report
  attr_accessible :image
end
