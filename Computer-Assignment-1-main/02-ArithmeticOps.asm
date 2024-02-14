.data # data section
num1: .word 600  # First number (will be changed by the auto-grader)
num2: .word 45  # Second number (will be changed by the auto-grader)

Addition:           .asciiz "Addition Result is: " 
Multiplication:     .asciiz "Multiplication Result is: "
Division:           .asciiz "Division Result is: "
Subtraction:        .asciiz "Subtraction Result is: "

.text # code section

################## Don't change the upper part ##################

## Your instructions go here ##

# Addition
# $t0 = num1 + num2

# Multiplication
# $t1 = num1 * num2

# Subtraction
# $t2 = num1 - num2

# Division
# $t3 = num1 / num2

################## Don't change the lower part ##################

# Print prompt
li $v0, 4          # 4 = system code for printing a string
la $a0, Addition   # Load address of prompt in $a0
syscall            

# Print the result of addition
li $v0, 1          # 1 = system code for printing a word
move $a0, $t0      # Move the result to $a0
syscall            # Call to the system to execute the instruction

# Print newline
li $v0, 11        # 11 = system code for printing a character
li $a0, '\n'      # $a0 = register that accepts the newline character for printing
syscall           # Call to the System to execute the instructions and print the newline character

# Print prompt
li $v0, 4           # 4 = system code for printing a string
la $a0, Subtraction # Load address of prompt in $a0
syscall             

# Print the result of substraction
li $v0, 1          # 1 = system code for printing a word
move $a0, $t2      # Move the result to $a0
syscall            # Call to the system to execute the instruction

# Print newline
li $v0, 11        # 11 = system code for printing a character
li $a0, '\n'      # $a0 = register that accepts the newline character for printing
syscall           # Call to the System to execute the instructions and print the newline character


# Print prompt
li $v0, 4          # 4 = system code for printing a string
la $a0, Multiplication     # Load address of prompt in $a0
syscall            

# Print the result of multiplication
li $v0, 1          # 1 = system code for printing a word
move $a0, $t1      # Move the result to $a0
syscall            # Call to the system to execute the instruction

# Print newline
li $v0, 11        # 11 = system code for printing a character
li $a0, '\n'      # $a0 = register that accepts the newline character for printing
syscall           # Call to the System to execute the instructions and print the newline character


# Print prompt
li $v0, 4          # 4 = system code for printing a string
la $a0, Division     # Load address of prompt in $a0
syscall            

# Print the result of division
li $v0, 1          # 1 = system code for printing a word
move $a0, $t3      # Move the result to $a0
syscall            # Call to the system to execute the instruction

# Print newline
li $v0, 11        # 11 = system code for printing a character
li $a0, '\n'      # $a0 = register that accepts the newline character for printing
syscall           # Call to the System to execute the instructions and print the newline character
