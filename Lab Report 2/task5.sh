#Shell program to find out if a triangle is valid or not
read -p "Enter the angle 1: " angle1
read -p "Enter the angle 2: " angle2
read -p "Enter the angle 3: " angle3

sum=$((angle1 + angle2 + angle3))

if [ $sum -eq 180 ]; then
    echo "The given angles can form a triangle."
else
    echo "The given angles cannot form a triangle."
fi
