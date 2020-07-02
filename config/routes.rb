Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/your_name" => "examples#name"

    get "/url_segment_param/:guess" => "examples#guess"


  end
end
