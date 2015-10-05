class AdministratorsController < InheritedResources::Base

  private

    def administrator_params
      params.require(:administrator).permit(:name)
    end
end

