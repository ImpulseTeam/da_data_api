# da_data_api
API to dadata service

## Configuring
rails generate initializer dadata

## Usage
results = $dadata.find(place, from_bound: :region, to_bound: :settlement)  
location = results.first