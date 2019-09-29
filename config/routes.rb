Blogger::Application.routes.draw do
  delete '/articles/:id(.:format)' => 'articles#destroy'
  delete '/tags/:id(.:format)' => 'tags#destroy'
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
end