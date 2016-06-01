class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :artist_id
      t.integer :teacher_id
      t.string :status

      t.timestamps null: false
    end
  end
end
