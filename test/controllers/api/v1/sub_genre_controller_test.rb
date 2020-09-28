require 'test_helper'

class Api::V1::SubGenreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_sub_genre_index_url
    assert_response :success
  end

end
