Rails.application.routes.draw do
  get 'week', to: 'meetings#week'
  resources :meetings
  root 'meetings#index'
end
