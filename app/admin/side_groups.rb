ActiveAdmin.register SidesGroup do
	permit_params :name,:menu_item_id,sides_items_attributes: [:id,:name,:price,:menu_item_id, :_destroy ]

	form do |f|
		f.semantic_errors *f.object.errors.keys
		f.inputs "SidesGroup" do 
			f.input :name
			f.input :side_type, :prompt => 'Select Sides Type', :as => :select, :collection => ["Extra","Choice"]
			f.input :group_side
			f.input :menu_item_id, :prompt => 'Select Menu Item', :as => :select, :collection => MenuItem.all.map{|m| [m.name, m.id]}
		end
		f.has_many :sides_items,heading: 'Items of Sides Group' do |item|
      item.input :name
      item.input :price
      item.input :_destroy, :as => :boolean
    end
		f.actions
	end

	show do
  	@sides_group = SidesGroup.find(params["id"])
    attributes_table do
      row :name
      row "Menu Item" do |n|
	      link_to(n.menu_item.name, admin_menu_item_path(n.menu_item_id))
	    end
    end
    panel "Sides Items" do
    	render(:partial => "sides_item_detail", :locals => {:sides_group => @sides_group,:context => self})
    end
  end


end
