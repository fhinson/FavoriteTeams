namespace :teams do
  task :create => :environment do
    Team.delete_all
    puts "Deleted all teams..."
    teams = [
      {
        name:    "Miami Heat",
        division: "NBA",
        rating:  4,
      },
      {
        name:    "Denver Broncos",
        division: "NFL",
        rating:  3,
      },
      {
        name:    "New York Rangers",
        division: "NHL",
        rating:  4,
      },
      {
        name:    "San Francisco Giants",
        division: "MLB",
        rating:  5,
      },
      {
        name:    "Cleveland Cavaliers",
        division: "NBA",
        rating:  5,
      },
    ]

    teams.each do |team|
      Team.create!(
        name:     team[:name],
        division: team[:division],
        rating:   team[:rating],
      )
      puts "Created " + team[:name] + " Favorite Team"
    end
  end
end
