class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :content, presence: true
  attribute :amazonurl, :string
  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end
end
