Lynchsda::Application.routes.draw do

  # Admin
  match '/admin', to: 'posts#admin', as: 'admin'
  get 'logout' => 'sessions#destroy', as: 'logout'

  match '/auth/faculty/callback',to: 'sessions#google_auth', as: 'google_auth'

  get '/posts(.:format)', to: 'posts#index'
  get '/posts.rss', to: 'posts#index', as: 'rss'

  resources :users
  resources :sessions
  resources :posts, path: '/'

  get '/:slug', to: 'posts#show', as: 'post'

  root to: 'posts#index'

end