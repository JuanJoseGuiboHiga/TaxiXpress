class PaginaPrincipalAdministradorController < ApplicationController
   before_action :authenticate_administrator!
  def index
    @administrator=current_administrator
  end
end
