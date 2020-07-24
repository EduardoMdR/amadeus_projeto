class Album < ApplicationRecord
  
  validates :name, length:{minimum: 2}, presence: true
  validates :artist, presence: true

  belongs_to :artist
  has_many :songs, dependent: :destroy
  has_one_attached :photo

  def self.search(search)
    if search.present?
      Album.where('name LIKE ?', "%#{search}%")
    else
      Album.all
     end
  end
end
