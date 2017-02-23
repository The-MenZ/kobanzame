require 'test_helper'

class MaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get materials_url
    assert_response :success
  end

  test "should get new" do
    get new_material_url
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post materials_url, params: { material: { active: @material.active, content_type: @material.content_type, content_value: @material.content_value, created_user_id: @material.created_user_id, external_comment: @material.external_comment, internal_comment: @material.internal_comment, status: @material.status, updated_user_id: @material.updated_user_id } }
    end

    assert_redirected_to material_url(Material.last)
  end

  test "should show material" do
    get material_url(@material)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_url(@material)
    assert_response :success
  end

  test "should update material" do
    patch material_url(@material), params: { material: { active: @material.active, content_type: @material.content_type, content_value: @material.content_value, created_user_id: @material.created_user_id, external_comment: @material.external_comment, internal_comment: @material.internal_comment, status: @material.status, updated_user_id: @material.updated_user_id } }
    assert_redirected_to material_url(@material)
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete material_url(@material)
    end

    assert_redirected_to materials_url
  end
end
