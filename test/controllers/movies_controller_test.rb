require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post :create, movie: { cast: @movie.cast, title: @movie.title, year: @movie.year }
    end

    assert_response 201
  end

  test "should show movie" do
    get :show, id: @movie
    assert_response :success
  end

  test "should update movie" do
    put :update, id: @movie, movie: { cast: @movie.cast, title: @movie.title, year: @movie.year }
    assert_response 204
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete :destroy, id: @movie
    end

    assert_response 204
  end
end
