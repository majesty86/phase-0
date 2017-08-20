# DAYQUEST

# A daily planner that organizes everything, and makes it into a quest!
# Quests are rated by a combination of difficulty and length.

require 'sqlite3'

# First, a database:
db = SQLite3::Database.new("quest.db")

# Creating all tables here.  According to the brainstorm file, I need tables for:
  # Travel
  # Daily schedule
  # Tasks

create_table_travel = <<-SQL
  CREATE TABLE IF NOT EXISTS travel(
    transport_method VARCHAR(255),
    total_time TIME,
    consistent BOOLEAN,
    departure TIME
  )
SQL

db.execute(create_table_travel)

def add_to_travel(method, est_travel_time, consistent?, departure_time)
  db.execute("INSERT INTO travel (method, est_travel_time, consistent?, departure_time) VALUES (?, ?, ?, ?)", [transport_method, total_time, consistent, departure])
end


travel = db.execute("SELECT * FROM travel")
travel