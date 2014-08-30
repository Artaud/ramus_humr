json.array!(@prihlaskas) do |prihlaska|
  json.extract! prihlaska, :id, :jmeno_prijmeni, :kontakt, :role_ucastnika_id, :vzkaz, :akce_id
  json.url prihlaska_url(prihlaska, format: :json)
end
