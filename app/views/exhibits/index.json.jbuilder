json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :id, :name, :description, :insurance_cost, :age_of_creation, :collection_id, :height, :width, :length, :temp_control, :humidity_control, :people_security
  json.url exhibit_url(exhibit, format: :json)
end
