json.extract! lead, :id, :address, :price, :number_of_bedrooms, :number_of_bathrooms, :square_feet, :created_at, :updated_at
json.url lead_url(lead, format: :json)
