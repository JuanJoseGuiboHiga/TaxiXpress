class PaymentType < ActiveRecord::Base
     has_many :services
end
