class Comment < ApplicationRecord
  validates :text, :commenter_id, presence: true
  validates :text, uniqueness: { scope: [:commenter_id, :post_id] }

  belongs_to :post
  belongs_to :commenter, class_name: "User"
end
