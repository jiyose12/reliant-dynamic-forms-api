class FormSpecificationsController < ApplicationController

  def create
    # @entry_definition = EntryDefinition.new(entry_definition_params)
    @form_specification = JSON.parse(params[:form_specification].gsub(/\n/, ""))
    logger.debug "form_specification: #{@form_specification}"
puts  
    # if @form_specification.save
    #   render json: @form_specification, status: :created, location: @form_specification
    # else
    #   render json: @form_specification.errors, status: :unprocessable_entity
    # end
  end
end
