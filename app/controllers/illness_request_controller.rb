class IllnessRequestController < ApplicationController
  def new
    @symptoms = Symptom.all
    @illness_request = IllnessRequest.new
  end

  def create

  end
end
