require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get pages_welcome_url
    assert_response :success
  end

  test "should get finish_game" do
    get pages_finish_game_url
    assert_response :success
  end

end
