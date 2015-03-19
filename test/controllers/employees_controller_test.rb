require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address_line: @employee.address_line, city: @employee.city, date_of_birth: @employee.date_of_birth, email: @employee.email, employee_category: @employee.employee_category, employee_level: @employee.employee_level, employee_qualification: @employee.employee_qualification, experience_years: @employee.experience_years, first_name: @employee.first_name, last_name: @employee.last_name, phone: @employee.phone, start_date: @employee.start_date }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { address_line: @employee.address_line, city: @employee.city, date_of_birth: @employee.date_of_birth, email: @employee.email, employee_category: @employee.employee_category, employee_level: @employee.employee_level, employee_qualification: @employee.employee_qualification, experience_years: @employee.experience_years, first_name: @employee.first_name, last_name: @employee.last_name, phone: @employee.phone, start_date: @employee.start_date }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
