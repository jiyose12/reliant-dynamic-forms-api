class FormSpecificationsController < ApplicationController
  def index
    @entry_definitions = EntryDefinition.all
    @key_value_pair_definitions = KeyValuePairDefinition.all
    @form_specifications = Array.new

    # render json: @form_specifications
  end

  def create
    @form_specification = EntryDefinition.new(entry_definition_params)
  
    @form_specification.key_value_pair_definition_id = params[:key_value_pair_definition]

    if @form_specification.save
      render json: @form_specification, status: :created, location: @form_specification
    else
      render json: @form_specification.errors, status: :unprocessable_entity
    end
  end
end

# percorro o array de key value
# salvar a key e value e retornar a key_id e value_id 
# percorrer a key e salvar os elementos no banco junto com a key_id
# percorrer a value e salvar os elementos no banco junto com a valeu_id