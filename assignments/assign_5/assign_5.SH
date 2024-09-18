# 1
#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Initialize the factorial result to 1
factorial=1

# Calculate factorial using a loop
if [ $number -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
else
    for ((i=1; i<=number; i++)); do
        factorial=$((factorial * i))
    done
    echo "The factorial of $number is: $factorial"
fi

#2 
#!/bin/bash

# Loop through each combination of 1, 2, and 3
for i in 1 2 3; do
    for j in 1 2 3; do
        for k in 1 2 3; do
            echo "$i $j $k"
        done
    done
done

#3
#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1
    if [ $num -lt 2 ]; then
        return 1  # Not prime
    fi
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1  # Not prime
        fi
    done
    return 0  # Prime
}

# Prompt the user to enter the range
echo "Enter the starting number of the range:"
read start
echo "Enter the ending number of the range:"
read end

# Print prime numbers in the given range
echo "Prime numbers between $start and $end are:"
for ((num=start; num<=end; num++)); do
    if is_prime $num; then
        echo $num
    fi
done

# 4
#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Initialize sum to 0
sum=0

# Loop through each digit and calculate the sum
while [ $number -gt 0 ]; do
    digit=$((number % 10))  # Extract the last digit
    sum=$((sum + digit))    # Add the digit to the sum
    number=$((number / 10)) # Remove the last digit
done

# Print the result
echo "The sum of the digits is: $sum"
