class VehiclesController < InheritedResources::Base

  def index
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = current_user.vehicles.new(vehicle_params)
    if @vehicle.save 
      redirect_to my_vehicles_vehicles_path
    else
      render "new"
    end
  end

  def Show
    @vehicle = Vehicle.find(params[:id])
  end
   
  def my_vehicles
    #debugger
    @vehicles = Vehicle.where(owner_id: current_user.id)
    # render 'index'
  end
  def destroy
    @vehicle = Vehicle.find(params[:id])
    # debugger
    @vehicle.destroy
    redirect_to  my_vehicles_vehicles_path

  end

  def confirm_order
    @vehicle = Vehicle.find(params[:id])
  end
  private

    def vehicle_params
      params.require(:vehicle).permit(:model, :color, :fuel_type, :price, :image)
    end


end
