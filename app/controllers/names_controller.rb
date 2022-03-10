class NamesController < ApplicationController
  def name_params
    input_name = params["names"]
    render json: { message: input_name.upcase }
  end
end
