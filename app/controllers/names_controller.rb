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

  def url_segment_params
    input_number = params["variable"].to_i
    if input_number > 36
      render json: { message: "too high" }
    elsif input_number < 36
      render json: { message: "too low" }
    else
      render json: { message: "you got it!" }
    end
  end
end
