require "csv"

CSV.foreach('db/fixtures/02chocolate.csv', headers: true) do |row|
  Chocolate.create(
    name: row['name']
    detail: row['detail']
    image: row['image']
  )
end

CSV.foreach('db/fixtures/03review.csv', headers: true) do |row|
  Review.create(
    chocolate_id: row['chocolate_id']
    sweet: row['sweet']
    cacao: row['cacao']
    appearance: row['appearance']
    texture: row['texture']
    melt: row['melt']
  )
end
