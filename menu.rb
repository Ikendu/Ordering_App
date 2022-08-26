require "date"

class Menu
	attr_accessor :name
	attr_accessor :price

	def initialize(name:, price:)
		self.name = name
		self.price = price
	end

	def info
		return "#{self.name} N#{self.price}"
	end

	def get_total_price(count)
		total_price = count * self.price

		if count >= 3
			total_price -= 1
		end

		if count >=1 && Menu.discount_day?
			total_price -= 1
		end

		return total_price
	end

	def Menu.discount_day?
		date = Date.today
		return date.thursday?
	end



end