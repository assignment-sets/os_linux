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
#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Check if the number is divisible by 11
if [ $((number % 11)) -eq 0 ]; then
    echo "The number $number is divisible by 11."
else
    echo "The number $number is not divisible by 11."
fi

# 4
#!/bin/bash

# Function to display the menu
show_menu() {
    echo "Select an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
}

# Function to perform calculation based on the selected operation
calculate() {
    case $operation in
        1)
            result=$((num1 + num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)
            if [ $num2 -ne 0 ]; then
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Result: $num1 / $num2 = $result"
            else
                echo "Error: Division by zero is not allowed."
            fi
            ;;
        5)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a valid operation."
            ;;
    esac
}

# Main loop
while true; do
    # Show the menu
    show_menu

    # Read user's choice
    read -p "Enter your choice: " operation

    # Exit if the user chooses to
    if [ $operation -eq 5 ]; then
        echo "Goodbye!"
        exit 0
    fi

    # Prompt for two numbers if not exiting
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2

    # Perform the calculation
    calculate
done

