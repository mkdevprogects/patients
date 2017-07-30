class ClinicsController < BaseController
  before_action :set_clinic, :set_specializations_title, only: [:show]

  def index
    @clinics = Clinic.all
  end

  def show
  end

  private

  def set_clinic
    @clinic = Clinic.find(params[:id])
  end

  def set_specializations_title
    @specializations_title = []
    @clinic.doctors.each  do |doctor|
      doctor.specializations.each do |s|
        @specializations_title << s.title if @specializations_title.include?(s.title) == false
      end
    end
  end
end
