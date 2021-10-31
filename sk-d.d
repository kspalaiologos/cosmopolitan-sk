module fuck;
import std.stdio;
void main(){
    uint[] mem; mem.length = 1048832; mem[] = 0;
    uint v;
    int m = 256;
    stdout.setvbuf(0, _IONBF);
    mem[m] = 1;
    m += 1;
    mem[m] = 1;
    while(mem[m]) {
        m -= 1;
        while(mem[m]) {
            m += 1;
            mem[m] -=1;
        }
        m += 1;
        while(mem[m]) {
            m += 1;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=9;
            m += 92;
            mem[m] +=2;
            m -= 92;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=5;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 5;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 1;
        mem[m] +=9;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=12;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=6;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 6;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 1;
        mem[m] +=12;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 8;
            mem[m] = 1;
            m += 1;
            mem[m] +=13;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 1;
        mem[m] +=13;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 8;
            mem[m] = 0;
            m += 1;
            mem[m] +=14;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 1;
        mem[m] +=14;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=9;
            m -= 3;
            while(mem[m]) {
                m += 3;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m += 6;
                mem[m] = 0;
                m += 3;
                mem[m] = 0;
                m -= 3;
            }
            m += 3;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 13;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 13;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=10;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 6;
            while(mem[m]) {
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] -=1;
            }
            m += 16;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 13;
            mem[m] +=2;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m += 5;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 5;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            mem[m] +=1;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] -=2;
            m -= 3;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 6;
            while(mem[m]) {
                v = mem[m];
                m -= 4;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 4;
            v = mem[m];
            m += 4;
            mem[m] = v;
            m -= 3;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            mem[m] +=2;
            m += 1;
            mem[m] = 0;
            m -= 4;
            mem[m] -=1;
            m -= 4;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 6;
            while(mem[m]) {
                v = mem[m];
                m -= 4;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 4;
            v = mem[m];
            m += 4;
            mem[m] = v;
            m -= 3;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            write(cast(char)mem[m]);
            m -= 2;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 2;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 7;
            mem[m] = 0;
            m += 2;
            mem[m] = 18;
            m += 1;
            mem[m] = 0;
            m -= 1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 3;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 5;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=10;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 10;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            mem[m] +=1;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 3;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 5;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=10;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 10;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            mem[m] +=1;
            write(cast(char)mem[m]);
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 4;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 10;
            mem[m] = 0;
            m += 12;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] +=1;
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 19;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=8;
            v = mem[m];
            m -= 1;
            mem[m] += v*10;
            mem[m] +=3;
            write(cast(char)mem[m]);
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 4;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 10;
            mem[m] = 0;
            m += 12;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] +=1;
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 19;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            v = mem[m];
            m += 1;
            mem[m] = (v*5);
            v = mem[m];
            m -= 1;
            mem[m] = v;
            write(cast(char)mem[m]);
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 4;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 10;
            mem[m] = 0;
            m += 12;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] +=1;
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 19;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=3;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            m += 1;
            mem[m] = 0;
            m -= 2;
            mem[m] = 0;
            m -= 6;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 2;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 2;
            mem[m] +=2;
            m -= 3;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*5;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 5;
            mem[m] +=1;
            m += 4;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 85;
                while(mem[m]) {
                    m += 2;
                }
                mem[m] = 1;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 89;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 85;
            while(mem[m]) {
                m += 2;
            }
            m += 1;
            mem[m] = 0;
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 93;
            while(mem[m]) {
                m += 10;
                mem[m] +=1;
                m += 85;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 93;
                mem[m] -=1;
            }
            m += 10;
            v = mem[m];
            m -= 10;
            mem[m] = v;
            m += 10;
            mem[m] = 0;
            m += 85;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            while(mem[m]) {
                mem[m] -=1;
                m -= 2;
            }
            m -= 93;
            mem[m] -=3;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 2;
            mem[m] = 0;
            m -= 4;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 9;
            mem[m] = 0;
            m += 13;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=5;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 6;
            while(mem[m]) {
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] -=1;
            }
            m += 16;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 14;
            v = getchar(); if(v!=EOF) mem[m] = v;
            m += 4;
            mem[m] +=8;
            v = mem[m];
            m -= 1;
            mem[m] += v*10;
            mem[m] +=3;
            v = mem[m];
            m -= 3;
            mem[m] -= v;
            m -= 2;
            mem[m] += v;
            m += 3;
            mem[m] = 0;
            m += 2;
            mem[m] = 0;
            m += 1;
            mem[m] = 0;
            m += 6;
            mem[m] = 1;
            m -= 10;
            while(mem[m]) {
                v = mem[m];
                m += 3;
                mem[m] -= v;
                m -= 5;
                mem[m] += v;
                m += 2;
                mem[m] = 0;
                m += 10;
                mem[m] -=1;
                m -= 10;
            }
            m -= 2;
            v = mem[m];
            m += 5;
            mem[m] += v;
            m -= 3;
            mem[m] = v;
            m += 10;
            v = mem[m];
            m -= 14;
            mem[m] += v;
            m += 1;
            mem[m] += v;
            m -= 1;
            v = mem[m];
            m += 14;
            mem[m] = v;
            m -= 7;
            mem[m] = 11;
            m -= 5;
            mem[m] = 0;
            m -= 2;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] = v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] = 0;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*5;
            v = mem[m];
            m += 1;
            mem[m] = (v*5);
            v = mem[m];
            m -= 1;
            mem[m] = v;
            v = mem[m];
            m -= 3;
            mem[m] -= v;
            m -= 2;
            mem[m] += v;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] = 0;
            m += 1;
            mem[m] = 0;
            m += 6;
            mem[m] = 1;
            m -= 10;
            while(mem[m]) {
                v = mem[m];
                m += 3;
                mem[m] -= v;
                m -= 5;
                mem[m] += v;
                m += 2;
                mem[m] = 0;
                m += 10;
                mem[m] -=1;
                m -= 10;
            }
            m -= 2;
            v = mem[m];
            m += 5;
            mem[m] += v;
            m -= 3;
            mem[m] = v;
            m -= 2;
            mem[m] = 0;
            m += 5;
            mem[m] = 1;
            m += 7;
            while(mem[m]) {
                m -= 7;
                v = mem[m];
                m -= 2;
                mem[m] += v;
                m -= 3;
                mem[m] += v;
                v = mem[m];
                m += 5;
                mem[m] = v;
                m -= 5;
                mem[m] = 0;
                m += 10;
                mem[m] +=1;
                m += 1;
            }
            m -= 1;
            while(mem[m]) {
                mem[m] -=1;
                m += 1;
            }
            m += 1;
            v = mem[m];
            m -= 14;
            mem[m] += v;
            m += 1;
            mem[m] += v;
            m -= 1;
            v = mem[m];
            m += 14;
            mem[m] = v;
            m -= 7;
            mem[m] = 11;
            m -= 7;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] = v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] = 0;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] +=2;
            m -= 5;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=3;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 3;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=5;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 5;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 8;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=5;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 5;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            mem[m] +=1;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            mem[m] -=1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            v = getchar(); if(v!=EOF) mem[m] = v;
            mem[m] = 0;
            m -= 4;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] +=1;
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 19;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=11;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=4;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 8;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=3;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 3;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=4;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 6;
            mem[m] = 0;
            m += 16;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 14;
                mem[m] +=1;
                m += 16;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 19;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=6;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 17;
            while(mem[m]) {
                m += 5;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 3;
                mem[m] -=1;
            }
            m += 5;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 13;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m += 5;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=7;
            m -= 3;
            while(mem[m]) {
                v = mem[m];
                m -= 4;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 4;
            v = mem[m];
            m += 4;
            mem[m] = v;
            m -= 3;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 12;
            mem[m] = v;
            m -= 13;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=7;
            m += 8;
            while(mem[m]) {
                v = mem[m];
                m -= 15;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 14;
                mem[m] = 0;
            }
            m -= 15;
            v = mem[m];
            m += 15;
            mem[m] = v;
            m -= 14;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 15;
            mem[m] +=2;
            v = mem[m];
            m -= 9;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 7;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 14;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 13;
            v = mem[m];
            m -= 9;
            mem[m] +=1;
            mem[m] -= v;
            m -= 5;
            mem[m] = v;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 16;
            mem[m] = 0;
            m += 2;
            mem[m] = 0;
            m -= 9;
            while(mem[m]) {
                v = mem[m];
                m += 9;
                mem[m] -= v;
                m -= 14;
                mem[m] += v;
                m += 5;
                mem[m] = 0;
                m += 7;
                mem[m] +=1;
                m -= 7;
            }
            m -= 5;
            v = mem[m];
            m += 14;
            mem[m] += v;
            m -= 9;
            mem[m] = v;
            m += 7;
            v = mem[m];
            m -= 14;
            mem[m] += v;
            m += 1;
            mem[m] += v;
            m -= 1;
            v = mem[m];
            m += 14;
            mem[m] = v;
            m -= 7;
            mem[m] = 7;
            m -= 5;
            mem[m] = 0;
            m -= 2;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] = v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] = 0;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            mem[m] +=1;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 12;
            mem[m] = v;
            m -= 13;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 12;
            v = mem[m];
            m -= 10;
            mem[m] = v;
            m -= 3;
            mem[m] = v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 7;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*6;
            m += 1;
            mem[m] = 0;
            m -= 2;
            mem[m] = 1;
            m -= 3;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*6;
        mem[m] +=4;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 7;
            mem[m] +=8;
            v = mem[m];
            m -= 8;
            mem[m] = v;
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 2;
            mem[m] = 0;
            m += 2;
        }
        m += 1;
        mem[m] +=7;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            m -= 3;
            while(mem[m]) {
                v = mem[m];
                m -= 4;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 4;
            v = mem[m];
            m += 4;
            mem[m] = v;
            m -= 3;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 12;
            mem[m] = v;
            m -= 13;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            m += 8;
            while(mem[m]) {
                v = mem[m];
                m -= 15;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 14;
                mem[m] = 0;
            }
            m -= 15;
            v = mem[m];
            m += 15;
            mem[m] = v;
            m -= 14;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 15;
            v = mem[m];
            m -= 9;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 7;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 14;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            m += 9;
            while(mem[m]) {
                v = mem[m];
                m -= 16;
                mem[m] += v;
                m += 1;
                mem[m] -=1;
                m += 15;
                mem[m] = 0;
            }
            m -= 16;
            v = mem[m];
            m += 16;
            mem[m] = v;
            m -= 15;
            mem[m] +=1;
            m -= 1;
            mem[m] = 0;
            m += 1;
            while(mem[m]) {
                m += 6;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 6;
                mem[m] -=1;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 3;
            }
            m += 6;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 16;
            mem[m] +=2;
            v = mem[m];
            m -= 10;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 14;
            mem[m] = v;
            m -= 8;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            m -= 3;
            while(mem[m]) {
                m += 3;
                v = mem[m];
                m -= 8;
                mem[m] += v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 3;
                v = mem[m];
                m -= 4;
                mem[m] = v;
                m -= 2;
                mem[m] = 0;
                m += 6;
                mem[m] = 0;
            }
            m -= 4;
            v = mem[m];
            m += 4;
            mem[m] = v;
            m += 3;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            mem[m] +=1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=4;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 14;
            mem[m] = v;
            m -= 15;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 2;
            mem[m] -=1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 1;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=5;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=5;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 12;
            mem[m] = v;
            m -= 13;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 1;
            mem[m] +=1;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m += 7;
            mem[m] +=1;
            m -= 13;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 16;
            mem[m] = v;
            m -= 17;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 12;
            v = mem[m];
            m -= 9;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 7;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 14;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 5;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] = 2;
            m -= 3;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=3;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 3;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m += 4;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] = 2;
            m -= 5;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=3;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 3;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=4;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=4;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m -= 2;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 11;
            v = mem[m];
            m -= 10;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 14;
            mem[m] = v;
            m -= 8;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*7;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=5;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*7;
        mem[m] +=5;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            mem[m] +=1;
            v = mem[m];
            m -= 2;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 12;
            v = mem[m];
            m -= 11;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 15;
            mem[m] = v;
            m -= 9;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 8;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] = 2;
            m -= 5;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=3;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 3;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            mem[m] +=1;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 1;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m -= 2;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 14;
            v = mem[m];
            m -= 13;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 17;
            mem[m] = v;
            m -= 11;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 4;
            mem[m] -=1;
            m -= 2;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            mem[m] +=1;
            v = mem[m];
            m -= 2;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 12;
            v = mem[m];
            m -= 11;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 15;
            mem[m] = v;
            m -= 9;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*4;
            mem[m] +=1;
            v = mem[m];
            m += 1;
            mem[m] = (v*4);
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*4;
        mem[m] +=1;
        v = mem[m];
        m += 1;
        mem[m] = (v*4);
        v = mem[m];
        m -= 1;
        mem[m] = v;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 4;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 3;
            mem[m] += v;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m += 4;
            mem[m] +=3;
            v = mem[m];
            m -= 1;
            mem[m] += v*4;
            mem[m] +=1;
            v = mem[m];
            m += 1;
            mem[m] = (v*4);
            mem[m] +=1;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m += 1;
            mem[m] = 0;
            m -= 2;
            mem[m] = 1;
            m -= 3;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=3;
        v = mem[m];
        m -= 1;
        mem[m] += v*4;
        mem[m] +=1;
        v = mem[m];
        m += 1;
        mem[m] = (v*4);
        mem[m] +=1;
        v = mem[m];
        m -= 1;
        mem[m] = v;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 7;
            mem[m] +=8;
            v = mem[m];
            m -= 8;
            mem[m] = v;
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 2;
            mem[m] = 0;
            m += 2;
        }
        m += 1;
        mem[m] +=4;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*9;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*9;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 2;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 1;
            v = mem[m];
            m += 7;
            mem[m] += v;
            m -= 4;
            mem[m] +=2;
            v = mem[m];
            m += 3;
            mem[m] += v;
            m += 4;
            mem[m] = 1;
            m -= 7;
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 2;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 12;
            while(mem[m]) {
                m -= 3;
                mem[m] +=1;
                m -= 3;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    mem[m] -=1;
                    m -= 1;
                }
                m += 1;
            }
            m -= 2;
            while(mem[m]) {
                mem[m] -=1;
                v = mem[m];
                m -= 3;
                mem[m] += v;
                m -= 3;
                mem[m] -=1;
                m += 6;
                mem[m] = 0;
                m += 4;
                mem[m] -=1;
                m -= 6;
            }
            m += 3;
            v = mem[m];
            m -= 7;
            mem[m] += v;
            m += 3;
            mem[m] = 8;
            m += 4;
            mem[m] = 0;
            m += 2;
            mem[m] +=1;
            m += 1;
            while(mem[m]) {
                m -= 1;
                mem[m] -=1;
            }
            m -= 1;
            while(mem[m]) {
                m -= 6;
                v = mem[m];
                m -= 8;
                mem[m] = v;
                m += 1;
                mem[m] += v;
                v = mem[m];
                m += 7;
                mem[m] = v;
                m -= 7;
                mem[m] = 0;
                m -= 2;
                mem[m] = 0;
                m += 15;
                mem[m] -=1;
                m -= 1;
            }
            m -= 5;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 5;
            v = mem[m];
            m += 10;
            mem[m] = v;
            v = mem[m];
            m -= 9;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 7;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*9;
            m += 1;
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 3;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*9;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 3;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 5;
            mem[m] +=7;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=6;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 6;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=7;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 15;
            v = mem[m];
            m -= 12;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 10;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=7;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=1;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=7;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=1;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 15;
            mem[m] +=1;
            v = mem[m];
            m -= 9;
            mem[m] = v;
            m -= 4;
            mem[m] += v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 7;
            mem[m] +=7;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=2;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=1;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 1;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=7;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=2;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 3;
            v = mem[m];
            m += 2;
            mem[m] = v;
            m -= 3;
            mem[m] += v;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m += 5;
            mem[m] +=7;
            v = mem[m];
            m -= 1;
            mem[m] += v*8;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            mem[m] +=3;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=6;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 6;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=7;
        v = mem[m];
        m -= 1;
        mem[m] += v*8;
        mem[m] +=3;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 15;
            v = mem[m];
            m -= 12;
            mem[m] = v;
            m -= 1;
            mem[m] += v;
            v = mem[m];
            m += 13;
            mem[m] = v;
            m -= 10;
            v = mem[m];
            m += 1;
            mem[m] = v;
            m -= 4;
            mem[m] = v;
            v = mem[m];
            m += 3;
            mem[m] = v;
            m += 3;
            mem[m] +=6;
            v = mem[m];
            m -= 1;
            mem[m] += v*10;
            m += 1;
            mem[m] = 0;
            m -= 6;
            mem[m] = 0;
            m -= 2;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 9;
            while(mem[m]) {
                m += 6;
                mem[m] +=1;
                m += 7;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 11;
                mem[m] -=1;
            }
            m += 6;
            v = mem[m];
            m -= 6;
            mem[m] = v;
            m += 6;
            mem[m] = 0;
            m += 7;
            while(mem[m]) {
                m += 2;
            }
            mem[m] = 1;
            while(mem[m]) {
                m -= 2;
            }
            m -= 18;
            mem[m] +=2;
            v = mem[m];
            m += 7;
            mem[m] = v;
            mem[m] = 0;
            m -= 7;
            mem[m] = 0;
            m -= 1;
            mem[m] = 2;
            m -= 1;
            mem[m] = 0;
            m += 2;
        }
        m += 2;
        mem[m] +=6;
        v = mem[m];
        m -= 1;
        mem[m] += v*10;
        m += 1;
        mem[m] = 0;
        m -= 4;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            m += 15;
            mem[m] -=1;
            v = mem[m];
            m -= 10;
            mem[m] = v;
            m += 10;
            mem[m] = 0;
            m -= 15;
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 2;
        }
        m += 1;
        mem[m] +=8;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 17;
            mem[m] = 0;
            m += 5;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 3;
                mem[m] +=1;
                m += 5;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 19;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=2;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 5;
            while(mem[m]) {
                m += 10;
                mem[m] +=1;
                m += 85;
                while(mem[m]) {
                    m += 2;
                }
                mem[m] = 1;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 93;
                mem[m] -=1;
            }
            m += 10;
            v = mem[m];
            m -= 10;
            mem[m] = v;
            m += 10;
            mem[m] = 0;
            m += 85;
            while(mem[m]) {
                m += 2;
            }
            m += 1;
            mem[m] = 0;
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 90;
            while(mem[m]) {
                m += 7;
                mem[m] +=1;
                m += 85;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] +=1;
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 90;
                mem[m] -=1;
            }
            m += 7;
            v = mem[m];
            m -= 7;
            mem[m] = v;
            m += 7;
            mem[m] = 0;
            m += 85;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            while(mem[m]) {
                mem[m] -=1;
                m -= 2;
            }
            m -= 97;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m += 1;
        mem[m] +=1;
        m -= 3;
        if(mem[m]) {
            v = mem[m];
            m += 2;
            mem[m] -= v;
            m += 1;
            mem[m] = 0;
            m -= 3;
        }
        mem[m] = 1;
        m += 2;
        mem[m] +=1;
        while(mem[m]) {
            m -= 1;
            v = mem[m];
            m += 1;
            mem[m] -=1;
            mem[m] += v;
            m += 1;
            mem[m] -= v;
            m -= 2;
            mem[m] = 0;
            m += 2;
            while(mem[m]) {
                m -= 1;
                v = mem[m];
                m -= 1;
                mem[m] += v;
                m += 2;
                mem[m] += v;
                m -= 1;
                mem[m] = 0;
                m -= 2;
                mem[m] -=1;
                m += 3;
                mem[m] = 0;
            }
            m -= 1;
            mem[m] = 0;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        m -= 2;
        mem[m] = 0;
        m += 2;
        while(mem[m]) {
            mem[m] -=1;
            m -= 2;
            mem[m] +=1;
            m += 5;
            mem[m] = 0;
            m += 3;
            while(mem[m]) {
                m += 7;
                mem[m] +=1;
                m += 85;
                while(mem[m]) {
                    m += 2;
                }
                mem[m] = 1;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 90;
                mem[m] -=1;
            }
            m += 7;
            v = mem[m];
            m -= 7;
            mem[m] = v;
            m += 7;
            mem[m] = 0;
            m += 85;
            while(mem[m]) {
                m += 2;
            }
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 93;
                mem[m] +=1;
                m += 95;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
                m += 1;
                mem[m] +=1;
                m -= 1;
            }
            m += 1;
            v = mem[m];
            m -= 1;
            mem[m] = v;
            m += 1;
            mem[m] = 0;
            m -= 4;
            while(mem[m]) {
                mem[m] -=1;
                m -= 2;
            }
            m -= 97;
            mem[m] = 0;
            m -= 1;
            mem[m] = 0;
            m += 22;
            while(mem[m]) {
                m += 2;
            }
            m -= 2;
            mem[m] -=1;
            m += 1;
            while(mem[m]) {
                m -= 3;
                while(mem[m]) {
                    m -= 2;
                }
                m -= 19;
                mem[m] +=1;
                m += 21;
                while(mem[m]) {
                    m += 2;
                }
                m += 1;
                mem[m] -=1;
            }
            m -= 3;
            while(mem[m]) {
                m -= 2;
            }
            m -= 11;
            mem[m] = 0;
            m -= 7;
        }
        m -= 2;
        v = mem[m];
        m += 2;
        mem[m] = v;
        v = mem[m];
        m -= 2;
        mem[m] = v;
        m += 2;
        mem[m] = 0;
        m -= 1;
    }
}
