class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :origins, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_origin, through: :likes, source: :origin

  validates :name, presence: true

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  def already_liked?(origin)
    self.likes.exists?(origin_id: origin.id)
  end

end
