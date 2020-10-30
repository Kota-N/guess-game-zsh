function guessing_game() {
    answer=$(( ( RANDOM % 9 )  + 1 ))
    guess_count=0
    
    pick_number $answer $guess_count


}

function pick_number() {
    local answer=$1
    local guess_count=$2
    
    echo 'Pick a number from 1 to 9: '
    read user_guess
    if [ $user_guess -eq $answer ]
    then
      echo 'Congrats!'
      echo It took $(( $guess_count + 1 )) guesses!
      exit

    elif [ $user_guess -gt $answer ]
    then
      echo 'Too high!'
      pick_number $answer $(( $guess_count + 1 ))

    elif [ $user_guess -lt $answer ]
    then
      echo 'Too low!'
      pick_number $answer $(( $guess_count + 1 ))

    else
      pick_number $answer $(( $guess_count + 1 ))
    fi

}


guessing_game
