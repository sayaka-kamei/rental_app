class RentsController < ApplicationController

  def index
    @rents = Rent.all
  end

  def show
    @rent = Rent.new
  end

  def new
    @rent = Rent.new
  end

  def create
    Rent.create(rent_params)
    redirect_to new_blog_path
  end
  
  private

  def rent_params
    params.require(:rent).permit(:name, :price, :address, :age, :remarks,
                                  :route1, :station1, :time1, :route2, :station2, :time2)
end
