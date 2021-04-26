require 'octokit'

# Instantiate a new Octokit client
# Assumes `GITHUB_TOKEN` is already an accessible environment variable
client = Octokit::Client.new(:access_token => ENV["GITHUB_TOKEN"])

# Fetch authenticated user's repositories
# https://octokit.github.io/octokit.rb/Octokit/Client/Repositories.html#repositories-instance_method
# https://docs.github.com/en/rest/reference/repos#list-repositories-for-the-authenticated-user
repos = client.repos

# Output the value of each repository's name with owner
repos.each { |repo | puts repo.full_name }