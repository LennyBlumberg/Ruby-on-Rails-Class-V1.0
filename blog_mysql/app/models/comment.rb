class Comment < ActiveRecord::Base
  belongs_to :post
  validates :commmenter, :presence => true
end
