require "test_helper"

class EntryDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_definition = entry_definitions(:one)
  end

  test "should get index" do
    get entry_definitions_url, as: :json
    assert_response :success
  end

  test "should create entry_definition" do
    assert_difference('EntryDefinition.count') do
      post entry_definitions_url, params: { entry_definition: { default: @entry_definition.default, keyvaluepairdefinition_id: @entry_definition.keyvaluepairdefinition_id, multiple: @entry_definition.multiple, mutable: @entry_definition.mutable, type: @entry_definition.type } }, as: :json
    end

    assert_response 201
  end

  test "should show entry_definition" do
    get entry_definition_url(@entry_definition), as: :json
    assert_response :success
  end

  test "should update entry_definition" do
    patch entry_definition_url(@entry_definition), params: { entry_definition: { default: @entry_definition.default, keyvaluepairdefinition_id: @entry_definition.keyvaluepairdefinition_id, multiple: @entry_definition.multiple, mutable: @entry_definition.mutable, type: @entry_definition.type } }, as: :json
    assert_response 200
  end

  test "should destroy entry_definition" do
    assert_difference('EntryDefinition.count', -1) do
      delete entry_definition_url(@entry_definition), as: :json
    end

    assert_response 204
  end
end
