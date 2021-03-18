require "application_system_test_case"

class BlogInsTest < ApplicationSystemTestCase
  setup do
    @blog_in = blog_ins(:one)
  end

  test "visiting the index" do
    visit blog_ins_url
    assert_selector "h1", text: "Blog Ins"
  end

  test "creating a Blog in" do
    visit blog_ins_url
    click_on "New Blog In"

    fill_in "Content", with: @blog_in.content
    fill_in "Title", with: @blog_in.title
    click_on "Create Blog in"

    assert_text "Blog in was successfully created"
    click_on "Back"
  end

  test "updating a Blog in" do
    visit blog_ins_url
    click_on "Edit", match: :first

    fill_in "Content", with: @blog_in.content
    fill_in "Title", with: @blog_in.title
    click_on "Update Blog in"

    assert_text "Blog in was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog in" do
    visit blog_ins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog in was successfully destroyed"
  end
end
