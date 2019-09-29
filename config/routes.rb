Blogger::Application.routes.draw do
  delete '/articles/:id(.:format)' => 'articles#destroy'
  
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
end