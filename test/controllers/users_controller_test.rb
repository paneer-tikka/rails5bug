require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, api_key: @user.api_key, city_id: @user.city_id, country_id: @user.country_id, creator_id: @user.creator_id, deleter_id: @user.deleter_id, dob: @user.dob, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, location_id: @user.location_id, middle_name: @user.middle_name, mobile: @user.mobile, owner_id: @user.owner_id, owner_type: @user.owner_type, password: @user.password, pin_code: @user.pin_code, profile_picture: @user.profile_picture, secret: @user.secret, state_id: @user.state_id, status: @user.status, title: @user.title, updater_id: @user.updater_id } }
    end

    assert_redirected_to user_path(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address: @user.address, api_key: @user.api_key, city_id: @user.city_id, country_id: @user.country_id, creator_id: @user.creator_id, deleter_id: @user.deleter_id, dob: @user.dob, email: @user.email, first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, location_id: @user.location_id, middle_name: @user.middle_name, mobile: @user.mobile, owner_id: @user.owner_id, owner_type: @user.owner_type, password: @user.password, pin_code: @user.pin_code, profile_picture: @user.profile_picture, secret: @user.secret, state_id: @user.state_id, status: @user.status, title: @user.title, updater_id: @user.updater_id } }
    assert_redirected_to user_path(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_path
  end
end
