class ClinicsController < BaseController
  def index
  end

  def show
    @clinic = Clinic.find(params[:id])
  end
end
