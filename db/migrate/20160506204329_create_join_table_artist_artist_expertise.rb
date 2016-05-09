class CreateJoinTableArtistArtistExpertise < ActiveRecord::Migration
  def change
    create_join_table :artists, :artist_expertises do |t|
      # t.index [:artist_id, :artist_expertise_id]
      # t.index [:artist_expertise_id, :artist_id]
    end
  end
end
