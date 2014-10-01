class Bag

	DEFAULT_CAPACITY = 5

	def initialize(options = {})
	  @items = []
	  @capacity = options.fetch(:capacity, capacity)
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def item_count
  	@items.count
	end

	def receive_item_from(person)
		raise "Bag Full" if full?
		@items << person.put_in
	end

	def release_item
		@items.pop
	end

	def full?
		item_count == capacity
	end

	def empty?
		item_count == 0
	end

end