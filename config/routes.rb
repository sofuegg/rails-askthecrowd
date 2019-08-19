Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  root to: 'pages#home'
  post '/login', to: 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get "/questions/my_responses/:user_id", to: "questions#my_responses"
      get "/questions/asked_questions/:user_id", to: "questions#asked_questions"
      resources :questions, only: [ :index, :show, :create ] do
        resources :choices, only: [ :create, :index, :result_to_my_question ] do
          get "/", to: "choices#result_to_my_question"
        end
      end
      resources :answers, only: [ :index, :create ], shallow: true
    end
  end


  def authenticate_v1_user
    authenticate_for V1::User
  end
  # post '/login' to: 'login#login'

end
