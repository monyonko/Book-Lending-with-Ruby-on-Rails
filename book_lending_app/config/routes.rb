Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  resource :registrations 
  resource :reviews
  resource :verifications
  resource :sessions
  resource :books
  resource :admins
  resource :authors
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "books" => "books#all_books"
  get "create_book" => "books#new_book"
  get "update_details" => "books#update_details"
  get "individual_book" => "books#book"
  get "all_books" => "books#catalogue"
  get "new_review" => "review#new"
  get "my_review" => "review#book_review"
  get "all_views" => "review#all_reviews"

  get "create_author" => "author#new"
  get "suspend_author" => "author#suspend"

  get "book_details" => "record#whereisthebook"
  get "new_record" => "record#add_record"

  get "create_user" => "registration#new"
  get "login" => "sessions#new"
  get "verifications" => "verifications#index"
  get "count" => "verification#show_unverified_count"
  
  post "borrow" => "books#borrow"
  post "return" => "books#return"
  post "reborrow" => "books#reborrow"
  post "update" => "author#create"
  post "modify" => "author#modify"
  post "save_record" => "record#save_record"
  post "modify_record" => "record#update"
  post "post_review" => "review#post_book_review"
  post "create" => "verification#create"
  post "suspend" => "verification#suspend"


  delete "remove" => "author#delete"


  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "home#index"
end
