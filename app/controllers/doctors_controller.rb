class DoctorsController < BaseController
  def index
    @doctors = Doctor.all.decorate
  end

  def show
    @doctor = Doctor.find(params[:id]).decorate
  end
end
