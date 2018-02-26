require 'test_helper'

class CarYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_year = car_years(:one)
  end

  test "should get index" do
    get car_years_url
    assert_response :success
  end

  test "should get new" do
    get new_car_year_url
    assert_response :success
  end

  test "should create car_year" do
    assert_difference('CarYear.count') do
      post car_years_url, params: { car_year: {  } }
    end

    assert_redirected_to car_year_url(CarYear.last)
  end

  test "should show car_year" do
    get car_year_url(@car_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_year_url(@car_year)
    assert_response :success
  end

  test "should update car_year" do
    patch car_year_url(@car_year), params: { car_year: {  } }
    assert_redirected_to car_year_url(@car_year)
  end

  test "should destroy car_year" do
    assert_difference('CarYear.count', -1) do
      delete car_year_url(@car_year)
    end

    assert_redirected_to car_years_url
  end
end
