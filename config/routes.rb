Rails.application.routes.draw do
  get "top/main"
  post "top/login"

  get "up" => "rails/health#show", as: :rails_health_check
  get "application/L4"

  root "top#main"
end