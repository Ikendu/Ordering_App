require "./food"
require "./drink"

food1 = Food.new(name: "Rice", price: 30, calorie: 700)
food2 = Food.new(name: "Beans", price: 20, calorie: 600)
food3 = Food.new(name: "Akpo", price: 10, calorie: 1000)
drink1 = Drink.new(name: "Beer", price: 30, volume: 300)
drink2 = Drink.new(name: "Soft D", price: 45, volume: 400)
dring2 = Drink.new(name: "Malt", price: 50, volume: 450)

menus = [food1, food2, food3, drink1, drink2,]
index = 0

menus.each do |menu|
	puts "No. #{index}. #{menu.info} each"
	index += 1
end

puts "Please can we know your nick name?"
name = gets.chomp
puts "Hello #{name}, Welcome to Younglife Store"

puts "select purchase item by number"

order = gets.chomp.to_i

if order > menus.length
	puts "please select No from the list"
else

order_selected = menus[order] 

puts "you have selected: #{order_selected.name}"

puts "How many do you want to purchase? (Buy from 3 and above and get 1$ discount)"

times = gets.chomp.to_i

puts  " The total price is #{order_selected.get_total_price(times)}"

end
