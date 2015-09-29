class Service < ActiveRecord::Base
  belongs_to :route
  belongs_to :payment_type
  belongs_to :client
  belongs_to :driver
  belongs_to :valuation
end
