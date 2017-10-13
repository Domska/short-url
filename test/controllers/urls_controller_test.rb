require 'test_helper'

class UrlsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @url = urls(:first)
    @other_url = urls(:second)
  end
  
  test "original url should not be blank" do
    @url.original_url = "     "
    assert_not @url.valid?
  end
  
  test "short url should not be too long" do
    @url.short_url = "a" * 7
    assert_not @url.valid?
  end
    
  test "short url should be unique" do
    other_url = @url.dup
    @other_url.save
    assert_not other_url.valid?
  end
  
  test "url validation should accept valid urls" do
    valid_urls = %w[http://valid.url http://sub.valid.url http://valid.url/valid]
    valid_urls.each do |valid_url|
      @url.original_url = valid_url
      assert @url.valid?, "#{valid_url.inspect} should be valid"
    end
  end
  
  test "url validation should reject invalid urls" do
    invalid_urls = %w[invalidurl htp://invalid.url http//invalidurl 
                                 hp://invalidurl //invalidurl]
    invalid_urls.each do |invalid_url|
      @url.original_url = invalid_url
      assert_not @url.valid?, "#{invalid_url.inspect} should be invalid"
    end
  end

end
