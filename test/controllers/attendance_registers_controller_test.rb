require 'test_helper'

class AttendanceRegistersControllerTest < ActionController::TestCase
  setup do
    @attendance_register = attendance_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendance_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendance_register" do
    assert_difference('AttendanceRegister.count') do
      post :create, attendance_register: { group_id: @attendance_register.group_id, period_id: @attendance_register.period_id }
    end

    assert_redirected_to attendance_register_path(assigns(:attendance_register))
  end

  test "should show attendance_register" do
    get :show, id: @attendance_register
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendance_register
    assert_response :success
  end

  test "should update attendance_register" do
    patch :update, id: @attendance_register, attendance_register: { group_id: @attendance_register.group_id, period_id: @attendance_register.period_id }
    assert_redirected_to attendance_register_path(assigns(:attendance_register))
  end

  test "should destroy attendance_register" do
    assert_difference('AttendanceRegister.count', -1) do
      delete :destroy, id: @attendance_register
    end

    assert_redirected_to attendance_registers_path
  end
end
