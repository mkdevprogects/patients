class DoctorDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end


  def specializations_title
    object.specializations.map {|s| s.title}.join(', ')
  end

  def get_grade
    if object.grades.nil?
      ' Врач'
    else
      object.grades.first.title
    end
  end

  def get_grades
    if object.grades.nil?
      ' Врач'
    else
      object.grades.map {|s| s.title}.join(', ')
    end
  end

  def get_clinics
    object.clinics.map {|c| c.title}.join(', ')
  end
end
