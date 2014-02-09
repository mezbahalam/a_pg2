json.array!(@offenders) do |offender|
  json.extract! offender, :id, :name, :age
  json.url offender_url(offender, format: :json)
end
