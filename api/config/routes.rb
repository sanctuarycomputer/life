Rails.application.routes.draw do
  namespace :v1 do

    resources :links

    resources :users do
      post 'token', on: :collection
    end

  end
end
