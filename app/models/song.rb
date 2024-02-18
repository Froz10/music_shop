class Song < ApplicationRecord
  belongs_to :artist
  has_many :downloads
  scope :songs_top, -> { joins(:downloads).group('songs.id').order('COUNT(downloads.id) DESC') }

  def self.top(days, count)
    where('downloads.download_date >= ?', days.days.ago)
      .joins(:downloads)
      .group('songs.id')
      .order('COUNT(downloads.id) DESC')
      .limit(count)
  end
end
