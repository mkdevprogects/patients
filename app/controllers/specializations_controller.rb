class SpecializationsController < BaseController
  def index
    @specializations = Specialization.all
  end
end
