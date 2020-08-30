class Article < ApplicationRecord
  belongs_to :writer

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true
end
