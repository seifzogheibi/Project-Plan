gcc maze.c -o maze

###FILE###

#Testing if a file is selected
./maze > tmp
echo -n "Testing if a file is selected - "
if grep -q "File not specified." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing if the file exists
./maze okokok > tmp
echo -n "Testing if the file exists - "
if grep -q "File does not exist." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###ENDPOINTS###

#Testing if the maze has a Start point
./maze test_data/reg_7x7.txt > tmp 
echo -n "Testing if the maze has a starting point - "
if grep -q "The maze has no start!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing if the maze has an exit point
./maze test_data/reg_7x7.txt > tmp 
echo -n "Testing if the maze has an exit point - "
if grep -q "The maze has no exit!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###EXIT###

#Testing if reaching E completes
./maze test_data/reg_10x6.txt > tmp
echo -n "Testing if reaching E completes - "
if grep -q "Congrats! You completed the maze!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###SIZE/SHAPE###

#Checking maze size (rows)
./maze test_data/ireg_9x2.txt > tmp 
echo -n "Checking maze size (rows) - "
if grep -q "Invalid rows." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Checking maze size (columns)
./maze test_data/ireg_2x5.txt > tmp
echo -n "Checking maze size (columns) - " 
if grep -q "Invalid columns." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


#Checking maze shape (rows)
./maze test_data/ireg_width_5x5.txt > tmp 
echo -n "Checking maze shape (rows) - "
if grep -q "Bad dimensions. Maze must be rectangular." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Checking maze shape (columns)
./maze test_data/ireg_height_5x5.txt > tmp 
echo -n "Checking maze shape (columns) - "
if grep -q "Bad dimensions. Maze must be rectangular." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


###INPUTS###

#Testing for valid (W) input
./maze test_data/reg_15x8.txt < movements/movement_up.txt > tmp
echo -n "Testing for valid (W) input - "
if grep -q "You moved up." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for valid (A) input
./maze test_data/reg_15x8.txt < movements/movement_left.txt > tmp
echo -n "Testing for valid (A) input - "
if grep -q "You moved left." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for valid (S) input
./maze test_data/reg_5x5.txt < movements/movement_down.txt > tmp
echo -n "Testing for valid (S) input - "
if grep -q "You moved down." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for valid (D) input
./maze test_data/reg_5x5.txt < movements/movement_right.txt > tmp
echo -n "Testing for valid (D) input - "
if grep -q "You moved right." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (W) input
./maze test_data/reg_5x5.txt < movements/movement_up.txt > tmp
echo -n "Testing for hitting a wall after a (W) input - "
if grep -q "You hit the wall above!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (A) input
./maze test_data/reg_5x5.txt < movements/movement_left.txt > tmp
echo -n "Testing for hitting a wall after a (A) input - "
if grep -q "You hit the wall to your left!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (S) input
./maze test_data/reg_15x8.txt < movements/movement_down.txt > tmp
echo -n "Testing for hitting a wall after a (S) input - "
if grep -q "You hit the wall below!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for hitting a wall after a (D) input
./maze test_data/reg_15x8.txt < movements/movement_right.txt > tmp
echo -n "Testing for hitting a wall after a (D) input - "
if grep -q "You hit the wall to your right!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi 

#Testing for out of bounds after a (W) input
./maze test_data/reg_6x6.txt < movements/movement_up.txt > tmp
echo -n "Testing for out of bounds after a (W) input - "
if grep -q "You cannot move up." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for out of bounds after a (A) input
./maze test_data/reg_6x6.txt < movements/movement_left.txt > tmp
echo -n "Testing for out of bounds after a (A) input - "
if grep -q "You cannot move left." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for out of bounds after a (S) input
./maze test_data/reg_6x7.txt < movements/movement_down.txt > tmp
echo -n "Testing for out of bounds after a (S) input - "
if grep -q "You cannot move down." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing for out of bounds after a (D) input
./maze test_data/reg_6x7.txt < movements/movement_right.txt > tmp
echo -n "Testing for out of bounds after a (D) input - "
if grep -q "You cannot move right." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

###SOLUTIONS/FAILS###

#Testing a solution sequence
./maze test_data/reg_6x7.txt < movements/sol_6x7.txt > tmp
echo -n "Testing a solution sequence - "
if grep -q "This sequence completes the maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing a failure sequence
./maze test_data/reg_5x5.txt < movements/sol_6x7.txt > tmp
echo -n "Testing a failure sequence - "
if grep -q "This sequence does not solve the maze." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

rm -f maze tmp