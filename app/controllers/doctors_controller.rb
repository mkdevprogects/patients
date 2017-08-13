class DoctorsController < BaseController
  def index
    @search = Doctor.ransack(params[:q])
    @doctors = @search.result.includes(:specializations, :grades, :clinics)
                   .decorate
  end

  def show
    @doctor = Doctor.find(params[:id]).decorate
  end
end
