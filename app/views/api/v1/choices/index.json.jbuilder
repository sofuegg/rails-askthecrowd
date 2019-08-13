
  json.array! @choices do |choice|
    json.choice_info choice, :id, :photo, :text
  end

