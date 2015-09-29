class PaymentTypesController < InheritedResources::Base

  private

    def payment_type_params
      params.require(:payment_type).permit(:description)
    end
end

