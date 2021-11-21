Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "peeps#index"
  get "/peeps", to: "peeps#index"
  get "/peeps/:id", to: "peeps#show"
end
