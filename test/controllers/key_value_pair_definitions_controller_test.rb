require "test_helper"

class KeyValuePairDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @key_value_pair_definition = key_value_pair_definitions(:one)
  end

  test "should get index" do
    get key_value_pair_definitions_url, as: :json
    assert_response :success
  end

  test "should create key_value_pair_definition" do
    assert_difference('KeyValuePairDefinition.count') do
      post key_value_pair_definitions_url, params: { key_value_pair_definition: { children: @key_value_pair_definition.children, key: @key_value_pair_definition.key, value: @key_value_pair_definition.value } }, as: :json
    end

    assert_response 201
  end

  test "should show key_value_pair_definition" do
    get key_value_pair_definition_url(@key_value_pair_definition), as: :json
    assert_response :success
  end

  test "should update key_value_pair_definition" do
    patch key_value_pair_definition_url(@key_value_pair_definition), params: { key_value_pair_definition: { children: @key_value_pair_definition.children, key: @key_value_pair_definition.key, value: @key_value_pair_definition.value } }, as: :json
    assert_response 200
  end

  test "should destroy key_value_pair_definition" do
    assert_difference('KeyValuePairDefinition.count', -1) do
      delete key_value_pair_definition_url(@key_value_pair_definition), as: :json
    end

    assert_response 204
  end
end
