class SymptomDecorator < Draper::Decorator
  include HasHumanDate

  delegate_all

  def human_first_occurence_date
    human_date_on(:first_occurence_date)
  end
end
