Rails.application.routes.draw do
  get "polls" => "polls#index"
  get "polls/logging_with_exception_object" => "polls#logging_with_exception_object"
  get "polls/logging_with_backtrace" => "polls#logging_with_backtrace"
  get "polls/logging_with_error_subscriber" => "polls#logging_with_error_subscriber"
  # resources :polls, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
