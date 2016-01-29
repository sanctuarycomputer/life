Rails.application.routes.draw do
  namespace :v1 do
    resources :links
    resources :users
  end
end
