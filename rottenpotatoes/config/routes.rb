Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get '/movies/:id/find_similar', to: 'movies#similar_results', as: 'find_similar_router'
end
