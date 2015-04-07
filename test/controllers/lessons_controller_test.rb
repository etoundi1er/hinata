require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post :create, lesson: { attachment: @lesson.attachment, chapter_id: @lesson.chapter_id, lesson_description: @lesson.lesson_description, lesson_end_date: @lesson.lesson_end_date, lesson_start_date: @lesson.lesson_start_date, lesson_title: @lesson.lesson_title }
    end

    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should show lesson" do
    get :show, id: @lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson
    assert_response :success
  end

  test "should update lesson" do
    patch :update, id: @lesson, lesson: { attachment: @lesson.attachment, chapter_id: @lesson.chapter_id, lesson_description: @lesson.lesson_description, lesson_end_date: @lesson.lesson_end_date, lesson_start_date: @lesson.lesson_start_date, lesson_title: @lesson.lesson_title }
    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete :destroy, id: @lesson
    end

    assert_redirected_to lessons_path
  end
end
