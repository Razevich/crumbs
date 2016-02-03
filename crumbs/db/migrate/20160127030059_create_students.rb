class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text     :first_name, null: false
      t.text     :last_name, null: false
      t.text     :email, null: false
      t.text     :password, null: false
      t.text     :location
      t.text     :affiliation

      t.timestamps null: false
    end
  end
end
