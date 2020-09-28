Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      post "/login", to: "auth#create"
      post "/users", to: "user#create"
      get "/user_info", to: "user#show"
      get "/categories", to: "sub_genre#index"
      get "/books", to: "book#index"
    end
  end
end
