require 'test_helper'

class LinkListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link_list = link_lists(:one)
  end

  test "should get index" do
    get link_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_link_list_url
    assert_response :success
  end

  test "should create link_list" do
    assert_difference('LinkList.count') do
      post link_lists_url, params: { link_list: { url: @link_list.url, webPageName: @link_list.webPageName } }
    end

    assert_redirected_to link_list_url(LinkList.last)
  end

  test "should show link_list" do
    get link_list_url(@link_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_list_url(@link_list)
    assert_response :success
  end

  test "should update link_list" do
    patch link_list_url(@link_list), params: { link_list: { url: @link_list.url, webPageName: @link_list.webPageName } }
    assert_redirected_to link_list_url(@link_list)
  end

  test "should destroy link_list" do
    assert_difference('LinkList.count', -1) do
      delete link_list_url(@link_list)
    end

    assert_redirected_to link_lists_url
  end
end
