class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string   :uid
      t.string   :first_name
      t.string   :url
      t.string   :provider
      t.string   :last_name
      t.string   :email
      t.string   :location
      t.string   :affiliation
      t.text     :description
      t.string   :image_url
      t.string   :token
      t.string   :expires_at

      t.timestamps null: false
    end
  end
end
