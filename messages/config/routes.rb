Messages::Application.routes.draw do
  resources :messages
  # get '/messages', to: "messages#index"
  # get '/messages/:id', to: "messages#show"

  # get '/messages/new', to: "messages#new"
  # post '/messages/new', to: "messages#create"

  # get '/messages/:id/edit', to: "messages#edit", as: "messages_edit"
  # put '/messages/:id', to: "messages#update", as: "message"

  # delete '/messages/:id', to: "messages#destroy"

  root to: "messages#index"
end
