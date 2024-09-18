# q1
#!/bin/bash
# Prompt the user to enter a number
echo "Enter a number:"
read number

# Reverse the number using `rev` command
reverse=$(echo $number | rev)

# Print the reversed number
echo "Reversed number: $reverse"

# q2
#!/bin/bash

# Function to calculate GCD using Euclidean algorithm
gcd() {
    local a=$1
    local b=$2
    while [ $b -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

# Prompt the user to enter two numbers
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Calculate GCD of the two numbers
gcd_result=$(gcd $num1 $num2)

# Check if the GCD is 1 (meaning they are prime to each other)
if [ $gcd_result -eq 1 ]; then
    echo "The numbers $num1 and $num2 are prime to each other (coprime)."
else
    echo "The numbers $num1 and $num2 are not prime to each other."
fi

# 3
