class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  belongs_to :publisher

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :published, presence: true
end
