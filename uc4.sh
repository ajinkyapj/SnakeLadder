echo "**** Welcome to Snake and Ladder Game ****"
position=0
echo "Start position of game : $position"
win1=0
win2=0
move1=0
MovesCount1=0
MovesCount2=0
DiceCount1=0
DiceCount2=0
option=(NoPlay Ladder Snake)
echo ${option[2]}

while true
do

echo "***First Player***"
                n=$((RANDOM% 6 +1 ))
                echo "Dice :$n"
                let DiceCount1+=1
                check=$((RANDOM%3))
                choice1=${option[$check]}
                echo "$choice1"
                if [[ $choice1 == 'Ladder' ]]
                then
                        let LadderMove=$MovesCount1
                        let LadderMove+=n
                        echo "Ladder Move: $n"
                        if [[ $LadderMove -gt 100 ]]
                        then
                                echo "Can't Move!"
                                continue
                        elif [[ $LadderMove -eq 100 ]]
                        then
                                echo "First Player WON and Dice Rolled $DiceCount1 and Total Moves are $move1"
                                #echo Second Player Lost and Dice Rolled $DiceCount2 and Total Moves are $move2"

                                break
                        else
                            let MovesCount1+=n
                            let move1+=1
                            continue
                        fi
                elif [[ $choice1 == 'Snake' ]]
                then
                        echo "Snake Move: $n"
                       let SnakeMove=$MovesCount1
                       let SnakeMove-=n
                        if [[ $SnakeMove -le 0 ]]
                            then
                              let  MovesCount1=0
                        else
                           let MovesCount1-=n
                           let move1+=1
                        fi
                elif [[ $choice1 == 'NoPlay' ]]
                then
                        echo "No play Move: $n"


                fi
                echo "First player moves on: $MovesCount1"
done
