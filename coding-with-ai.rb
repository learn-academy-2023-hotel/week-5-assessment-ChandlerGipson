# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# make an array of taco types
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# Go through each vote.
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # Convert the vote to lowercase.
  # If the same type of taco has been voted for before, add 1 to its total.
  result[vote.downcase] += 1
  result
end

# After going through all the votes, we have a tally of how many votes each 
p totals



