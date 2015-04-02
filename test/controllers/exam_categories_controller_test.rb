require 'test_helper'

class ExamCategoriesControllerTest < ActionController::TestCase
  setup do
    @exam_category = exam_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_category" do
    assert_difference('ExamCategory.count') do
      post :create, exam_category: { title: @exam_category.title }
    end

    assert_redirected_to exam_category_path(assigns(:exam_category))
  end

  test "should show exam_category" do
    get :show, id: @exam_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_category
    assert_response :success
  end

  test "should update exam_category" do
    patch :update, id: @exam_category, exam_category: { title: @exam_category.title }
    assert_redirected_to exam_category_path(assigns(:exam_category))
  end

  test "should destroy exam_category" do
    assert_difference('ExamCategory.count', -1) do
      delete :destroy, id: @exam_category
    end

    assert_redirected_to exam_categories_path
  end
end
