require 'test_helper'

class SavedMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_message = saved_messages(:one)
  end

  test "should get index" do
    get saved_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_message_url
    assert_response :success
  end

  test "should create saved_message" do
    assert_difference('SavedMessage.count') do
      post saved_messages_url, params: { saved_message: { body: @saved_message.body, title: @saved_message.title } }
    end

    assert_redirected_to saved_message_path(SavedMessage.last)
  end

  test "should show saved_message" do
    get saved_message_url(@saved_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_message_url(@saved_message)
    assert_response :success
  end

  test "should update saved_message" do
    patch saved_message_url(@saved_message), params: { saved_message: { body: @saved_message.body, title: @saved_message.title } }
    assert_redirected_to saved_message_path(@saved_message)
  end

  test "should destroy saved_message" do
    assert_difference('SavedMessage.count', -1) do
      delete saved_message_url(@saved_message)
    end

    assert_redirected_to saved_messages_path
  end
end
