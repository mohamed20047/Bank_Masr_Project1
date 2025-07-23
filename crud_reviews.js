db = db.getSiblingDB('trials123');

print("All Reviews:");
db.reviews.find();

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
db.reviews.updateOne({ reviewer: "Laila" }, { $set: { rating: 5 } });
print("Rating updated.");

print("Deleting a review");
	
print("Deleted review.");

print("Final reviews:");
db.reviews.find();
