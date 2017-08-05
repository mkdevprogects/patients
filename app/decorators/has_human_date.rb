module HasHumanDate
  def created_at
    object.created_at.strftime("%d - %m - %Y")
  end
end