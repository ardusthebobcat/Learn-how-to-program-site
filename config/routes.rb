Rails.application.routes.draw do
  resources :languages do
    resources :lessons
  end

  resources :lessons do
    collection do
      get 'next'
    end
  end

end
