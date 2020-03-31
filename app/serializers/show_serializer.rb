class ShowSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :genre, :summary
end
