class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :school

      t.timestamps null: false
    end
  end
end
