class HeroinesController < ApplicationController
before_action :find_heroine, only: [:show, :edit, :destroy]


  def index
    @heroines = Heroine.all
  end

  def show
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
       redirect_to heroine_path(@heroine)

     else
       @errors = @heroine.errors.full_messages
       render :new
     end
   end


  private

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
