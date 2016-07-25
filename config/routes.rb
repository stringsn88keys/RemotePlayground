Rails.application.routes.draw do
  resources :remotes do
    resources :keys
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
