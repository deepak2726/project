require 'test_helper'

class ExamsControllerTest < ActionController::TestCase
  setup do
    @exam = exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam" do
    assert_difference('Exam.count') do
      post :create, exam: { exam_code: @exam.exam_code, exam_type: @exam.exam_type, instruction: @exam.instruction, name: @exam.name, organisation_id: @exam.organisation_id, subject: @exam.subject, total_mark: @exam.total_mark }
    end

    assert_redirected_to exam_path(assigns(:exam))
  end

  test "should show exam" do
    get :show, id: @exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam
    assert_response :success
  end

  test "should update exam" do
    put :update, id: @exam, exam: { exam_code: @exam.exam_code, exam_type: @exam.exam_type, instruction: @exam.instruction, name: @exam.name, organisation_id: @exam.organisation_id, subject: @exam.subject, total_mark: @exam.total_mark }
    assert_redirected_to exam_path(assigns(:exam))
  end

  test "should destroy exam" do
    assert_difference('Exam.count', -1) do
      delete :destroy, id: @exam
    end

    assert_redirected_to exams_path
  end
end
