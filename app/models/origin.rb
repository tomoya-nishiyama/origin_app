class Origin < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :book_title
    validates :text
    validates :category_id
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
  end

end
