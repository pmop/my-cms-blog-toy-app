require 'test_helper'

class CommentAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_area = comment_areas(:one)
  end

  test "should get index" do
    get comment_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_area_url
    assert_response :success
  end

  test "should create comment_area" do
    assert_difference('CommentArea.count') do
      post comment_areas_url, params: { comment_area: { comments_id: @comment_area.comments_id, post_id: @comment_area.post_id } }
    end

    assert_redirected_to comment_area_url(CommentArea.last)
  end

  test "should show comment_area" do
    get comment_area_url(@comment_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_area_url(@comment_area)
    assert_response :success
  end

  test "should update comment_area" do
    patch comment_area_url(@comment_area), params: { comment_area: { comments_id: @comment_area.comments_id, post_id: @comment_area.post_id } }
    assert_redirected_to comment_area_url(@comment_area)
  end

  test "should destroy comment_area" do
    assert_difference('CommentArea.count', -1) do
      delete comment_area_url(@comment_area)
    end

    assert_redirected_to comment_areas_url
  end
end
