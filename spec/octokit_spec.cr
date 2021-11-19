require "./spec_helper"

describe Octokit do
  # it "sets defaults" do
  #   pp Halite.get("https://coveralls.io")
  # end

  client = Octokit.client

  it "gets the commits of a given repo" do
    commits = client.commits("placeos/staff-api")
    commits.fetch_all.should_not be_empty
  end

  it "gets the branches of a given repo" do
    branches = client.branches("placeos/staff-api")
    branches.fetch_all.should_not be_empty
    # puts branches.first.name
    # puts branches.last.name
    # puts branches.range(0, 4)
  end

  it "gets the tags of a given repo" do
    tags = client.tags("placeos/staff-api")
    tags.fetch_all.should_not be_empty
  end

  it "gets the a repo" do
    repo = client.repository("placeos/staff-api")
    repo.not_nil!
  end

  it "checks a repo exsists" do
    client.repository?("placeos/staff-api").should be_true
  end
end
