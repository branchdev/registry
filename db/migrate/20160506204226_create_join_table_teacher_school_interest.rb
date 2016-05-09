class CreateJoinTableTeacherSchoolInterest < ActiveRecord::Migration
  def change
    create_join_table :teachers, :school_interests do |t|
      # t.index [:teacher_id, :school_interest_id]
      # t.index [:school_interest_id, :teacher_id]
    end
  end
end
