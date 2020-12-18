class Like < ApplicationRecord
  belongs_to :user
  belongs_to :origin
  validates_uniqueness_of :origin_id, scope: :user_id
end
