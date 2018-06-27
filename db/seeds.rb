# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


# menu = Menu.create!(:name=>"Lunch")

# menu1 = MenuGroup.create!(:name=>"Sandwiches",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Soups",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Quiches",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Breads",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"From The Grill",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Sides",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Salads",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Bagals",:menu_id=>menu.id)
# MenuGroup.create!(:name=>"Beverages",:menu_id=>menu.id)


# menuitem1 = MenuItem.create!(:name=>"Chicken Salad",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem2 = MenuItem.create!(:name=>"Ham & Swiss",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem3 = MenuItem.create!(:name=>"Turkey",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem4 = MenuItem.create!(:name=>"Tuna",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem5 = MenuItem.create!(:name=>"Corned Beef",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem6 = MenuItem.create!(:name=>"Egg Salad",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem7 = MenuItem.create!(:name=>"Cheese",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem8 = MenuItem.create!(:name=>"Peanut butter and Jam",:price=>4.75,:menu_group_id=>menu1.id)
# menuitem9 = MenuItem.create!(:name=>"Bacon, lettuce & tomato",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem10 = MenuItem.create!(:name=>"Veggie avocado, cucumber, onion, sunflower seeds & Cheese",:price=>8.75,:menu_group_id=>menu1.id)
# menuitem11 = MenuItem.create!(:name=>"Combo Deal 1",:description=>"Half sandwich + cup of soup or green salad",:price=>9.75,:menu_group_id=>menu1.id)
# menuitem12 = MenuItem.create!(:name=>"Combo Deal 2",:description=>"Whole sandwich + cup of soup or green salad",:price=>10.75,:menu_group_id=>menu1.id)
# menuitem13 = MenuItem.create!(:name=>"Bay Shrimp, cream cheese & avocado",:price=>9.75,:menu_group_id=>menu1.id)
# menuitem14 = MenuItem.create!(:name=>"Hummus Veggie",:description=>"tomato, onion, cucumber, sprouts & lettuce in a pita",:price=>8.75,:menu_group_id=>menu1.id)

# MenuItem.first(10).each do |menu_item|
# 	group = SidesGroup.create!(:name=>"Select Size",:menu_item_id=>menu_item.id) 
# 	SidesItem.create!(:name=>"Half Sandwich",:price=>7.75,:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
# 	SidesItem.create!(:name=>"Full Sandwich",:price=>8.75,:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
# end


menu2 = MenuGroup.find_by_name("Soup")
menuitem1 = MenuItem.create!(:name=>"Small Soup & Salad Combo",:price=>7.95,:menu_group_id=>menu2.id)
menuitem2 = MenuItem.create!(:name=>"Large Soup & Salad Combo",:price=>9.25,:menu_group_id=>menu2.id)
menuitem3 = MenuItem.create!(:name=>"Homemade, hot & hearty",:menu_group_id=>menu2.id)

group = SidesGroup.create!(:name=>"Select Size",:menu_item_id=>menu_item1.id) 
SidesItem.create!(:name=>"Cup",:price=>3.95,:menu_item_id=>menu_item1.id,:sides_group_id=>group.id)
SidesItem.create!(:name=>"Bowl",:price=>4.95,:menu_item_id=>menu_item1.id,:sides_group_id=>group.id)

MenuItem.where(:id=>[menuitem3.id,menuitem2.id,menuitem1.id]).each do |menu_item|
	group = SidesGroup.create!(:name=>"Select Dressings",:menu_item_id=>menu_item.id) 
	SidesItem.create!(:name=>"Bleu Cheese",:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
	SidesItem.create!(:name=>"Thousand Island",:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
	SidesItem.create!(:name=>"Creamy Dill",:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
	SidesItem.create!(:name=>"Dijon Vinaigrette",:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
	SidesItem.create!(:name=>"Honey Mustard",:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
	SidesItem.create!(:name=>"Thai Peanut",:menu_item_id=>menu_item.id,:sides_group_id=>group.id)
end