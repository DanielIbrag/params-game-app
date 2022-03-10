class NamesController < ApplicationController
  def name_params
    input_name = params["names"].upcase
    split = input_name.split("")
    if split[0] == "A"
      render json: { message: "Hey, your name starts with the first letter of the alphabet" }
    else
      render json: { message: input_name }
    end
  end
end
