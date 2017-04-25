require 'test_helper'

class TagBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_blog = tag_blogs(:one)
  end

  test "should get index" do
    get tag_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_blog_url
    assert_response :success
  end

  test "should create tag_blog" do
    assert_difference('TagBlog.count') do
      post tag_blogs_url, params: { tag_blog: { blog_id: @tag_blog.blog_id, tag_id: @tag_blog.tag_id } }
    end

    assert_redirected_to tag_blog_url(TagBlog.last)
  end

  test "should show tag_blog" do
    get tag_blog_url(@tag_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_blog_url(@tag_blog)
    assert_response :success
  end

  test "should update tag_blog" do
    patch tag_blog_url(@tag_blog), params: { tag_blog: { blog_id: @tag_blog.blog_id, tag_id: @tag_blog.tag_id } }
    assert_redirected_to tag_blog_url(@tag_blog)
  end

  test "should destroy tag_blog" do
    assert_difference('TagBlog.count', -1) do
      delete tag_blog_url(@tag_blog)
    end

    assert_redirected_to tag_blogs_url
  end
end
