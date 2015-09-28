class PaginaPrincipalTaxistaController < ApplicationController
   before_action :authenticate_driver!
  def index
     @driver=current_driver
  end
end
