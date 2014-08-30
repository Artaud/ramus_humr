json.array!(@akces) do |akce|
  json.extract! akce, :id, :termin, :popis, :cena, :misto_srazu
  json.url akce_url(akce, format: :json)
end
