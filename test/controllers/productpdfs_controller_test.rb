require 'test_helper'

class ProductpdfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productpdf = productpdfs(:one)
  end

  test "should get index" do
    get productpdfs_url
    assert_response :success
  end

  test "should get new" do
    get new_productpdf_url
    assert_response :success
  end

  test "should create productpdf" do
    assert_difference('Productpdf.count') do
      post productpdfs_url, params: { productpdf: { content_type: @productpdf.content_type, file_contents: @productpdf.file_contents, filename: @productpdf.filename, productid: @productpdf.productid, status: @productpdf.status, title: @productpdf.title, topics: @productpdf.topics } }
    end

    assert_redirected_to productpdf_url(Productpdf.last)
  end

  test "should show productpdf" do
    get productpdf_url(@productpdf)
    assert_response :success
  end

  test "should get edit" do
    get edit_productpdf_url(@productpdf)
    assert_response :success
  end

  test "should update productpdf" do
    patch productpdf_url(@productpdf), params: { productpdf: { content_type: @productpdf.content_type, file_contents: @productpdf.file_contents, filename: @productpdf.filename, productid: @productpdf.productid, status: @productpdf.status, title: @productpdf.title, topics: @productpdf.topics } }
    assert_redirected_to productpdf_url(@productpdf)
  end

  test "should destroy productpdf" do
    assert_difference('Productpdf.count', -1) do
      delete productpdf_url(@productpdf)
    end

    assert_redirected_to productpdfs_url
  end
end
