require "application_system_test_case"

class CommentAreasTest < ApplicationSystemTestCase
  setup do
    @comment_area = comment_areas(:one)
  end

  test "visiting the index" do
    visit comment_areas_url
    assert_selector "h1", text: "Comment Areas"
  end

  test "creating a Comment area" do
    visit comment_areas_url
    click_on "New Comment Area"

    fill_in "Comments", with: @comment_area.comments_id
    fill_in "Post", with: @comment_area.post_id
    click_on "Create Comment area"

    assert_text "Comment area was successfully created"
    click_on "Back"
  end

  test "updating a Comment area" do
    visit comment_areas_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @comment_area.comments_id
    fill_in "Post", with: @comment_area.post_id
    click_on "Update Comment area"

    assert_text "Comment area was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment area" do
    visit comment_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment area was successfully destroyed"
  end
end
