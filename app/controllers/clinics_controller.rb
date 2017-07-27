class ClinicsController < ApplicationController
  before_action :authenticate_patient!
  def index
  end
end
