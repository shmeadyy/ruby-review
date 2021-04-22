require 'octokit'

# Provide authentication credentials
client = Octokit::Client.new(:access_token => 'personal_access_token')

# Fetch the current user
user = client.user 'shmeadyy'
puts user.name


puts "Hello, World!"
