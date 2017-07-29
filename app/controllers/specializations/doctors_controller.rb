module Specializations
  class DoctorsController < BaseController
    def index
      specialization = Specialization.find(params[:specialization_id])
      @doctors = specialization.doctors
      render 'doctors/index'
    end
  end
end
