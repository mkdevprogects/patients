class DoctorDecorator < Draper::Decorator
  delegate_all

  def specializations_title
    titles_list(object.specializations)
  end

  def grade
    if object.grades.nil?
      ' Врач'
    else
      object.grades.first.title
    end
  end
  
  def grades
    if object.grades.nil?
    ' Врач'
    else
      titles_list(object.grades)
    end
  end

  def clinics
    titles_list(object.clinics)
  end


  private

  def titles_list(relations)
    relations.map(&:title).join(', ')
  end
end
