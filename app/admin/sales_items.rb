ActiveAdmin.register SalesItem do
 
 	#Add back button to sales item admin page
	action_item do
		link_to "Back", admin_sales_items_path
	end

	#make image visible in show view
  show  do
  	panel "Details" do
      attributes_table_for sales_item do
      	row("Name") {sales_item.name}
      	row("Description") {sales_item.description}
      	row("Price") {sales_item.price}
        row("Image") { image_tag sales_item.image }
      end	
  	end	
  end 
end
