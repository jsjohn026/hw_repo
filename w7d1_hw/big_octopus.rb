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