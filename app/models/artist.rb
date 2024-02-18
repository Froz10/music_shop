class Artist < ApplicationRecord
  has_many :songs, -> { order(title: :asc) }

  def self.top(letter, count)
    joins(songs: :downloads)
      .where('artists.name LIKE ?', "#{letter}%")
      .group('artists.id')
      .order('COUNT(downloads.id) DESC')
      .limit(count)
  end
end
