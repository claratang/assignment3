require 'test_helper'

class HomeStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_state = home_states(:one)
  end

  test "should get index" do
    get home_states_url
    assert_response :success
  end

  test "should get new" do
    get new_home_state_url
    assert_response :success
  end

  test "should create home_state" do
    assert_difference('HomeState.count') do
      post home_states_url, params: { home_state: { name: @home_state.name, state: @home_state.state } }
    end

    assert_redirected_to home_state_url(HomeState.last)
  end

  test "should show home_state" do
    get home_state_url(@home_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_state_url(@home_state)
    assert_response :success
  end

  test "should update home_state" do
    patch home_state_url(@home_state), params: { home_state: { name: @home_state.name, state: @home_state.state } }
    assert_redirected_to home_state_url(@home_state)
  end

  test "should destroy home_state" do
    assert_difference('HomeState.count', -1) do
      delete home_state_url(@home_state)
    end

    assert_redirected_to home_states_url
  end
end
