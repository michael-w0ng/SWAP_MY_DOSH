Rails.application.routes.draw do
  # mount Chat::Engine => "/chat", as: "chat"
  get 'messages/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within file, see http://guides.rubyonrails.org/routing.html
resources :requests do
  resources :offers, only: [:new, :create, :show] do
    resources :messages
    post "/confirm", to: "offers#confirm"
    post "/decline", to: "offers#decline"
    get "/confirmed", to: "offers#actual_confirmation"
    get "/continue", to: "offers#keep_chatting"
    end
  end

  get "/personal", to: "requests#personal"
  get "/chats", to: "offers#my_chats"
  resources :offers, only: [:index]
end
