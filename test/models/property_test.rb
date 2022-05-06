require "test_helper"

#properly tested models
class PropertyTest < ActiveSupport::TestCase
  test "imovel attributes must not be empty" do
    property = Property.new
    assert property.invalid?
    assert property.errors[:name].any?
    assert property.errors[:image1].any?
    assert property.errors[:image2].any?
    assert property.errors[:image3].any?
  end

def new_property(image1)
  Property.new(name: "Jardim Sao Paulo",
    image1: image1,
    image2: "image2",
    image3: "image3")
  end

  test "image1" do
    ok = %w{fred.gif fred.jpg fred.png FRED.JPG FRED.jpg
    http:??a.b.c/x/y/z/fred.gif }
  
    bad = %w{ fred.doc }
  
    ok.each do |image1|
      assert new_property(image1).invalid?, 
          "#{image1} shoudn't be invalid" 
    end
  
    bad.each do |image1|
      assert new_property(image1).invalid?
          "#{image1} shouldn't be valid"
    end
  end 
end

