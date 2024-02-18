class CreateDownloads < ActiveRecord::Migration[6.1]
  def change
    create_table :downloads do |t|
      t.references :song, foreign_key: true
      t.date :download_date
      t.timestamps
    end
  end
end
