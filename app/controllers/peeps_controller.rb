class PeepsController < ApplicationController
  def index
    @peeps = Peep.all
  end

  def show
    @peep = Peep.find(params[:id])
  end

  def new 
    @peep = Peep.new
  end

  def create
    @peep = Peep.new(peep_params)

    if @peep.save
      redirect_to @peep
    else
      render :new
    end
  end

  private 

   def peep_params
      params.require(:peep).permit(:body)
    end

end
