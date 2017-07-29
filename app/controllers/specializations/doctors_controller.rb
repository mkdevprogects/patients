class DoctorsController < BaseController
  def index
    specialization = Specialization.find(params[:id])
    @doctors = specialization.doctors
    raise "test"
  end
end