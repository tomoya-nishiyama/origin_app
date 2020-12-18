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

  def self.search(search)
    Origin.where('text LIKE(?)', "%#{search}%").or(Origin.where('book_title LIKE(?)', "%#{search}%"))
  end

  def self.csearch(category_id)
    Origin.where('category_id = ?', category_id)
  end

  def self.allsearch(category_id, search)
    Origin.where("(category_id = ?) AND ((text LIKE(?)) OR (book_title LIKE(?)))", "#{category_id}", "%#{search}%", "%#{search}%")
  end

end
