class SymptomDecorator < Draper::Decorator
  decorates_finders
  delegate_all

  def created_at
    created_at.strftime("%d - %m - %Y")
  end
end
