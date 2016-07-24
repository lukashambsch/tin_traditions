require 'test_helper'

class GiftEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gift_entry = gift_entries(:one)
  end

  test "should get index" do
    get gift_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_gift_entry_url
    assert_response :success
  end

  test "should create gift_entry" do
    assert_difference('GiftEntry.count') do
      post gift_entries_url, params: { gift_entry: { contents: @gift_entry.contents, message: @gift_entry.message, received_date: @gift_entry.received_date } }
    end

    assert_redirected_to gift_entry_url(GiftEntry.last)
  end

  test "should show gift_entry" do
    get gift_entry_url(@gift_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_gift_entry_url(@gift_entry)
    assert_response :success
  end

  test "should update gift_entry" do
    patch gift_entry_url(@gift_entry), params: { gift_entry: { contents: @gift_entry.contents, message: @gift_entry.message, received_date: @gift_entry.received_date } }
    assert_redirected_to gift_entry_url(@gift_entry)
  end

  test "should destroy gift_entry" do
    assert_difference('GiftEntry.count', -1) do
      delete gift_entry_url(@gift_entry)
    end

    assert_redirected_to gift_entries_url
  end
end
