# The class is needed to change the patient's data
# before the patient is stored in the database
class PatientBuilder
  def initialize(resource)
    @patient = resource
  end

  # The method starts a coordinate search and stores coordinates in the database
  # return patient
  def geocode
    coordinates
    @patient if @patient.save
  end

  # add coordinates to patient
  def coordinates
    @patient.latitude, @patient.longitude = Location.new.coordinates(@patient.address)
  end
end