require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { category_subject_id: @question.category_subject_id, description: @question.description, feed_back: @question.feed_back, is_published: @question.is_published, is_shared_boolean: @question.is_shared_boolean, mark: @question.mark, name: @question.name, parent_id: @question.parent_id, question_type_id: @question.question_type_id, sort_order: @question.sort_order, subject_id: @question.subject_id, user_id: @question.user_id }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    put :update, id: @question, question: { category_subject_id: @question.category_subject_id, description: @question.description, feed_back: @question.feed_back, is_published: @question.is_published, is_shared_boolean: @question.is_shared_boolean, mark: @question.mark, name: @question.name, parent_id: @question.parent_id, question_type_id: @question.question_type_id, sort_order: @question.sort_order, subject_id: @question.subject_id, user_id: @question.user_id }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
