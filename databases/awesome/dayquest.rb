# DAYQUEST

# A daily planner that organizes everything, and makes it into a quest!
# Quests are rated by a combination of difficulty and length.

require 'sqlite3'
require 'ap'

# First, a database:
db = SQLite3::Database.new("quest.db")

# Creating all tables here.  According to the brainstorm file, I need tables for:
  # Daily schedule
  # Tasks

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


db.execute(create_table_tasks)
db.execute(create_table_schedule)

def add_to_tasks(db, task_str, difficulty_int)
  db.execute("INSERT INTO tasks (task, difficulty) VALUES (?, ?)", [task_str, difficulty_int])
end

def add_to_schedule(db, time_range, taskid)
  db.execute("INSERT INTO schedule (hour, task_id) VALUES (?, ?)", [time_range, taskid])
end

def print_table(db, table_str)
  table_str = db.execute("SELECT * FROM #{table_str}")
  ap table_str
end

puts "#{db.execute("SELECT schedule_id FROM schedule WHERE schedule_id = (SELECT max(schedule_id) FROM schedule)")} task(s) entered so far today."

task = ""
loop do 
  puts "Type 'q' at any time to quit and view current task list."
  puts "Enter task number."
    task_number = gets.chomp.to_i
      break if task_number == 0
      puts
  puts "What task did you want to complete today?"
    task = gets.chomp
      break if task == "q"
      puts
  puts "Schedule a start and end time for this task."
    time = gets.chomp
      break if time == "q"
      puts
  puts "On a scale of 1 to 5, rate the difficulty of this task, 5 being the most difficult."
    difficulty = gets.chomp
      break if difficulty == "q"
      puts

  add_to_tasks(db, task, difficulty)
  add_to_schedule(db, time, task_number)

  puts "#{db.execute("SELECT schedule_id FROM schedule WHERE schedule_id = (SELECT max(schedule_id) FROM schedule)")} task(s) entered so far today.  Type 'q' at any time to quit."
end

task_list = db.execute("SELECT schedule.hour, tasks.task FROM schedule JOIN tasks ON schedule.task_id = tasks.task_id")
ap task_list

