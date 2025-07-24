db = db.getSiblingDB('bookbazaar_reviews');

print("All Reviews:");
db.reviews.find().forEach(printjson)


print("Inserting a new review");
db.reviews.insertOne({
  book_id: 8,
  reviewer: "Leena",
  rating: 4,
  comment: "Very informative!",
  created_at: new Date()
});
print("Review inserted.");

print("Updateing a reviewer's rating");
db.reviews.updateOne({ reviewer: "Laila" }, { $set: { rating: 3 } });
print("Rating updated.");

print("Deleting a review");
db.reviews.deleteOne({ reviewer: "Sara" });
	
print("Deleted review.");

print("Final reviews:");
db.reviews.find().forEach(printjson)

