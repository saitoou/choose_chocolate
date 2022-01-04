require "csv"

CSV.foreach('db/fixtures/03reviews.csv', headers: true) do |row|
  Review.create(
    id: row['id'],
    chocolate_id: row['chocolate_id'],
    sweet: row['sweet'],
    cacao: row['cacao'],
    appearance: row['appearance'],
    texture: row['texture'],
    melt: row['melt']
  )
end
