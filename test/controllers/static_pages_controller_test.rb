require 'test_helper'


class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
  @base_title = "Ping Pong App"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    

    assert_select "title", "Home | #{@base_title}"
  end

  test "should get add" do
    get add_path
    assert_response :success
    
    assert_select "title", "Add | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get game" do
    get game_path
    assert_response :success
    
    assert_select "h2", {text:/Player [1-2]  21/}, count: 1
    assert_select "h2", {text:/Player [1-2]  1?[0-9]/}, count:1
  end
end
