Rails.application.routes.draw do
  root 'welcome#index'
  post '/bot', to: 'bot#index'
end
