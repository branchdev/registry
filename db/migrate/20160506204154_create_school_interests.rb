class CreateSchoolInterests < ActiveRecord::Migration
  def change
    create_table :school_interests do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
