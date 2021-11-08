Rails.application.routes.draw do
  get 'form_specifications/index'
  resources :entry_definitions
  resources :key_value_pair_definitions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
