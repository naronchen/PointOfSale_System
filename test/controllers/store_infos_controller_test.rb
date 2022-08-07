require "test_helper"

class StoreInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_info = store_infos(:one)
  end

  test "should get index" do
    get store_infos_url, as: :json
    assert_response :success
  end

  test "should create store_info" do
    assert_difference("StoreInfo.count") do
      post store_infos_url, params: { store_info: { address: @store_info.address, contactNumber: @store_info.contactNumber, currencySymbol: @store_info.currencySymbol, name: @store_info.name, taxRate: @store_info.taxRate } }, as: :json
    end

    assert_response :created
  end

  test "should show store_info" do
    get store_info_url(@store_info), as: :json
    assert_response :success
  end

  test "should update store_info" do
    patch store_info_url(@store_info), params: { store_info: { address: @store_info.address, contactNumber: @store_info.contactNumber, currencySymbol: @store_info.currencySymbol, name: @store_info.name, taxRate: @store_info.taxRate } }, as: :json
    assert_response :success
  end

  test "should destroy store_info" do
    assert_difference("StoreInfo.count", -1) do
      delete store_info_url(@store_info), as: :json
    end

    assert_response :no_content
  end
end
