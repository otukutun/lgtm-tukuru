require 'test_helper'

class API::ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get api_images_url, as: :json
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post api_images_url, params: { image: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show image" do
    get api_image_url(@image), as: :json
    assert_response :success
  end

  test "should update image" do
    patch api_image_url(@image), params: { image: {  } }, as: :json
    assert_response 200
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete api_image_url(@image), as: :json
    end

    assert_response 204
  end
end
