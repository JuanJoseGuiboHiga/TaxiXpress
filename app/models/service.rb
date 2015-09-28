class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :driver
  belongs_to :valuation
  
  validates :address_origin, presence: true
  validates :address_end, presence: true
   validates :driver, presence: true
end
