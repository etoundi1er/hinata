require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { address_line: @student.address_line, city: @student.city, country: @student.country, date_of_birth: @student.date_of_birth, email: @student.email, enrollment_date: @student.enrollment_date, first_name: @student.first_name, gender: @student.gender, group: @student.group, guardian_id: @student.guardian_id, is_active: @student.is_active, is_deleted: @student.is_deleted, last_name: @student.last_name, phone: @student.phone, photo_data: @student.photo_data, place_of_birth: @student.place_of_birth, username: @student.username }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { address_line: @student.address_line, city: @student.city, country: @student.country, date_of_birth: @student.date_of_birth, email: @student.email, enrollment_date: @student.enrollment_date, first_name: @student.first_name, gender: @student.gender, group: @student.group, guardian_id: @student.guardian_id, is_active: @student.is_active, is_deleted: @student.is_deleted, last_name: @student.last_name, phone: @student.phone, photo_data: @student.photo_data, place_of_birth: @student.place_of_birth, username: @student.username }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
