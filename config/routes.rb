Rails.application.routes.draw do
  
  offline = Rack::Offline.configure :cache_interval => 120 do
    #cache "images/masthead.png"
    cache ActionController::Base.helpers.asset_path("application.js")
    cache ActionController::Base.helpers.asset_path("jquery.offline.js")
    cache ActionController::Base.helpers.asset_path("jquery.tmpl.min.js")
    cache ActionController::Base.helpers.asset_path("json.js")
#     cache ActionController::Base.helpers.asset_path("jquery.js")
#     cache ActionController::Base.helpers.asset_path("jquery_ujs.js")
#     cache ActionController::Base.helpers.asset_path("jquery.turbolinks.js")
#     cache ActionController::Base.helpers.asset_path("foundation.js")
#     cache ActionController::Base.helpers.asset_path("jquery-ui/datepicker.js")
#     cache ActionController::Base.helpers.asset_path("chosen-jquery.js")
#     cache ActionController::Base.helpers.asset_path("best_in_place.js")
    cache ActionController::Base.helpers.asset_path("application.css") 
    cache ActionController::Base.helpers.asset_path("flaticons/flaticon.eot") 
    cache ActionController::Base.helpers.asset_path("flaticons/flaticon.woff")
    cache ActionController::Base.helpers.asset_path("flaticons/flaticon.ttf") 
    cache ActionController::Base.helpers.asset_path("flaticons/flaticon.svg") 
    network "/"
  end
  get "/application.manifest" => offline

#   get "/application.manifest" => Rails::Offline

  resources :roles

  devise_for :users
  root 'welcome#home'
#   root 'welcome#index'
  get 'welcome', to: 'welcome#index'
  get 'settings', to: 'settings#index'
  
  resources :employees

  resources :guardians

  resources :students
  
  resources :users
  
  resources :exam_categories
  
  resources :periods
  
  resources :groups do
    resources :attendances
    resources :attendance_registers
  end

  resources :courses do 
    resources :curriculums
    resources :chapters
    resources :lessons
    resources :exam_categories
    resources :exams do 
        resources :grades
    end
  end
  
  resources :course_categories

  
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
