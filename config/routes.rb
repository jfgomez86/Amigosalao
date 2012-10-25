Amigosalao::Application.routes.draw do
  resources :people, only: [:new, :create]
end
