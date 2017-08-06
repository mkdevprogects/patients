module Specializations
  class DoctorsController < BaseController
    def index
      specialization = Specialization.find(params[:specialization_id])
      doctors = specialization.doctors
      @doctors = DoctorDecorator.decorate_collection(doctors)
      render 'specializations/doctors/index'
    end
  end
end
