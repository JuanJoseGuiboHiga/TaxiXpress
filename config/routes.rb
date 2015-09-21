Rails.application.routes.draw do


  get 'consultar_servicio_usuario/index'

  get 'reporte_taxis_usuario/index'

  get 'servicio_ruta_usuario/index'

  get 'notificacion_contacto_usuario/index'

  get 'testimonio_taxista/index'

  get 'sobretaxi_2_taxista/index'

  get 'sobretaxi_1_taxista/index'

  get 'servicios_2_taxista/index'

  get 'servicios_1_taxista/index'

  get 'servicio_usuario2/index'



  devise_for :client

  get 'reportes_servicios_taxista/index'

  get 'taxis_asignados_taxista/index'

  get 'notificacion_aceptar_taxista/index'

  get 'notificacion_descarga_taxista/index'

  get 'solicitudes_taxista/index'

  get 'promedio_valoracion_taxista/index'

  get 'contacto_taxista/index'

  get 'pagina_principal_taxista/index'

  get 'login_taxista/index'

  get 'notificacion_registro/index'

  get 'precio/index'

  get 'ranking_taxista/index'

  get 'seleccionar_taxista/index'

  get 'paginaprincipal_usuario/index'

  get 'contacto/index'

  get 'testimonios/index'

  get 'sobre/index'

  get 'servicio/index'

  #resources :users
  #get 'home/index'
  root 'home#index'
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
