class Article < ApplicationRecord
  belongs_to :writer

  attachment :image

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true
end
