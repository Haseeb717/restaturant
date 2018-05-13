ActiveAdmin.register MenuItem do
	permit_params :name,:description,:menu_group_id,:price
end
