class SpecializationsController < ApplicationController
  def index
    @specializations = Specialization.all
  end
end
