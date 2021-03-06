class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|
      t.text     :name
      t.text     :description
      t.text     :location
      t.text     :website
      t.text     :email
      t.text     :phone
      t.text     :password
      t.text     :confirm_password

      t.timestamps null: false
    end
  end
end
