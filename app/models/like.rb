class Like < ApplicationRecord
  validate :forbid_to_owner
  belongs_to :user
  belongs_to :post

  private
  def forbid_to_owner
    errors.add(:base, :owner_forbidden) if user_id == post.user_id
  end
 
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: :duplicated
  }
end
