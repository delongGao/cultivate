# Hash Table

Self implementation of hash table. 

First trial is using array and linked list

Some basic feature specs of hash table:

+ Supported operations: 
  
  1. Insert: first use key to get the internal index, and then use a specific way to insert value at the index
  2. Look up: aims to be constant
  3. Delete

+ Hash function: 
  1. literally hash function: use the internal ruby hash(termparal implementation)
  2. `index = hash % n(bucket size)`

+ Assume collision happens, and when it happens, use a linked list to store all the values at the same index

+ Should have a method to get total store entries

+ Should have a method to get total bucket size

+ Should have a method to get the current load factor: `load_factor = num_of_entries / num_of_buckets`
  1. Should have a threashold of load factor(max, min)
  2. When it is exceeded, puts out warning for now: TEMPORARY, ideally should be some dynamically resizing mechanism

+ First iteration limitations:
  1. cannot take any arguments
  2. will always be initialized with empty key/value