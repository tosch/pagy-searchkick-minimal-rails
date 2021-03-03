require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    Article.reindex
  end

  test "should get index" do
    get articles_index_url, params: { search: "special" }

    assert_response :success
  end
end
