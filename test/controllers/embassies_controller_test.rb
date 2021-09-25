require "test_helper"

class EmbassiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @embassy = embassies(:one)
  end

  test "should get index" do
    get embassies_url
    assert_response :success
  end

  test "should get new" do
    get new_embassy_url
    assert_response :success
  end

  test "should create embassy" do
    assert_difference('Embassy.count') do
      post embassies_url, params: { embassy: { coordinates: @embassy.coordinates, country: @embassy.country, latitude: @embassy.latitude, longitude: @embassy.longitude, type: @embassy.type_of_embassy } }
    end

    assert_redirected_to embassy_url(Embassy.last)
  end

  test "should show embassy" do
    get embassy_url(@embassy)
    assert_response :success
  end

  test "should get edit" do
    get edit_embassy_url(@embassy)
    assert_response :success
  end

  test "should update embassy" do
    patch embassy_url(@embassy), params: { embassy: { coordinates: @embassy.coordinates, country: @embassy.country, latitude: @embassy.latitude, longitude: @embassy.longitude, type: @embassy.type_of_embassy } }
    assert_redirected_to embassy_url(@embassy)
  end

  test "should destroy embassy" do
    assert_difference('Embassy.count', -1) do
      delete embassy_url(@embassy)
    end

    assert_redirected_to embassies_url
  end
end
