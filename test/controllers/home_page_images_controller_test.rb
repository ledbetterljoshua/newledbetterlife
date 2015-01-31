require 'test_helper'

class HomePageImagesControllerTest < ActionController::TestCase
  setup do
    @home_page_image = home_page_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_page_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_page_image" do
    assert_difference('HomePageImage.count') do
      post :create, home_page_image: {  }
    end

    assert_redirected_to home_page_image_path(assigns(:home_page_image))
  end

  test "should show home_page_image" do
    get :show, id: @home_page_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_page_image
    assert_response :success
  end

  test "should update home_page_image" do
    patch :update, id: @home_page_image, home_page_image: {  }
    assert_redirected_to home_page_image_path(assigns(:home_page_image))
  end

  test "should destroy home_page_image" do
    assert_difference('HomePageImage.count', -1) do
      delete :destroy, id: @home_page_image
    end

    assert_redirected_to home_page_images_path
  end
end
