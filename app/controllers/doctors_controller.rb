class DoctorsController < BaseController
  def index
    @doctors = Doctor.all
  end
end
