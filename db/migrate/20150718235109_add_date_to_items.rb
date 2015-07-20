class AddDateToItems < ActiveRecord::Migration
  def change
    add_column :items, :foundate, :date
  end
end
