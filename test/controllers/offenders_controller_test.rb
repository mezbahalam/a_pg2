require 'test_helper'

class OffendersControllerTest < ActionController::TestCase
  setup do
    @offender = offenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offender" do
    assert_difference('Offender.count') do
      post :create, offender: { age: @offender.age, name: @offender.name }
    end

    assert_redirected_to offender_path(assigns(:offender))
  end

  test "should show offender" do
    get :show, id: @offender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offender
    assert_response :success
  end

  test "should update offender" do
    patch :update, id: @offender, offender: { age: @offender.age, name: @offender.name }
    assert_redirected_to offender_path(assigns(:offender))
  end

  test "should destroy offender" do
    assert_difference('Offender.count', -1) do
      delete :destroy, id: @offender
    end

    assert_redirected_to offenders_path
  end
end
