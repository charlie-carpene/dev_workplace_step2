require "test_helper"

class FrenchForeignersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @french_foreigner = french_foreigners(:one)
  end

  test "should get index" do
    get french_foreigners_url
    assert_response :success
  end

  test "should get new" do
    get new_french_foreigner_url
    assert_response :success
  end

  test "should create french_foreigner" do
    assert_difference('FrenchForeigner.count') do
      post french_foreigners_url, params: { french_foreigner: { country: @french_foreigner.country, nbr_french: @french_foreigner.nbr_french, year: @french_foreigner.year } }
    end

    assert_redirected_to french_foreigner_url(FrenchForeigner.last)
  end

  test "should show french_foreigner" do
    get french_foreigner_url(@french_foreigner)
    assert_response :success
  end

  test "should get edit" do
    get edit_french_foreigner_url(@french_foreigner)
    assert_response :success
  end

  test "should update french_foreigner" do
    patch french_foreigner_url(@french_foreigner), params: { french_foreigner: { country: @french_foreigner.country, nbr_french: @french_foreigner.nbr_french, year: @french_foreigner.year } }
    assert_redirected_to french_foreigner_url(@french_foreigner)
  end

  test "should destroy french_foreigner" do
    assert_difference('FrenchForeigner.count', -1) do
      delete french_foreigner_url(@french_foreigner)
    end

    assert_redirected_to french_foreigners_url
  end
end
