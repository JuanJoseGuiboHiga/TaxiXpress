class RoutesController < InheritedResources::Base

  private

    def route_params
      params.require(:route).permit(:description, :origin, :end, :price)
    end
end

