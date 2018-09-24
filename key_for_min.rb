# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
key_for_min_value({:blake => 500, :ashley => 2, :adam => 1})

def key_for_min_value(hash)
  min_key = nil
   hash.each do |key, value|
     if min_key.nil?
       min_key = key
     elsif value < hash[min_key]
       min_key = key
     else
       next
     end
   end
   min_key
end
