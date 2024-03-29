#find sum of even and odd from a set of numbers
read -p "Enter numbers separated by space: " numbers

sum_odd=0
sum_even=0


for num in $numbers; do
    if [ $((num % 2)) -eq 0 ]; then
        sum_even=$((sum_even + num))
    else
        sum_odd=$((sum_odd + num))
    fi
done

echo "Sum of odd numbers: $sum_odd"
echo "Sum of even numbers: $sum_even"
