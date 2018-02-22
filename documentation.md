## Coding Challenge

#### Solved in Ruby in the end.

### Solution to Probelm (My Plan and though process) 

1. Find Library/Method to import data from csv file into java file. 
2. Parse through Course pre-requisites
    - Make Array of Course Numbers
    - Make an array of course preqreuisites 

_Courses_ = a copy of the courses csv file [[1, 'Programming in C']..[12, 'Data Structures']]
_CoursesOrder Array_ = [] 
_Prerequisites Array_ = a copy of the prerequisites csv file [[2,1],..[11,10]]

1. Complete all courses that don't have prerequities. 
    - compare _Courses_  with _Prerequisites Array_. Since _Prerequisites Array_ doesnt have 1, 10, 12, we take this out of _Courses_ and push them into a new array (_CoursesOrder Array_ ).
    
2. Run a loop and break if no more courses are removed from the _Courses_ array in an iteration (can compare length at the start and end of iteration)
    - Find and remove course/prerequisite pairings in _Prerequisites Array_ where courses in _CoursesOrder Array_ matches the prerequisite course id. 
    - Complete step 1

3. Print Courses Order Array.

4. Implement scripting.

### Finished product

ruby parser.rb "[courses file]" "[prereqs file]"

- Run following script to run application:

ruby parser.rb "courses.csv" "prerequisites.csv"

### Final remarks

Challenge wasn't able to be completed in JAVA in the timeframe as it was the first time using Java.

