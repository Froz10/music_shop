class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length
      t.integer :filesize
      t.references :artist, foreign_key: true
      t.timestamps
    end
  end
end
