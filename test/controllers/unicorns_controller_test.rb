require 'test_helper'

class UnicornsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unicorn = unicorns(:one)
  end

  test "should get index" do
    get unicorns_url
    assert_response :success
  end

  test "should get new" do
    get new_unicorn_url
    assert_response :success
  end

  test "should create unicorn" do
    assert_difference('Unicorn.count') do
      post unicorns_url, params: { unicorn: { age: @unicorn.age, color: @unicorn.color, horn_type: @unicorn.horn_type, name: @unicorn.name } }
    end

    assert_redirected_to unicorn_url(Unicorn.last)
  end

  test "should show unicorn" do
    get unicorn_url(@unicorn)
    assert_response :success
  end

  test "should get edit" do
    get edit_unicorn_url(@unicorn)
    assert_response :success
  end

  test "should update unicorn" do
    patch unicorn_url(@unicorn), params: { unicorn: { age: @unicorn.age, color: @unicorn.color, horn_type: @unicorn.horn_type, name: @unicorn.name } }
    assert_redirected_to unicorn_url(@unicorn)
  end

  test "should destroy unicorn" do
    assert_difference('Unicorn.count', -1) do
      delete unicorn_url(@unicorn)
    end

    assert_redirected_to unicorns_url
  end
end
