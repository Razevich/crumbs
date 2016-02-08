class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string   :name
      t.string   :first_name
      t.string   :last_name
      t.string   :email
      t.string   :affiliation
      t.text     :description
      t.string   :uid
      t.string   :url
      t.string   :token
      t.string   :provider
      t.string   :location
      t.string   :image_url
      t.string   :expires_at

      t.timestamps null: false
    end
  end
end
