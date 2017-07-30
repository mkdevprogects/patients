module Specializations
  class DoctorDecorator < Draper::Decorator
    delegate_all

    def specializations_title
      object.specializations.map {|s| s.title}.join(', ')
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
        object.grades.map {|s| s.title}.join(', ')
      end
    end

    def clinics
      object.clinics.map {|c| c.title}.join(', ')
    end
  end
end