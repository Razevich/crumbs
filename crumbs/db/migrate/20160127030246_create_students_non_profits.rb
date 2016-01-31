class CreateStudentsNonProfits < ActiveRecord::Migration
  def change
    create_table :students_non_profits do |t|
      t.integer  :student_id
      t.integer  :non_profit_id

      t.timestamps null: false
    end
  end
end
