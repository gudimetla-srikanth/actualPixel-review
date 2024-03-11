require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    @data = Article.new
    assert @data.save,"saved the value"
  end
end
