#Shell program to get students grade from marks

read -p "Enter student's marks: " marks

# Calculate grade based on marks
case $marks in
    9[0-9]|100)
        grade="A+"
        ;;
    8[0-9])
        grade="A"
        ;;
    7[0-9])
        grade="B"
        ;;
    6[0-9])
        grade="C"
        ;;
    5[0-9])
        grade="D"
        ;;
    4[0-9])
        grade="E"
        ;;
    3[0-9]|2[0-9]|1[0-9]|[0-9])
        grade="F"
        ;;
    *)
        echo "Invalid marks entered."
        exit 1
        ;;
esac

# Display the grade
echo "Student's grade: $grade"
