Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/memes" => "memes#index"
    get "/memes/:id" => "memes#show"
    post "/memes" => "memes#create"
    patch "/memes/:id" => "memes#update"
    delete "/memes/:id" => "memes#destroy"



  end
end
