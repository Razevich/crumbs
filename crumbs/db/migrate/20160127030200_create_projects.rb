class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text     :name
      t.text     :description
      t.text     :need
      t.text     :reward
      t.integer  :non_profit_id

      t.timestamps null: false
    end
  end
end
