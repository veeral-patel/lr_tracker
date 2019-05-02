require 'test_helper'

class EngagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @engagement = engagements(:one)
  end

  test "should get index" do
    get engagements_url
    assert_response :success
  end

  test "should get new" do
    get new_engagement_url
    assert_response :success
  end

  test "should create engagement" do
    assert_difference('Engagement.count') do
      post engagements_url, params: { engagement: { client: @engagement.client, code: @engagement.code } }
    end

    assert_redirected_to engagement_url(Engagement.last)
  end

  test "should show engagement" do
    get engagement_url(@engagement)
    assert_response :success
  end

  test "should get edit" do
    get edit_engagement_url(@engagement)
    assert_response :success
  end

  test "should update engagement" do
    patch engagement_url(@engagement), params: { engagement: { client: @engagement.client, code: @engagement.code } }
    assert_redirected_to engagement_url(@engagement)
  end

  test "should destroy engagement" do
    assert_difference('Engagement.count', -1) do
      delete engagement_url(@engagement)
    end

    assert_redirected_to engagements_url
  end
end
