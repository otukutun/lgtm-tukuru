require 'test_helper'

class DocsControllerTest < ActionDispatch::IntegrationTest
  test "should get api" do
    get docs_api_url
    assert_response :success
  end

end
