class String
  def string_shuffle
    self.split('').shuffle.join
  end
end

person1 = {first: "patsy", last: "price"}
person2 = {first: "steve", last: "coward"}
person3 = {first: "david", last: "price"}

params = {father: person3, mother: person1, child: person2 }

# Returns a new hash containing the contents of other_hash and the contents of hsh.
# If no block is specified, the value for entries with duplicate keys will be that of other_hash.
# Otherwise the value for each duplicate key is determined by calling the block with the key,
# its value in hsh and its value in other_hash.

h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
h1.merge(h2){|key, oldval, newval| newval - oldval}
               #=> {"a"=>100, "b"=>54,  "c"=>300}