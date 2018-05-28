require 'test_helper'

class PaintsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paints_index_url
    assert_response :success
  end

  test "should get show" do
    get paints_show_url
    assert_response :success
  end

  test "should get new" do
    get paints_new_url
    assert_response :success
  end

end
