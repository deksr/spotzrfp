class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemname
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
