class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :report
  attr_accessible :body, :title
  
  make_voteable
end
