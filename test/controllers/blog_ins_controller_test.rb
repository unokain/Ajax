require 'test_helper'

class BlogInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_in = blog_ins(:one)
  end

  test "should get index" do
    get blog_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_in_url
    assert_response :success
  end

  test "should create blog_in" do
    assert_difference('BlogIn.count') do
      post blog_ins_url, params: { blog_in: { content: @blog_in.content, title: @blog_in.title } }
    end

    assert_redirected_to blog_in_url(BlogIn.last)
  end

  test "should show blog_in" do
    get blog_in_url(@blog_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_in_url(@blog_in)
    assert_response :success
  end

  test "should update blog_in" do
    patch blog_in_url(@blog_in), params: { blog_in: { content: @blog_in.content, title: @blog_in.title } }
    assert_redirected_to blog_in_url(@blog_in)
  end

  test "should destroy blog_in" do
    assert_difference('BlogIn.count', -1) do
      delete blog_in_url(@blog_in)
    end

    assert_redirected_to blog_ins_url
  end
end
