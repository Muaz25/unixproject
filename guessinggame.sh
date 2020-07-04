function guessgame() {
    a=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter no of files"
        read  no
        if [ $no -lt $a ]
        then
            echo "Your guess is Less then actual no of files"
        elif [ $no -gt $a ]
        then
            echo "Your guess is Greater then actual no of files"
        else
            echo "Congratulation ,you are guessed perfect no of files!"
        break;
        fi
    done
}

echo "Guess the no of  files in the current Directory!"
guessgame
