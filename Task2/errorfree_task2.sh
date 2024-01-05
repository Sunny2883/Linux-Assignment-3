calculate_square(){
result=$((number*number))
echo "the square of $number is $result"
}
read -p "enter a number " number
calculate_square $number

