Rails.application.routes.draw do



  devise_for :drivers , controllers: { sessions: "drivers/sessions",registrations: "drivers/registrations" }
  
  devise_for :clients , controllers: { sessions: "clients/sessions", registrations: "clients/registrations"} 
  
 devise_for :administrators , controllers: { sessions: "administrators/sessions", registrations: "administrators/registrations"} 
  resources :clients do 
  resources :services 
  end
  
  resources :drivers do
  resources :services 
  end
  
  resources :payment_types do
  resources :services 
  end
    resources :valuations do
  resources :services 
  end
  
  resources :routes do
  resources :services 
  end
  
  resources :administrators
  
  get 'pagina_principal_administrador/index'

  get 'inicio', controller: :static , action: :inicio , alias:'inicio'
  get 'servicio', controller: :static , action: :servicio , alias:'servicio'
  get 'sobre', controller: :static , action: :sobre , alias:'sobre'
  get 'testimonios', controller: :static , action: :testimonios , alias:'testimonios'
  get 'contacto', controller: :static , action: :contacto , alias:'contacto'


  get 'notificacion_contacto_usuario/index'


  get 'pagina_principal_taxista/index'

  get 'login_taxista/index'


  get 'paginaprincipal_usuario/index'


  get 'homepage_admin/index'

  #resources :users
  #get 'home/index'
  root 'static#inicio'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
