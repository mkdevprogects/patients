class ClinicsController < BaseController
  def index
    @clinics = Clinic.all
  end

  def show
    @clinic = Clinic.find(params[:id])
    @specializations = []
    @clinic.doctors.each  do |doctor|
        doctor.specializations.each do |s|
          @specializations << s.title if @specializations.include?(s.title) == false
        end
    end
  end
end
