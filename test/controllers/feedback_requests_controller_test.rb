require 'test_helper'

class FeedbackRequestsControllerTest < ActionController::TestCase
  setup do
    @feedback_request = feedback_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedback_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedback_request" do
    assert_difference('FeedbackRequest.count') do
      post :create, feedback_request: { b_read: @feedback_request.b_read, prompt: @feedback_request.prompt, sender_id: @feedback_request.sender_id, user_id: @feedback_request.user_id }
    end

    assert_redirected_to feedback_request_path(assigns(:feedback_request))
  end

  test "should show feedback_request" do
    get :show, id: @feedback_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedback_request
    assert_response :success
  end

  test "should update feedback_request" do
    patch :update, id: @feedback_request, feedback_request: { b_read: @feedback_request.b_read, prompt: @feedback_request.prompt, sender_id: @feedback_request.sender_id, user_id: @feedback_request.user_id }
    assert_redirected_to feedback_request_path(assigns(:feedback_request))
  end

  test "should destroy feedback_request" do
    assert_difference('FeedbackRequest.count', -1) do
      delete :destroy, id: @feedback_request
    end

    assert_redirected_to feedback_requests_path
  end
end
