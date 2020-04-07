require "application_system_test_case"

class LinkListsTest < ApplicationSystemTestCase
  setup do
    @link_list = link_lists(:one)
  end

  test "visiting the index" do
    visit link_lists_url
    assert_selector "h1", text: "Link Lists"
  end

  test "creating a Link list" do
    visit link_lists_url
    click_on "New Link List"

    fill_in "Url", with: @link_list.url
    fill_in "Webpagename", with: @link_list.webPageName
    click_on "Create Link list"

    assert_text "Link list was successfully created"
    click_on "Back"
  end

  test "updating a Link list" do
    visit link_lists_url
    click_on "Edit", match: :first

    fill_in "Url", with: @link_list.url
    fill_in "Webpagename", with: @link_list.webPageName
    click_on "Update Link list"

    assert_text "Link list was successfully updated"
    click_on "Back"
  end

  test "destroying a Link list" do
    visit link_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Link list was successfully destroyed"
  end
end
