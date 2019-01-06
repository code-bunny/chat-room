Rails.application.routes.draw do
  resources :chat_rooms, path: '/chat-rooms', only: [:new, :create, :show, :index]

  devise_for :users
  root 'welcome#index'
end
