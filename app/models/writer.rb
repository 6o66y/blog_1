class Writer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles, dependent: :destroy

  validates :name, length: { maximum: 30 }
  validates :introduction, length: { maximum: 200 }

  attachment :image
end
