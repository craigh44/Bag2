class Person

	def initialize
	  @items = []	
	end

	def put_in
	  @items.pop
	end

	def get_out(bag)
	  raise "Bag empty" if bag.empty?
      @items << bag.release_item
	end

	def get_item(item)
	  @items << item
	end

	def item_count
	  @items.count
	end

end