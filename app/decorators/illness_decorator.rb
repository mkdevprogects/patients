class IllnessDecorator < Draper::Decorator
  include HasHumanDate

  delegate_all

  def human_created_at
    human_date_on(:created_at)
  end

  def visits
    VisitDecorator.decorate_collection(object.visits)
  end

  def symptoms
    SymptomDecorator.decorate_collection(object.symptoms)
  end

  def prescriptions
    PrescriptionDecorator.decorate_collection(object.prescriptions)
  end

  def doctors_surname_name
    "#{object.doctor.surname} #{object.doctor.name}"
  end

  def first_disease_title
    diseases.first.title
  end
end
