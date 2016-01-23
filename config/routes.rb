Rails.application.routes.draw do
  resources :messages, defaults: { format: 'json' }, only: [:new, :show, :create]
end
