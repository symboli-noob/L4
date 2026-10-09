
Rails.application.routes.draw do
  get "top/main"
  post "top/login"
  delete "top/logout"

  get "application/L4"

  get "up" => "rails/health#show", as: :rails_health_check

  root "top#main"
end
