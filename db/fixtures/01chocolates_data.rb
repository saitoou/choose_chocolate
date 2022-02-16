# frozen_string_literal: true

require 'csv'

CSV.foreach('db/fixtures/02chocolates.csv', headers: true) do |row|
  Chocolate.create(
    id: row['id'],
    name: row['name'],
    detail: row['detail'],
    image: row['image']
  )
end
