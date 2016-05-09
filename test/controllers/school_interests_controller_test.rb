require 'test_helper'

class SchoolInterestsControllerTest < ActionController::TestCase
  setup do
    @school_interest = school_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_interest" do
    assert_difference('SchoolInterest.count') do
      post :create, school_interest: { name: @school_interest.name }
    end

    assert_redirected_to school_interest_path(assigns(:school_interest))
  end

  test "should show school_interest" do
    get :show, id: @school_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_interest
    assert_response :success
  end

  test "should update school_interest" do
    patch :update, id: @school_interest, school_interest: { name: @school_interest.name }
    assert_redirected_to school_interest_path(assigns(:school_interest))
  end

  test "should destroy school_interest" do
    assert_difference('SchoolInterest.count', -1) do
      delete :destroy, id: @school_interest
    end

    assert_redirected_to school_interests_path
  end
end
