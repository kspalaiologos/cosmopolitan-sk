function brainfuck() {
    $m = @([uint32]0) * 1048832
    $p = 256
    [int64]$c = 0
    [int64]$w = 0x7FFFFFFF; $w=$w*2+1
    $c=1
    $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
    $c=1
    $c=$c -band $w
    while ($c -ne 0){
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=9;
            $m[$p]=$c -band $w;$p+=92;$c=$m[$p]
            $c+=2;
            $m[$p]=$c -band $w;$p-=92;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=5
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=9;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=12;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=6
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=12;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c+=13;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=13;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c+=14;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=14;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=9;
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=10;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $c+=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c-=2;
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $c+=2;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            outchar $c
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=18
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=10;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=10
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=10;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=10
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $c+=1;
            outchar $c
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=8;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*10
            $c+=3;
            outchar $c
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v*5
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            outchar $c
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=3;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=2;
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*5
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $c=1
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=89;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=93;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=93;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $c-=1;
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=93;$c=$m[$p]
            $c-=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=5;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            inchar; $c = $script:ch
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=8;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*10
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c-$v
                $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=11
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*5
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v*5
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c-$v
                $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $c-=1;
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=11
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c+=2;
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=3
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=5
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=5
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c-=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            inchar; $c = $script:ch
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=11;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=4;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=3
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=4;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=6;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=17;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=7;
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=7;
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c+=1;
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
                $c=$c-$v
                $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=7
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*6
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*6
        $c+=4;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c+=8;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=7;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=16;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=16;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=4;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c-=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=5;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=5;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=16;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=17;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=14;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=3
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=3
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=4;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=4;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=11;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*7
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=5;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*7
        $c+=5;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=8;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=3
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=14;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=17;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*4
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v*4
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*4
        $c+=1;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=$v*4
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c+=3;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*4
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v*4
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=3;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*4
        $c+=1;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=$v*4
        $c+=1;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c+=8;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=4;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*9
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*9
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=12;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $c-=1;
                    $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $c-=1;
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=8
            $m[$p]=$c -band $w;$p+=4;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=8;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c=$c+$v
                $v=$c -band $w
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$v
                $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=5;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*9
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*9
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=7;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=6
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=7;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=12;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=7;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=1;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=7;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=1;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=9;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c+=7;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=2;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=1
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=7;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=2;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c+=7;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*8
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c+=3;
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=6
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=7;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*8
        $c+=3;
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=12;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=13;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$v
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c+=6;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$c+$v*10
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=9;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=6;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=6;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $c=1
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=18;$c=$m[$p]
            $c+=2;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=$v
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=2
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=6;
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c+$v*10
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p+=15;$c=$m[$p]
            $c-=1;
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=15;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=8;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=17;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=2;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $c=1
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=93;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=10;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=10;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=90;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=90;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $c-=1;
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=97;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
        $c+=1;
        $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        $c=$c -band $w
        if ($c -ne 0){
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
        }
        $c=1
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c+=1;
        $c=$c -band $w
        while ($c -ne 0){
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c-=1;
            $c=$c+$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c-$v
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $v=$c -band $w
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c+$v
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=0
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
                $c=0
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$c -band $w
        while ($c -ne 0){
            $c-=1;
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c+=1;
            $m[$p]=$c -band $w;$p+=5;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $c=1
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=90;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=7;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=85;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=93;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=95;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $v=$c -band $w
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=$v
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=4;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $c-=1;
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=97;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p+=22;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
            $c-=1;
            $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p-=19;$c=$m[$p]
                $c+=1;
                $m[$p]=$c -band $w;$p+=21;$c=$m[$p]
                $c=$c -band $w
                while ($c -ne 0){
                    $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
                    $c=$c -band $w
                }
                $m[$p]=$c -band $w;$p+=1;$c=$m[$p]
                $c-=1;
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=3;$c=$m[$p]
            $c=$c -band $w
            while ($c -ne 0){
                $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
                $c=$c -band $w
            }
            $m[$p]=$c -band $w;$p-=11;$c=$m[$p]
            $c=0
            $m[$p]=$c -band $w;$p-=7;$c=$m[$p]
            $c=$c -band $w
        }
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $v=$c -band $w
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=$v
        $v=$c -band $w
        $m[$p]=$c -band $w;$p-=2;$c=$m[$p]
        $c=$v
        $m[$p]=$c -band $w;$p+=2;$c=$m[$p]
        $c=0
        $m[$p]=$c -band $w;$p-=1;$c=$m[$p]
        $c=$c -band $w
    }
}

function inchar() {
    if ($script:goteof -eq $true) { return; }
    if ($script:gotline -eq $false) {
        # The prompt string is corrupted by powershell.
        Write-Host $script:obuf -nonewline
        $script:obuf = ""
        $script:line = Read-Host
        $script:gotline = $true
        $script:goteof = $false
        if ( $script:line -eq $null ) {
            $script:goteof = $true
            return
        }
        # Well crap -- no EOF, I'll fake it.
        if ( $script:line.Length -eq 1 -And 26 -eq [int]($script:line.Substring(0,1).ToCharArray()[0])) {
            $script:goteof = $true
            return
        }
    }
    if ($script:line -eq "") {
        $script:gotline = $false;
        $script:ch=10;
        return;
    }
    $script:ch = [int]($script:line.Substring(0,1).ToCharArray()[0]);
    $script:line = $script:line.Substring(1);
}
$script:line = ""
$script:goteof = $false
$script:gotline = $false

function outchar() {
  if ($args[0] -ne 10) {
    $script:obuf="$script:obuf$([char]$args[0])"
    return;
  }
  # Using Write-Output here mostly works but not well.
  Write-Host $script:obuf
  $script:obuf=""
}

brainfuck
