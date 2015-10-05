class Service < ActiveRecord::Base
  belongs_to :route
  belongs_to :payment_type
  belongs_to :client
  belongs_to :driver
  belongs_to :valuation
   after_initialize :init
   def init
     self.valuation||=build_valuation
   end

  def self.to_csv
    CSV.generate do |csv|
      csv << ["Ruta", "Origen", "Destino", "Precio","Observacion","Conductor","Fecha","Evaluaciones"] ## Header values of CSV
      all.each do |service|
        csv << [service.route.description, service.route.origin,service.route.end, service.route.price,service.observation,service.driver.name_driver,service.created_at.to_date,service.valuation.description_valuation] ##Row values of CSV
      end
    end
  end
end
