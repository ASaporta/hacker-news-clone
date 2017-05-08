class User < ApplicationRecord
  has_many :posts, foreign_key: "submitter_id", class_name: "Post", dependent: :destroy
  has_many :comments, foreign_key: "commenter_id", dependent: :destroy
  validates :username, presence: true, uniqueness: true
end
