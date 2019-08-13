Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :questions, only: [ :index, :show, :create ] do
        resources :choices, only: [ :create, :index, :result_to_my_question ] do
          resources :answers, only: [ :index, :create ], shallow: true
          get "/", to: "choices#result_to_my_question"
        end
      end
    end
  end

  # post '/login' to: 'login#login'

end
