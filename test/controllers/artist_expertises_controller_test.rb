require 'test_helper'

class ArtistExpertisesControllerTest < ActionController::TestCase
  setup do
    @artist_expertise = artist_expertises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_expertises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_expertise" do
    assert_difference('ArtistExpertise.count') do
      post :create, artist_expertise: { name: @artist_expertise.name }
    end

    assert_redirected_to artist_expertise_path(assigns(:artist_expertise))
  end

  test "should show artist_expertise" do
    get :show, id: @artist_expertise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_expertise
    assert_response :success
  end

  test "should update artist_expertise" do
    patch :update, id: @artist_expertise, artist_expertise: { name: @artist_expertise.name }
    assert_redirected_to artist_expertise_path(assigns(:artist_expertise))
  end

  test "should destroy artist_expertise" do
    assert_difference('ArtistExpertise.count', -1) do
      delete :destroy, id: @artist_expertise
    end

    assert_redirected_to artist_expertises_path
  end
end
