Listing::Application.routes.draw do
   root 'girls#index'

   resources :girls, :only => [:index] do
     member do
       get 'avatar'
     end
   end
end
