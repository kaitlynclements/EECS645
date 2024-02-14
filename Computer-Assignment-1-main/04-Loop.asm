.data          # data section
message:      .asciiz "Well done!"
newline:      .asciiz "\n"

.text          # code section

main:
  li $t1, 1             # initialize iteration counter (will be changed by the auto-grader)
  li $t2, 15            # initialize loop limit (will be changed by the auto-grader)
  
################## Don't change the upper part ##################

  ## Your instructions go here  ##

  # Print the $t1 value as long as $t1 is less than or equal to $t2
   
  li $v0, 1       #DONT CHANGE THIS
  move $a0, $t1   #DONT CHANGE THIS
  syscall         #DONT CHANGE THIS
  li $v0, 4       #DONT CHANGE THIS
  la $a0, newline #DONT CHANGE THIS
  syscall         #DONT CHANGE THIS

  ## Your instructions go here  ##


################## Don't change the lower part ##################

exit:

  li $v0, 4
  la $a0, message
  syscall

