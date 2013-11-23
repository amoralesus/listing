# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Girl.delete_all

Girl.create(:name => 'Tiffany', :description => "I love to clean", :product_code => "com.clean.tiffany")
Girl.create(:name => 'Bethanie', :description => "Cleaning is my life", :product_code => "com.clean.bethany")
Girl.create(:name => 'Maira', :description => "I clean quickly", :product_code => "com.clean.maira")
Girl.create(:name => 'Maria', :description => "I clean better than anyone else", :product_code => "com.clean.maria")
Girl.create(:name => 'Lucia', :description => "I hire someone else to clean", :product_code => "com.clean.lucia")
