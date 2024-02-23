#Testing for correct file input
./maze > tmp
if grep -q "Usage: ./maze <filename>" tmp
then
    echo "PASS"
else
    echo "FAIL"
fi

#SHAPE/SIZE(3)

#Testing maze shape
./maze ireg_height_5x5.txt > tmp
if grep -q "Maze format not in rectangluar shape." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing maze size
./maze ireg_width_5x5.txt > tmp
if grep -q "Invalid row size." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing maze size
./maze ireg_height_5x5 > tmp
if grep -q "Invalid column size." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#MOVEMENTS(4)

#Testing (w) movement up
./maze reg_15x8.txt < movement_up > tmp
if grep -q "You moved up." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing (s) movement down
./maze reg_15x8.txt < movement_down > tmp
if grep -q "You moved down." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing (a) movement left
./maze reg_15x8.txt < movement_left > tmp
if grep -q "You moved left." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing (d) movement right
./maze reg_15x8.txt < movement_right > tmp
if grep -q "You moved right." tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#WALLS(4)

#Testing (w) movement up but hitting a wall
./maze reg_10x6.txt < movement_up > tmp
if grep -q "Movement upwards is blocked!" tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing (s) movement down but hitting a wall
./maze reg_5x5.txt < movement_down > tmp
if grep -q "Movement downwards is blocked!" tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing (a) movement left but hitting a wall
./maze reg_10x6.txt < movement_left > tmp
if grep -q "Movement leftwards is blocked!" tmp
then
  echo "PASS"
else
    echo "FAIL"
fi

#Testing (d) movement right but hitting a wall
./maze reg_5x5.txt < movement_right > tmp
if grep -q "Movement rightwards is blocked!" tmp
then
  echo "PASS"
else
    echo "FAIL"
fi
