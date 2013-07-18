FeedbackOverflow::Application.routes.draw do

  root to: 'topics#index'
  resource :topics, except: [:show]
  get '/topic/:stub' => 'topics#show', :as => 'topic'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#delete'

  resources :comments  

end
