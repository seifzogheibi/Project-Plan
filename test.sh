###FILE###

#Testing if a file is selected
./maze > tmp
if grep -q "File not specified." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing if the file exists
./maze okokok > tmp
if grep -q "File does not exist." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###ENDPOINTS###

#Testing if the maze has a Start point
./maze reg_7x7.txt > tmp 
if grep -q "The maze has no starting point!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing if the maze has an End point
./maze reg_7x7.txt > tmp 
if grep -q "The maze has no exit point!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###EXIT###

#Testing if reaching E completes
./maze reg_10x6.txt > tmp
if grep -q "Congrats You completed thr" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###SIZE/SHAPE###

#Checking maze size (rows) 
./maze ireg_9x2.txt > tmp 
if grep -q "Invalid rows." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Checking maze size (columns)
./maze ireg_2x5.txt > tmp 
if grep -q "Invalid columns." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


#Checking maze shape (rows)
./maze ireg_width_5x5.txt > tmp 
if grep -q "Bad dimensions. Maze must be rectangular." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Checking maze shape (columns)
./maze ireg_height_5x5.txt > tmp 
if grep -q "Bad dimensions. Maze must be rectangular." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###INPUTS###

#Testing for valid (W) input
./maze reg_15x8.txt < movement_up.txt > tmp
if grep -q "You moved up." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for valid (A) input
./maze reg_15x8.txt < movement_left.txt > tmp
if grep -q "You moved left." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for valid (S) input
./maze reg_5x5.txt < movement_down.txt > tmp
if grep -q "You moved down." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for valid (D) input
./maze reg_5x5.txt < movement_right.txt > tmp
if grep -q "You moved right." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (W) input
./maze reg_5x5.txt < movement_up.txt > tmp
if grep -q "You hit the wall above!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (A) input
./maze reg_5x5.txt < movement_left.txt > tmp
if grep -q "You hit the wall to your left!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (S) input
./maze reg_15x8.txt < movement_down.txt > tmp
if grep -q "You hit the wall below!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (D) input
./maze reg_15x8.txt < movement_right.txt > tmp
if grep -q "You hit the wall to your right!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi 

#Testing for out of bounds after a (W) input
./maze reg_6x6.txt < movement_up.txt > tmp
if grep -q "You cannot move up." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for out of bounds after a (A) input
./maze reg_6x6.txt < movement_left.txt > tmp
if grep -q "You cannot move left." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for out of bounds after a (S) input
./maze reg_6x7.txt < movement_down.txt > tmp
if grep -q "You cannot move down." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for out of bounds after a (D) input
./maze reg_6x7.txt < movement_right.txt > tmp
if grep -q "You cannot move right." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

###SOLUTIONS/FAILS###

#Testing a solution sequence
./maze reg_6x7.txt < sol_6x7.txt > tmp
if grep -q "This sequence completes the maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing a failure sequence
./maze reg_5x5.txt < sol_6x7.txt > tmp
if grep -q "This sequence does not solve the maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi