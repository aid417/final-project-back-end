require 'test_helper'

class MergesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merge = merges(:one)
  end

  test "should get index" do
    get merges_url, as: :json
    assert_response :success
  end

  test "should create merge" do
    assert_difference('Merge.count') do
      post merges_url, params: { merge: { category_id: @merge.category_id, user_id: @merge.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show merge" do
    get merge_url(@merge), as: :json
    assert_response :success
  end

  test "should update merge" do
    patch merge_url(@merge), params: { merge: { category_id: @merge.category_id, user_id: @merge.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy merge" do
    assert_difference('Merge.count', -1) do
      delete merge_url(@merge), as: :json
    end

    assert_response 204
  end
end
