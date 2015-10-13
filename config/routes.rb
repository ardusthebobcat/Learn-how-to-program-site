Rails.application.routes.draw do
  resources :languages do
    resources :lessons
  end
end
