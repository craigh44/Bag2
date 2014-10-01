require "bag"

describe Bag do 

let(:bag) {Bag.new(:capacity => 5)}
let(:person) {double :person, put_in: true}

def fill_bag
	5.times {bag.receive_item_from(person)}
end

	it "Should be empty when we create it" do 
		expect(bag.item_count).to eq 0
	end

	it "Should be able to add items" do 
		expect{bag.receive_item_from(person)}.to change{bag.item_count}.by 1
	end

	it "Should raise error if it is full" do 
		fill_bag
		expect{bag.receive_item_from(person)}.to raise_error("Bag Full")
	end

end