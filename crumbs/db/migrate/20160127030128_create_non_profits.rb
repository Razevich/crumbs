class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|

      t.timestamps null: false
    end
  end
end
