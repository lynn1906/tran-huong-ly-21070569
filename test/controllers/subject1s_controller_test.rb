require "test_helper"

class Subject1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject1 = subject1s(:one)
  end

  test "should get index" do
    get subject1s_url
    assert_response :success
  end

  test "should get new" do
    get new_subject1_url
    assert_response :success
  end

  test "should create subject1" do
    assert_difference("Subject1.count") do
      post subject1s_url, params: { subject1: { description: @subject1.description, name: @subject1.name } }
    end

    assert_redirected_to subject1_url(Subject1.last)
  end

  test "should show subject1" do
    get subject1_url(@subject1)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject1_url(@subject1)
    assert_response :success
  end

  test "should update subject1" do
    patch subject1_url(@subject1), params: { subject1: { description: @subject1.description, name: @subject1.name } }
    assert_redirected_to subject1_url(@subject1)
  end

  test "should destroy subject1" do
    assert_difference("Subject1.count", -1) do
      delete subject1_url(@subject1)
    end

    assert_redirected_to subject1s_url
  end
end
