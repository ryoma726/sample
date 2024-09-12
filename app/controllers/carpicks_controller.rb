class CarpicksController < ApplicationController
    def index
    end

    def note
    end

    def new
        @carpick = Carpick.new
    end

    def show
        @carpick = Carpick.find_by(id: params[:id])
    end


    def create
        carpick = Carpick.new(carpick_params)
        if carpick.save
            flash[:notice] = "診断が完了しました"
            redirect_to carpick_path(carpick.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def carpick_params
        params.require(:carpick).permit(:question1, :question2, :question3)
    end
end