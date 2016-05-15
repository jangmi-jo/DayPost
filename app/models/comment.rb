class Comment < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :post
  validates :content, presence: true, length: { minimum: 5 }
end