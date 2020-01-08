require 'test_helper'

class MasterpiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @masterpiece = masterpieces(:one)
  end

  test "should get index" do
    get masterpieces_url
    assert_response :success
  end

  test "should get new" do
    get new_masterpiece_url
    assert_response :success
  end

  test "should create masterpiece" do
    assert_difference('Masterpiece.count') do
      post masterpieces_url, params: { masterpiece: { Artist: @masterpiece.Artist, Description: @masterpiece.Description, Name: @masterpiece.Name, Picture: @masterpiece.Picture } }
    end

    assert_redirected_to masterpiece_url(Masterpiece.last)
  end

  test "should show masterpiece" do
    get masterpiece_url(@masterpiece)
    assert_response :success
  end

  test "should get edit" do
    get edit_masterpiece_url(@masterpiece)
    assert_response :success
  end

  test "should update masterpiece" do
    patch masterpiece_url(@masterpiece), params: { masterpiece: { Artist: @masterpiece.Artist, Description: @masterpiece.Description, Name: @masterpiece.Name, Picture: @masterpiece.Picture } }
    assert_redirected_to masterpiece_url(@masterpiece)
  end

  test "should destroy masterpiece" do
    assert_difference('Masterpiece.count', -1) do
      delete masterpiece_url(@masterpiece)
    end

    assert_redirected_to masterpieces_url
  end
end
