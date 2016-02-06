class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text     :name
      t.text     :type
      t.text     :location
      t.text     :field
      t.references :tagable, :polymorphic => true

      t.timestamps null: false
    end
  end
end
