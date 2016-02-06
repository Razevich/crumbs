class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :solutionable, :polymorphic => true

      t.timestamps null: false
    end
  end
end
