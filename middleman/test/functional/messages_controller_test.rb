require 'test_helper'

class MessagesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "create message" do
    post :create, :format => :json, :message => {:bug => '23423'}
    assert_response :unprocessable_entity

    assert_difference('Message.count') do
      post :create, :format => :json,
        :email => 'foo@bar.com',
        :message => {:bug => 'foobar'}
    end
    assert_response :success
  end

end