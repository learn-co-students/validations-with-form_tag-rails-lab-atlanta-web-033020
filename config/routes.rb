Rails.application.routes.draw do
  resource :authors, only: [:new, :create, :edit, :update]
  resource :posts, only: [:show, :new, :create, :edit, :update]
  get "/authors/:id", to: "authors#show", as: "author"
end
