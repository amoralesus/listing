Listing::Application.routes.draw do
   root 'girls#index'

   resources :girls, :only => [:index]
end
