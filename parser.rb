require 'csv'
require 'terminal-table'

courses = CSV.read(ARGV[0])
prerequisites = CSV.read(ARGV[1])

# Remove the header (first element) of each array
courses.shift
prerequisites.shift

# array which courses will be pushed in order
order_courses = []

# Find courses that has no prerequisites
def remove_no_prerequisites(courses, order, pre)
    courses.each do |course|
        found = pre.find{|prereq| prereq[0] == course[0]}
        if !found 
            order << course 
            courses.delete(course)
        end
    end
end

# Remove completed courses from prerequiesites
def remove_completed_courses(array2, array3)
    array2.each do |object|
        array3.each do |prereq|
            array3.delete(prereq) if prereq[1] === object[0]
        end
    end
end

# Loop through peforming 2 functions until no more courses can be completed
loop do 
    # Counter to determine when to break the loop
    initial_counter = prerequisites.length

    remove_no_prerequisites(courses, order_courses, prerequisites)
    remove_completed_courses(order_courses, prerequisites)

    final_counter = prerequisites.length
    # Break when prerequisites.length hasn't changed in the loop iteration
    break if initial_counter == final_counter
end

# Outputing table
rows = []
order_courses.each_with_index do |course, index|
    rows << [index + 1, course[0], course[1]]
end
if courses.length > 0
    courses.each do |course|
        rows << ['N/A', course[0], course[1]]
    end
end 
table = Terminal::Table.new do |t|
    t.rows = rows
    t.style = {:padding_left => 3, :padding_right => 3, :border_x => "=", :border_i => "x"}
    t.title = 'Order of Courses'
    t.headings = ['Order', 'Course#', 'Course Name']
end
puts table






