class IllnessDecorator < Draper::Decorator
  delegate_all

  def visits
    VisitDecorator.decorate_collection(object.visits)
  end

  def symptoms
    SymptomDecorator.decorate_collection(object.symptoms)
  end

  def prescriptions
    PrescriptionDecorator.decorate_collection(object.prescriptions)
  end
end
