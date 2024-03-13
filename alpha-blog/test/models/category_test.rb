class CategoryTest < ActiveSupport::TestCase 
  test "test validation" do 
    @category = Category.new(name:"sr")
    assert_not @category.save
  end
  test "test the truth" do
    @category = Category.new(name:"srikanth")
    assert @category.save
  end
  test "fetching the data" do 
    @categories = Category.all 
    assert @categories
  end
end