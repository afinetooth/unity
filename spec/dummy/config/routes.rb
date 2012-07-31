Dummy::Application.routes.draw do
  root :to => "home#index"
  
  match 'home' => "home#index"
end
