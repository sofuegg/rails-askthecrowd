Rails.application.routes.draw do
  root to: 'pages#home'
  post '/login', to: 'login#login' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
