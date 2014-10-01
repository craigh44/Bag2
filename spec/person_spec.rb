require "person"

describe Person do 

let(:person) {Person.new}
let(:bag) {double :bag, release_item: true, empty?: false, receive_item_from: true}

  it "Should be able to get items from the world" do 
    expect{person.get_item("item")}.to change{person.item_count}.by 1
  end

  it "Should be able to get things out of the bag" do 
  	expect{person.get_out(bag)}.to change{person.item_count}.by 1
  end

  it "Should raise an error if bag is empty" do
  	bag = double :bag, release_item: true, empty?: true, receive_item_from: true
   	expect{person.get_out(bag)}.to raise_error("Bag empty")
  end

end