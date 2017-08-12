class DoctorsController < BaseController
  def index
    @search = Doctor.ransack(params[:q])
    @doctors = @search.result.includes(:specializations)
                   .decorate
  end

  def show
    @doctor = Doctor.find(params[:id]).decorate
  end
end
