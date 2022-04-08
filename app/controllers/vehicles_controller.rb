class VehiclesController < InheritedResources::Base

  def create
    debugger
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save  
      redirect_to @vehicle
    else
      render "new"
    end
  end

  private

    def vehicle_params
      params.require(:vehicle).permit(:model, :color, :fuel_type, :price)
    end


end
