class CarsController < ApplicationController

    def index
        @cars = Car.all
    end  

    before_action :authenticate_user!, only: [:new, :create]

    def new
      @car = Car.new
    end
      
    def create
          car = Car.new(car_params)
          car.user_id = current_user.id
          if car.save!
            redirect_to :action => "index"
          else
            redirect_to :action => "new"
          end
    end

    def show
      @car = Car.find(params[:id])
    end

    def destroy
      car = Car.find(params[:id])
      car.destroy
      redirect_to action: :index
    end

    def show
      @car = Car.find(params[:id])
    end

    def edit
      @car = Car.find(params[:id])
    end

    def update
      car = Car.find(params[:id])
      if car.update(car_params)
        redirect_to :action => "show", :id => car.id
      else
        redirect_to :action => "new"
      end
    end

    def hajimari
      @cars = Car.all
    end

    def basic
      @cars = Car.all
    end
  
    def middle
      @cars = Car.all
    end
  
    def premium
      @cars = Car.all
    end

        private
        def car_params
        params.require(:car).permit(:name, :grade, :capacity, :image, :category, :body, :hoshihyouka, :comfort, :ease_of_drive)
        end

end