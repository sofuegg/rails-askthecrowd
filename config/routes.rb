Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :questions, only: [ :index, :show, :new, :create ] do
        resources :answers, only: [ :index ], shallow: true
        resources :choices, only: [ :new, :create ], shallow: true
        get "/choices/choice_id", to: "choices_controller#result_to_my_question"
      end
    end
  end

  # post '/login' to: 'login#login'

end
