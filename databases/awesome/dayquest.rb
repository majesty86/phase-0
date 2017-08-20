# DAYQUEST

# A daily planner that organizes everything, and makes it into a quest!
# Quests are rated by a combination of difficulty and length.

require 'sqlite3'
require 'ap'

# First, a database:
db = SQLite3::Database.new("quest.db")

# Creating all tables here.  According to the brainstorm file, I need tables for:
  # Travel
  # Daily schedule
  # Tasks

create_table_travel = <<-SQL
  CREATE TABLE IF NOT EXISTS travel(
    id INTEGER PRIMARY KEY,
    transport_method VARCHAR(255),
    total_time TIME,
    consistent BOOLEAN,
    departure TIME
  )
SQL

create_table_tasks = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    task_id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    difficulty INT
  )
SQL

create_table_schedule = <<-SQL
  CREATE TABLE IF NOT EXISTS schedule(
    schedule_id INTEGER PRIMARY KEY,
    hour TIME,
    task_id INT,
    FOREIGN KEY(task_id) REFERENCES tasks(task_id)
  )
SQL

db.execute(create_table_travel)
db.execute(create_table_tasks)
db.execute(create_table_schedule)

def add_to_travel(db, transport, est_time, is_consistent, departure_time)
  db.execute("INSERT INTO travel (transport_method, total_time, consistent, departure) VALUES (?, ?, ?, ?)", [transport, est_time, is_consistent, departure_time])
end

def add_to_tasks(db, task_str, difficulty_int)
  db.execute("INSERT INTO tasks (task, difficulty) VALUES (?, ?)", [task_str, difficulty_int])
end

def add_to_schedule(db, time_range)
  db.execute("INSERT INTO schedule (hour) VALUES (?)", [time_range])
end

def print_table(db, table_str)
  table_str = db.execute("SELECT * FROM #{table_str}")
  ap table_str
end

# add_to_travel(db, 'car', '45 min', 'false', '07:00')

until task = "done"
  puts "What task did you want to complete today? Type 'done' when finished entering tasks."
  unless task = "done"
    task = gets.chomp
  end
  puts "Schedule a time for this task."
  time = gets.chomp
  puts "On a scale of 1 to 5, rate the difficulty of this task, 5 being the most difficult."
  difficulty = gets.chomp

  add_to_tasks(db, task, difficulty)
  add_to_schedule(db, time)
end

task_list = db.execute("SELECT schedule.hour, tasks.task, tasks.difficulty FROM schedule JOIN tasks ON schedule.task_id = tasks.task_id")
ap task_list
