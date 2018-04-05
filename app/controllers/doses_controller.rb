class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update, :destroy]


  def index
    @doses = Dose.all
  end


  def show
  end


  def new
    @dose = Dose.new
  end


  def edit
  end


  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to doses_path
    else
     @dose.new
   end
 end

 def update
  if @dose.update(dose_params)
    redirect_to dose_path
  else
    @dose.new
  end
end

def destroy
  @dose.destroy
end

private
def set_dose
  @dose = Dose.find(params[:id])
end

def dose_params
  params.require(:dose).permit(:description)
end
end
