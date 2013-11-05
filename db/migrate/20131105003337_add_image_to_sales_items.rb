class AddImageToSalesItems < ActiveRecord::Migration
  def change
    add_column :sales_items, :image, :string
  end
end
