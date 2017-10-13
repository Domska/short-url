require 'test_helper'

class UrlInputTest < ActionDispatch::IntegrationTest
   test "should get new" do
    get new_path
    assert_response :success
  end

  test "invalid url info" do
    get new_path
    assert_no_difference 'Url.count' do
      post urls_path, params: { url: { short_url: "", original_url: "test.com" } }
    end
    assert_template 'urls/new'
  end
    
end
