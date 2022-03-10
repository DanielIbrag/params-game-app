Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/name_params" => "names#name_params"
  get "url_segment_params/*variable/:number" => "names#url_segment_params"
end
