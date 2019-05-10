fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def longest_sluggish(fishes)
  longest = nil
  fishes.each_with_index do |fish1, i|
    fishes.each_with_index do |fish2, j|
      next if j <= i
      if fish2.length > fish1.length
        longest = fish2
      else
        longest = fish1
      end
  end
  longest
end

# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Accessing this on GitHub? Use this link. Remember that Big O is classified by the dominant term.
def longest_dominant(fishes)
  sorted_fishes = quicksort(fishes)
  sorted_fishes.last
end

def quicksort(fishes)
  return fishes if fishes.size < 2
  pivot = fishes.first
  left = fishes[1..-1].select { |fish| fish.length <= pivot.length }
  right = fishes[1..-1].select { |fish| fish.length > pivot.length }

  sorted_left = quicksort (left)
  sorted_right = quicksort(right)
  sorted = sorted_left + [pivot] + sorted_right
  sorted  
end

# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def longest_clever(fishes)

end