class CreateArtistExpertises < ActiveRecord::Migration
  def change
    create_table :artist_expertises do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
