#!/bin/csh
# OH! the quoting!!
alias outchar 'awk -v c=\!^ '"'"'BEGIN{printf "%c",c;}'"'"

set M=(0 0) V=0 P=1 E=1 L=()
@ P=256
while ($P > $E)
    @ E += 1
    set M=( $M 0 )
end
@ M[$P]=1
@ P+=1
while ($P > $E)
    @ E += 1
    set M=( $M 0 )
end
@ M[$P]=1
while ( $M[$P] != 0 )
    @ P-=1
    while ( $M[$P] != 0 )
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=9
        @ P+=92
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        @ P-=92
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=5
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=5
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=9
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=12
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=6
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=6
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=12
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=13
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=13
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=14
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=14
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=9
        @ P-=3
        while ( $M[$P] != 0 )
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
            @ P-=3
        end
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=13
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=10
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]-=1
        end
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=13
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ M[$P]+=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]-=2
        @ P-=3
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=4
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=4
        @ V=$M[$P]
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ M[$P]+=2
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=4
        @ M[$P]-=1
        @ P-=4
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=4
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=4
        @ V=$M[$P]
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        outchar $M[$P]
        @ P-=2
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=18
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=10
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=10
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=10
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=10
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ M[$P]+=1
        outchar $M[$P]
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=4
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]+=1
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=19
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=8
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 10
        @ M[$P]+=3
        outchar $M[$P]
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=4
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]+=1
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=19
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V * 5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        outchar $M[$P]
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=4
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]+=1
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=19
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=2
        @ M[$P]=0
        @ P-=6
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=2
        @ M[$P]+=2
        @ P-=3
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 5
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=85
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ M[$P]=1
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=89
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=85
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=93
        while ( $M[$P] != 0 )
            @ P+=10
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=85
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=93
            @ M[$P]-=1
        end
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=10
        @ M[$P]=$V
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=85
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        while ( $M[$P] != 0 )
            @ M[$P]-=1
            @ P-=2
        end
        @ P-=93
        @ M[$P]-=3
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]=0
        @ P-=4
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]-=1
        end
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=14
        if ($#L == 0) set L=( `echo "$<" | awk 'BEGIN { while(1) { if (\\!gotline) { gotline = getline ; if(\\!gotline) break ; line = $0 ; } if (line == "") { gotline=0 ; print 10 ; break ; } if (\\!genord) { for(i=1; i<256; i++) ord[sprintf("%c",i)] = i ; genord=1 ; } c = substr(line, 1, 1) ; line=substr(line, 2) ; print ord[c] ; } exit 0 ; } ' ` )
        if ($#L > 0 ) then
            set M[$P]=$L[1]
            shift L
        endif
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=8
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 10
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=3
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]+=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=1
        @ P-=10
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=$V
            @ P-=5
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
            @ P+=10
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P-=10
        end
        @ P-=2
        @ V=$M[$P]
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=3
        @ M[$P]=$V
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=14
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=1
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]=11
        @ P-=5
        @ M[$P]=0
        @ P-=2
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]=0
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 5
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V * 5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ V=$M[$P]
        @ P-=3
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]+=$V
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=1
        @ P-=10
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=$V
            @ P-=5
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
            @ P+=10
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P-=10
        end
        @ P-=2
        @ V=$M[$P]
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=3
        @ M[$P]=$V
        @ P-=2
        @ M[$P]=0
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=1
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=7
            @ V=$M[$P]
            @ P-=2
            @ M[$P]+=$V
            @ P-=3
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=5
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=5
            @ M[$P]=0
            @ P+=10
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=1
        while ( $M[$P] != 0 )
            @ M[$P]-=1
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=14
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=1
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]=11
        @ P-=7
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]=0
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]+=2
        @ P-=5
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=3
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=3
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=5
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=5
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=8
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=5
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=5
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        if ($#L == 0) set L=( `echo "$<" | awk 'BEGIN { while(1) { if (\\!gotline) { gotline = getline ; if(\\!gotline) break ; line = $0 ; } if (line == "") { gotline=0 ; print 10 ; break ; } if (\\!genord) { for(i=1; i<256; i++) ord[sprintf("%c",i)] = i ; genord=1 ; } c = substr(line, 1, 1) ; line=substr(line, 2) ; print ord[c] ; } exit 0 ; } ' ` )
        if ($#L > 0 ) then
            set M[$P]=$L[1]
            shift L
        endif
        @ M[$P]=0
        @ P-=4
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]+=1
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=19
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=11
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=8
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=3
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=3
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=14
            @ M[$P]+=1
            @ P+=16
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=19
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=17
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=5
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=3
            @ M[$P]-=1
        end
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=13
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=7
        @ P-=3
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=4
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=4
        @ V=$M[$P]
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=13
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=7
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=15
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=14
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=15
        @ V=$M[$P]
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=14
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        @ V=$M[$P]
        @ P-=9
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=14
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=9
        @ M[$P]+=1
        @ M[$P]-=$V
        @ P-=5
        @ M[$P]=$V
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=9
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P+=9
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=$V
            @ P-=14
            @ M[$P]+=$V
            @ P+=5
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=7
        end
        @ P-=5
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=9
        @ M[$P]=$V
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=14
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=1
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]=7
        @ P-=5
        @ M[$P]=0
        @ P-=2
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]=0
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=13
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=10
        @ M[$P]=$V
        @ P-=3
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 6
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=2
        @ M[$P]=1
        @ P-=3
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 6
    @ M[$P]+=4
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=8
        @ V=$M[$P]
        @ P-=8
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=7
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ P-=3
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=4
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=4
        @ V=$M[$P]
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=13
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=15
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=14
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=15
        @ V=$M[$P]
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=14
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=9
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=14
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ V=$M[$P]
            @ P-=16
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=15
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=16
        @ V=$M[$P]
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=15
        @ M[$P]+=1
        @ P-=1
        @ M[$P]=0
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=6
            @ M[$P]-=1
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        @ V=$M[$P]
        @ P-=10
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=8
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        @ P-=3
        while ( $M[$P] != 0 )
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ V=$M[$P]
            @ P-=8
            @ M[$P]+=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=3
            @ V=$M[$P]
            @ P-=4
            @ M[$P]=$V
            @ P-=2
            @ M[$P]=0
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=4
        @ V=$M[$P]
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=4
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=15
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=5
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=13
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ P-=13
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=16
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=17
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=9
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=14
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]=2
        @ P-=3
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=3
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=3
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]=2
        @ P-=5
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=3
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=3
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=4
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=4
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=2
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=11
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=10
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=8
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 7
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=5
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 7
    @ M[$P]+=5
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P-=2
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=11
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=9
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=8
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]=2
        @ P-=5
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=3
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=3
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=2
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=14
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=13
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=17
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=11
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=4
        @ M[$P]-=1
        @ P-=2
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P-=2
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=11
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=9
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 4
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V * 4
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 4
    @ M[$P]+=1
    @ V=$M[$P]
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V * 4
    @ V=$M[$P]
    @ P-=1
    @ M[$P]=$V
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 4
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V * 4
        @ M[$P]+=1
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=2
        @ M[$P]=1
        @ P-=3
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=3
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 4
    @ M[$P]+=1
    @ V=$M[$P]
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V * 4
    @ M[$P]+=1
    @ V=$M[$P]
    @ P-=1
    @ M[$P]=$V
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=8
        @ V=$M[$P]
        @ P-=8
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=4
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 9
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 9
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=2
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P-=4
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=$V
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=1
        @ P-=7
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=2
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=12
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            @ M[$P]+=1
            @ P-=3
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ M[$P]-=1
                @ P-=1
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        while ( $M[$P] != 0 )
            @ M[$P]-=1
            @ V=$M[$P]
            @ P-=3
            @ M[$P]+=$V
            @ P-=3
            @ M[$P]-=1
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
            @ P+=4
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P-=6
        end
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=7
        @ M[$P]+=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=8
        @ P+=4
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ M[$P]-=1
        end
        @ P-=1
        while ( $M[$P] != 0 )
            @ P-=6
            @ V=$M[$P]
            @ P-=8
            @ M[$P]=$V
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ V=$M[$P]
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=$V
            @ P-=7
            @ M[$P]=0
            @ P-=2
            @ M[$P]=0
            @ P+=15
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P-=1
        end
        @ P-=5
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ V=$M[$P]
        @ P-=9
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 9
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=3
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 9
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=7
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=6
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=6
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=7
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=12
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=10
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=7
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=7
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=1
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=1
        @ V=$M[$P]
        @ P-=9
        @ M[$P]=$V
        @ P-=4
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=7
        @ M[$P]+=7
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=2
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=1
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=1
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=7
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=2
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=3
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=7
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 8
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=3
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=6
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=6
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=7
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 8
    @ M[$P]+=3
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=12
        @ M[$P]=$V
        @ P-=1
        @ M[$P]+=$V
        @ V=$M[$P]
        @ P+=13
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=10
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P-=4
        @ M[$P]=$V
        @ V=$M[$P]
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]+=6
        @ V=$M[$P]
        @ P-=1
        @ M[$P]+=$V * 10
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=6
        @ M[$P]=0
        @ P-=2
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=9
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=6
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=11
            @ M[$P]-=1
        end
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=6
        @ M[$P]=$V
        @ P+=6
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ M[$P]=1
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=18
        @ M[$P]+=2
        @ V=$M[$P]
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=$V
        @ M[$P]=0
        @ P-=7
        @ M[$P]=0
        @ P-=1
        @ M[$P]=2
        @ P-=1
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=6
    @ V=$M[$P]
    @ P-=1
    @ M[$P]+=$V * 10
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=4
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ P+=15
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ V=$M[$P]
        @ P-=10
        @ M[$P]=$V
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=15
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=8
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=17
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=3
            @ M[$P]+=1
            @ P+=5
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=19
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=2
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=10
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=85
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ M[$P]=1
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=93
            @ M[$P]-=1
        end
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=10
        @ M[$P]=$V
        @ P+=10
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=85
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=90
        while ( $M[$P] != 0 )
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=85
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=90
            @ M[$P]-=1
        end
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=7
        @ M[$P]=$V
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=85
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        while ( $M[$P] != 0 )
            @ M[$P]-=1
            @ P-=2
        end
        @ P-=97
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P+=1
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    @ P-=3
    if ( $M[$P] != 0 ) then
        @ V=$M[$P]
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=3
    endif
    @ M[$P]=1
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]+=1
    while ( $M[$P] != 0 )
        @ P-=1
        @ V=$M[$P]
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=1
        @ M[$P]+=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]-=$V
        @ P-=2
        @ M[$P]=0
        @ P+=2
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=1
            @ V=$M[$P]
            @ P-=1
            @ M[$P]+=$V
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=$V
            @ P-=1
            @ M[$P]=0
            @ P-=2
            @ M[$P]-=1
            @ P+=3
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]=0
        end
        @ P-=1
        @ M[$P]=0
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ P-=2
    @ M[$P]=0
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    while ( $M[$P] != 0 )
        @ M[$P]-=1
        @ P-=2
        @ M[$P]+=1
        @ P+=5
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=3
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=7
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P+=85
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ M[$P]=1
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=90
            @ M[$P]-=1
        end
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=7
        @ M[$P]=$V
        @ P+=7
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P+=85
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=93
            @ M[$P]+=1
            @ P+=95
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]+=1
            @ P-=1
        end
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ V=$M[$P]
        @ P-=1
        @ M[$P]=$V
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        @ M[$P]=0
        @ P-=4
        while ( $M[$P] != 0 )
            @ M[$P]-=1
            @ P-=2
        end
        @ P-=97
        @ M[$P]=0
        @ P-=1
        @ M[$P]=0
        @ P+=22
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P+=2
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
        end
        @ P-=2
        @ M[$P]-=1
        @ P+=1
        while ($P > $E)
            @ E += 1
            set M=( $M 0 )
        end
        while ( $M[$P] != 0 )
            @ P-=3
            while ( $M[$P] != 0 )
                @ P-=2
            end
            @ P-=19
            @ M[$P]+=1
            @ P+=21
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            while ( $M[$P] != 0 )
                @ P+=2
                while ($P > $E)
                    @ E += 1
                    set M=( $M 0 )
                end
            end
            @ P+=1
            while ($P > $E)
                @ E += 1
                set M=( $M 0 )
            end
            @ M[$P]-=1
        end
        @ P-=3
        while ( $M[$P] != 0 )
            @ P-=2
        end
        @ P-=11
        @ M[$P]=0
        @ P-=7
    end
    @ P-=2
    @ V=$M[$P]
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=$V
    @ V=$M[$P]
    @ P-=2
    @ M[$P]=$V
    @ P+=2
    while ($P > $E)
        @ E += 1
        set M=( $M 0 )
    end
    @ M[$P]=0
    @ P-=1
end
