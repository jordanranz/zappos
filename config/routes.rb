Zappos::Application.routes.draw do
  resources :product
  root 'static#home'
  
  match '/product', to: 'product#index', via: 'get'
end

