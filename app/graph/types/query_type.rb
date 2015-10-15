QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :airport, AirportType, field: FetchField.new(type: AirportType, model: Airport)
  field :city, CityType, field: FetchField.new(type: CityType, model: City)
  field :city, PortType, field: FetchField.new(type: PortType, model: Port)
end
