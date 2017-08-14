class IllnessRequestController < ApplicationController
  def new
    @symptoms = Symptom.all
    @illness = Illness.new
  end

  def create

  end
end
