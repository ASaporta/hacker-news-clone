class Post < ApplicationRecord
  validates :title, :link_url, :submitter_id, presence: true
  validates :title, uniqueness: { scope: :link_url }

  belongs_to :submitter, class_name: "User"
  has_many :comments, dependent: :destroy
end
