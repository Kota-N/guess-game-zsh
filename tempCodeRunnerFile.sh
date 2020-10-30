nction pick_number() {
#     local answer=$1
#     local guess_count=$2
    
#     echo 'Pick a number from 1 to 9: '
#     read user_guess
#     if [ $user_guess = $answer ]
#     then
#       echo 'congrats!'  
#     else
#       pick_number $answer ( $guess_count + 1 )
#     fi

# }