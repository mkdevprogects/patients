class DoctorsController < ApplicationController
  before_action :authenticate_patient!
  def index
    @doctors = Doctor.all
  end
end
