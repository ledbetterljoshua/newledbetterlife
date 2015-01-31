require 'test_helper'

class BannerimagesControllerTest < ActionController::TestCase
  setup do
    @bannerimage = bannerimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bannerimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bannerimage" do
    assert_difference('Bannerimage.count') do
      post :create, bannerimage: {  }
    end

    assert_redirected_to bannerimage_path(assigns(:bannerimage))
  end

  test "should show bannerimage" do
    get :show, id: @bannerimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bannerimage
    assert_response :success
  end

  test "should update bannerimage" do
    patch :update, id: @bannerimage, bannerimage: {  }
    assert_redirected_to bannerimage_path(assigns(:bannerimage))
  end

  test "should destroy bannerimage" do
    assert_difference('Bannerimage.count', -1) do
      delete :destroy, id: @bannerimage
    end

    assert_redirected_to bannerimages_path
  end
end
