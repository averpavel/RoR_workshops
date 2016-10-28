require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Awesome App"
  end
  test "should get root" do
    get FILL_IN
    assert_response FILL_IN
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title} | Home fow Awesomeness!"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "#{@base_title} | Do you need help?"
  end

  test "should get about" do
   get static_pages_about_url
   assert_response :success
   assert_select "title", "#{@base_title} | About Awesomeness!"
 end

end
