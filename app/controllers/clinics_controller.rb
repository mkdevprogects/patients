class ClinicsController < BaseController
  before_action :set_clinic, only: [:show]

  def index
    @clinics = Clinic.all
  end

  def show
  end

  private

  def set_clinic
    @clinic = Clinic.find(params[:id])
  end
end
