class KeyValuePairDefinitionsController < ApplicationController
  before_action :set_key_value_pair_definition, only: [:show, :update, :destroy]

  # GET /key_value_pair_definitions
  def index
    @key_value_pair_definitions = KeyValuePairDefinition.all

    render json: @key_value_pair_definitions
  end

  # GET /key_value_pair_definitions/1
  def show
    render json: @key_value_pair_definition
  end

  # POST /key_value_pair_definitions
  def create
    @key_value_pair_definition = KeyValuePairDefinition.new(key_value_pair_definition_params)

    if @key_value_pair_definition.save
      render json: @key_value_pair_definition, status: :created, location: @key_value_pair_definition
    else
      render json: @key_value_pair_definition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /key_value_pair_definitions/1
  def update
    if @key_value_pair_definition.update(key_value_pair_definition_params)
      render json: @key_value_pair_definition
    else
      render json: @key_value_pair_definition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /key_value_pair_definitions/1
  def destroy
    @key_value_pair_definition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_value_pair_definition
      @key_value_pair_definition = KeyValuePairDefinition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def key_value_pair_definition_params
      params.require(:key_value_pair_definition).permit(:key, :value, :children)
    end
end
