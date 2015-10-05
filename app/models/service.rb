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
 def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |service|
      csv << service.attributes.values_at(*column_names)
    end
  end
end
end
