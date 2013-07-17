FeedbackOverflow::Application.routes.draw do

  root to: 'topics#index'
  resource :topics, except: [:show]

  get '/topic/:stub' => 'topics#show', :as => 'topic'
end
