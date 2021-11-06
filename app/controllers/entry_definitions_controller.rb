class EntryDefinitionsController < ApplicationController
  before_action :set_entry_definition, only: [:show, :update, :destroy]

  # GET /entry_definitions
  def index
    @entry_definitions = EntryDefinition.all

    render json: @entry_definitions
  end

  # GET /entry_definitions/1
  def show
    render json: @entry_definition
  end

  # POST /entry_definitions
  def create
    @entry_definition = EntryDefinition.new(entry_definition_params)

    if @entry_definition.save
      render json: @entry_definition, status: :created, location: @entry_definition
    else
      render json: @entry_definition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entry_definitions/1
  def update
    if @entry_definition.update(entry_definition_params)
      render json: @entry_definition
    else
      render json: @entry_definition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entry_definitions/1
  def destroy
    @entry_definition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_definition
      @entry_definition = EntryDefinition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_definition_params
      params.require(:entry_definition).permit(:type, :mutable, :default, :multiple, :keyvaluepairdefinition_id)
    end
end
