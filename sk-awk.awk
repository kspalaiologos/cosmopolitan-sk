#!/usr/bin/awk -f
BEGIN {
    p = 256
    m[p] = 1
    m[p+1] = 1
    while(m[p+1]){
        while(m[p]){
            m[p+1] -= 1
            p += 1
        }
        while(m[p+1]){
            p += 1
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 9
            m[p+100] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 5
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 5
            m[p+1] = 0
            p += 2
        }
        m[p+2] += 9
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 12
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 6
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 6
            m[p+1] = 0
            p += 2
        }
        m[p+2] += 12
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+7] = 1
            m[p+8] += 13
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+2] += 13
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+4] = 1
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+7] = 0
            m[p+8] += 14
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+2] += 14
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 9
            while(m[p+5]){
                v = m[p+8]
                m[p] += v
                m[p-1] = 0
                m[p+5] = 0
                m[p+8] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+10] = 0
            p += 2
        }
        m[p+2] += 10
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+5]){
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+5] -= 1
            }
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+8] += 2
            v = m[p+8]
            m[p+9] = v
            m[p+5] += v
            v = m[p+5]
            m[p+8] = v
            m[p+11] += 3
            v = m[p+11]
            m[p+10] += v*5
            m[p+11] = 0
            m[p+5] = 0
            while(m[p+10]){
                m[p+16] += 1
                while(m[p+23]){
                    p += 2
                }
                m[p+24] += 1
                while(m[p+21]){
                    p -= 2
                }
                m[p+10] -= 1
            }
            v = m[p+16]
            m[p+10] = v
            m[p+16] = 0
            while(m[p+23]){
                p += 2
            }
            m[p+23] = 1
            while(m[p+23]){
                p -= 2
            }
            m[p+5] += 1
            v = m[p+5]
            m[p+12] = v
            m[p+12] = 0
            m[p+5] = 0
            m[p+4] = 1
            m[p+3] = 0
            p += 4
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*5
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*5
            m[p+8] += 1
            m[p+9] = 0
            m[p+6] -= 2
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+5]){
                v = m[p+5]
                m[p+1] += v
                m[p+2] -= 1
                m[p+5] = 0
            }
            v = m[p+1]
            m[p+5] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*5
            m[p+8] += 2
            m[p+9] = 0
            m[p+5] -= 1
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+5]){
                v = m[p+5]
                m[p+1] += v
                m[p+2] -= 1
                m[p+5] = 0
            }
            v = m[p+1]
            m[p+5] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*8
            printf "%c",m[p+8]
            v = m[p+6]
            m[p+5] = v
            v = m[p+5]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+6] = 0
            m[p+8] = 18
            m[p+9] = 0
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*6
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+6] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 10
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 10
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+5] += 1
            v = m[p+5]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*5
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*5
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+6] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*5
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 10
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 10
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*5
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*8
            m[p+8] += 1
            printf "%c",m[p+8]
            m[p+8] = 0
            m[p+5] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+9] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p+3] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p-2] = 0
            m[p-3] = 0
            while(m[p+19]){
                p += 2
            }
            m[p+17] -= 1
            while(m[p+18]){
                while(m[p+15]){
                    p -= 2
                }
                m[p-4] += 1
                while(m[p+17]){
                    p += 2
                }
                m[p+18] -= 1
            }
            while(m[p+15]){
                p -= 2
            }
            m[p+4] = 0
            p -= 4
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*5
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 8
            v = m[p+9]
            m[p+8] += v*10
            m[p+8] += 3
            printf "%c",m[p+8]
            m[p+8] = 0
            m[p+5] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+9] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p+3] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p-2] = 0
            m[p-3] = 0
            while(m[p+19]){
                p += 2
            }
            m[p+17] -= 1
            while(m[p+18]){
                while(m[p+15]){
                    p -= 2
                }
                m[p-4] += 1
                while(m[p+17]){
                    p += 2
                }
                m[p+18] -= 1
            }
            while(m[p+15]){
                p -= 2
            }
            m[p+4] = 0
            p -= 4
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*5
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*5
            v = m[p+8]
            m[p+9] = v*5
            v = m[p+9]
            m[p+8] = v
            printf "%c",m[p+8]
            m[p+8] = 0
            m[p+5] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+9] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p+3] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p-2] = 0
            m[p-3] = 0
            while(m[p+19]){
                p += 2
            }
            m[p+17] -= 1
            while(m[p+18]){
                while(m[p+15]){
                    p -= 2
                }
                m[p-4] += 1
                while(m[p+17]){
                    p += 2
                }
                m[p+18] -= 1
            }
            while(m[p+15]){
                p -= 2
            }
            m[p+4] = 0
            p -= 4
        }
        m[p+2] += 3
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*5
            m[p+9] = 0
            m[p+7] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*5
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+7] = v
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*5
            m[p+9] = 0
            m[p+6] = 0
            m[p+4] += 2
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*5
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+4] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+99]){
                    p += 2
                }
                m[p+99] = 1
                while(m[p+99]){
                    p -= 2
                }
                m[p+10] -= 1
                p += 2
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+99]){
                p += 2
            }
            m[p+100] = 0
            while(m[p+97]){
                p -= 2
            }
            while(m[p+4]){
                m[p+14] += 1
                while(m[p+99]){
                    p += 2
                }
                m[p+100] += 1
                while(m[p+97]){
                    p -= 2
                }
                m[p+4] -= 1
            }
            v = m[p+14]
            m[p+4] = v
            m[p+14] = 0
            while(m[p+99]){
                p += 2
            }
            while(m[p+97]){
                m[p+97] -= 1
                p -= 2
            }
            m[p+4] -= 3
            v = m[p+4]
            m[p+6] = v
            m[p+4] = 0
            m[p] = 0
            m[p-1] = 0
            m[p+8] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p-2] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p+6] = 0
            p -= 2
        }
        m[p+2] += 5
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+5]){
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+5] -= 1
            }
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            getch(7)
            m[p+11] += 8
            v = m[p+11]
            m[p+10] += v*10
            m[p+10] += 3
            v = m[p+10]
            m[p+7] -= v
            m[p+5] += v
            m[p+8] = 0
            m[p+10] = 0
            m[p+11] = 0
            m[p+17] = 1
            while(m[p+7]){
                v = m[p+7]
                m[p+10] -= v
                m[p+5] += v
                m[p+7] = 0
                m[p+17] -= 1
            }
            v = m[p+5]
            m[p+10] += v
            m[p+7] = v
            v = m[p+17]
            m[p+3] += v
            m[p+4] += v
            v = m[p+3]
            m[p+17] = v
            m[p+10] = 11
            m[p+5] = 0
            m[p+3] = 0
            while(m[p+4]){
                v = m[p+10]
                m[p+2] = v
                m[p+3] += v
                v = m[p+3]
                m[p+10] = v
                m[p+4] = 0
                m[p+3] = 0
                m[p+1] = 0
            }
            m[p+10] = 0
            p += 2
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*5
            v = m[p+8]
            m[p+9] = v*5
            v = m[p+9]
            m[p+8] = v
            v = m[p+8]
            m[p+5] -= v
            m[p+3] += v
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] = 0
            m[p+9] = 0
            m[p+15] = 1
            while(m[p+5]){
                v = m[p+5]
                m[p+8] -= v
                m[p+3] += v
                m[p+5] = 0
                m[p+15] -= 1
            }
            v = m[p+3]
            m[p+8] += v
            m[p+5] = v
            m[p+3] = 0
            m[p+8] = 1
            while(m[p+15]){
                v = m[p+8]
                m[p+6] += v
                m[p+3] += v
                v = m[p+3]
                m[p+8] = v
                m[p+3] = 0
                m[p+13] += 1
                p -= 1
            }
            while(m[p+14]){
                m[p+14] -= 1
                p += 1
            }
            v = m[p+15]
            m[p+1] += v
            m[p+2] += v
            v = m[p+1]
            m[p+15] = v
            m[p+8] = 11
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] = v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] = 0
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+6] += 2
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 3
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 3
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*6
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 5
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 5
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+5]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 5
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 5
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+5] += 1
            v = m[p+5]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*7
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+5] -= 1
            v = m[p+5]
            m[p+6] = v
            m[p+5] = 0
            getch(5)
            m[p+5] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p+3] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p-2] = 0
            m[p-3] = 0
            while(m[p+19]){
                p += 2
            }
            m[p+17] -= 1
            while(m[p+18]){
                while(m[p+15]){
                    p -= 2
                }
                m[p-4] += 1
                while(m[p+17]){
                    p += 2
                }
                m[p+18] -= 1
            }
            while(m[p+15]){
                p -= 2
            }
            m[p+4] = 0
            p -= 4
        }
        m[p+2] += 11
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 4
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 3
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 3
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 4
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+5] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p+3] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p-2] = 0
            m[p-3] = 0
            while(m[p+19]){
                p += 2
            }
            m[p+17] -= 1
            while(m[p+18]){
                while(m[p+15]){
                    p -= 2
                }
                m[p-4] += 1
                while(m[p+17]){
                    p += 2
                }
                m[p+18] -= 1
            }
            while(m[p+15]){
                p -= 2
            }
            m[p+4] = 0
            p -= 4
        }
        m[p+2] += 6
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+16]){
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+16] -= 1
            }
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            v = m[p+8]
            m[p+9] = v
            m[p+5] += v
            v = m[p+5]
            m[p+8] = v
            m[p+11] += 5
            v = m[p+11]
            m[p+10] += v*6
            m[p+11] = 0
            m[p+5] = 0
            while(m[p+10]){
                m[p+16] += 1
                while(m[p+23]){
                    p += 2
                }
                m[p+24] += 1
                while(m[p+21]){
                    p -= 2
                }
                m[p+10] -= 1
            }
            v = m[p+16]
            m[p+10] = v
            m[p+16] = 0
            while(m[p+23]){
                p += 2
            }
            m[p+23] = 1
            while(m[p+23]){
                p -= 2
            }
            m[p+5] += 1
            v = m[p+5]
            m[p+12] = v
            m[p+12] = 0
            m[p+5] = 0
            m[p+4] = 1
            m[p+3] = 0
            p += 4
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*6
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 7
            while(m[p+5]){
                v = m[p+5]
                m[p+1] += v
                m[p+2] -= 1
                m[p+5] = 0
            }
            v = m[p+1]
            m[p+5] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+5]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+16] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 7
            while(m[p+16]){
                v = m[p+16]
                m[p+1] += v
                m[p+2] -= 1
                m[p+16] = 0
            }
            v = m[p+1]
            m[p+16] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+16] += 2
            v = m[p+16]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+16] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+17] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            v = m[p+17]
            m[p+8] += 1
            m[p+8] -= v
            m[p+3] = v
            m[p+1] -= 1
            m[p-1] += 1
            m[p+15] = 0
            m[p+17] = 0
            while(m[p+8]){
                v = m[p+8]
                m[p+17] -= v
                m[p+3] += v
                m[p+8] = 0
                m[p+15] += 1
            }
            v = m[p+3]
            m[p+17] += v
            m[p+8] = v
            v = m[p+15]
            m[p+1] += v
            m[p+2] += v
            v = m[p+1]
            m[p+15] = v
            m[p+8] = 7
            m[p+3] = 0
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] = v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] = 0
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+5] += 1
            v = m[p+5]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+16] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            v = m[p+16]
            m[p+6] = v
            m[p+3] = v
            v = m[p+3]
            m[p+16] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*6
            m[p+9] = 0
            m[p+7] = 1
            m[p+4] = 1
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*6
        m[p+2] += 4
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+8] += 8
            v = m[p+8]
            m[p] = v
            m[p+1] -= 1
            m[p+1] += v
            v = m[p+1]
            m[p+8] = v
            m[p+8] = 0
            m[p+1] = 0
            m[p-1] = 0
        }
        m[p+2] += 7
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*7
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+5]){
                v = m[p+5]
                m[p+1] += v
                m[p+2] -= 1
                m[p+5] = 0
            }
            v = m[p+1]
            m[p+5] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+5]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+16] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+16]){
                v = m[p+16]
                m[p+1] += v
                m[p+2] -= 1
                m[p+16] = 0
            }
            v = m[p+1]
            m[p+16] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+16]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+16] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+17] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+17]){
                v = m[p+17]
                m[p+1] += v
                m[p+2] -= 1
                m[p+17] = 0
            }
            v = m[p+1]
            m[p+17] = v
            m[p+2] += 1
            m[p+1] = 0
            while(m[p+2]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+2] -= 1
                m[p+1] = 0
                m[p-1] = 0
            }
            m[p+8] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+17] += 2
            v = m[p+17]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+17] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+5]){
                v = m[p+8]
                m[p] += v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                v = m[p+5]
                m[p+1] = v
                m[p-1] = 0
                m[p+5] = 0
            }
            v = m[p+1]
            m[p+5] = v
            m[p+8] = 0
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+6] += 1
            v = m[p+6]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 4
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+18] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+6] -= 1
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*8
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            v = m[p+5]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 5
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 5
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+16] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+5] += 1
            v = m[p+5]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+16] += 1
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*7
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+20] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            v = m[p+16]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+16] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+17] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+6] = 2
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 3
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 3
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+5] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+6] = 2
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 3
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 3
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+5]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 4
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 4
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            v = m[p+17]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+17] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*7
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 5
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*7
        m[p+2] += 5
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+6] += 1
            v = m[p+6]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            v = m[p+18]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+18] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*8
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+6] = 2
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 3
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 3
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+5] += 1
            v = m[p+5]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            v = m[p+20]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+20] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+5] -= 1
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+6] += 1
            v = m[p+6]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            v = m[p+18]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+18] = v
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*4
            m[p+8] += 1
            v = m[p+8]
            m[p+9] = v*4
            v = m[p+9]
            m[p+8] = v
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*4
        m[p+2] += 1
        v = m[p+2]
        m[p+3] = v*4
        v = m[p+3]
        m[p+2] = v
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+5]
            m[p+6] = v
            m[p+3] += v
            v = m[p+3]
            m[p+5] = v
            m[p+9] += 3
            v = m[p+9]
            m[p+8] += v*4
            m[p+8] += 1
            v = m[p+8]
            m[p+9] = v*4
            m[p+9] += 1
            v = m[p+9]
            m[p+8] = v
            m[p+9] = 0
            m[p+7] = 1
            m[p+4] = 1
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 3
        v = m[p+3]
        m[p+2] += v*4
        m[p+2] += 1
        v = m[p+2]
        m[p+3] = v*4
        m[p+3] += 1
        v = m[p+3]
        m[p+2] = v
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+8] += 8
            v = m[p+8]
            m[p] = v
            m[p+1] -= 1
            m[p+1] += v
            v = m[p+1]
            m[p+8] = v
            m[p+8] = 0
            m[p+1] = 0
            m[p-1] = 0
        }
        m[p+2] += 4
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*9
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*9
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+5] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            v = m[p+5]
            m[p+12] += v
            m[p+8] += 2
            v = m[p+8]
            m[p+11] += v
            m[p+15] = 1
            m[p+8] = 0
            m[p+5] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+11]){
                m[p+8] += 1
                m[p+5] += 1
                while(m[p+12]){
                    m[p+12] -= 1
                    p -= 1
                }
                p += 2
            }
            while(m[p+9]){
                m[p+9] -= 1
                v = m[p+9]
                m[p+6] += v
                m[p+3] -= 1
                m[p+9] = 0
                m[p+13] -= 1
                p -= 2
            }
            v = m[p+12]
            m[p+5] += v
            m[p+8] = 8
            m[p+12] = 0
            m[p+14] += 1
            while(m[p+15]){
                m[p+14] -= 1
                p -= 1
            }
            while(m[p+14]){
                v = m[p+8]
                m[p] = v
                m[p+1] += v
                v = m[p+1]
                m[p+8] = v
                m[p+1] = 0
                m[p-1] = 0
                m[p+14] -= 1
                p -= 1
            }
            m[p+9] = 0
            p += 1
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+6]
            m[p+16] = v
            v = m[p+16]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+16] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*9
            m[p+9] = 0
            m[p+6] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*9
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+6] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+9] += 7
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 6
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 6
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 7
        v = m[p+3]
        m[p+2] += v*8
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+16]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+16] = v
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 7
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 7
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 1
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+16] += 1
            v = m[p+16]
            m[p+7] = v
            m[p+3] += v
            v = m[p+3]
            m[p+16] = v
            m[p+9] += 7
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 2
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 1
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 1
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 7
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 2
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+4]
            m[p+6] = v
            m[p+3] += v
            v = m[p+3]
            m[p+4] = v
            m[p+9] += 7
            v = m[p+9]
            m[p+8] += v*8
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            m[p+8] += 3
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 6
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 6
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 7
        v = m[p+3]
        m[p+2] += v*8
        m[p+2] += 3
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            v = m[p+16]
            m[p+4] = v
            m[p+3] += v
            v = m[p+3]
            m[p+16] = v
            v = m[p+6]
            m[p+7] = v
            m[p+3] = v
            v = m[p+3]
            m[p+6] = v
            m[p+9] += 6
            v = m[p+9]
            m[p+8] += v*10
            m[p+9] = 0
            m[p+3] = 0
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+8]){
                m[p+14] += 1
                while(m[p+21]){
                    p += 2
                }
                m[p+22] += 1
                while(m[p+19]){
                    p -= 2
                }
                m[p+8] -= 1
            }
            v = m[p+14]
            m[p+8] = v
            m[p+14] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+21] = 1
            while(m[p+21]){
                p -= 2
            }
            m[p+3] += 2
            v = m[p+3]
            m[p+10] = v
            m[p+10] = 0
            m[p+3] = 0
            m[p+2] = 2
            m[p+1] = 0
            p += 2
        }
        m[p+3] += 6
        v = m[p+3]
        m[p+2] += v*10
        m[p+3] = 0
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+16] -= 1
            v = m[p+16]
            m[p+6] = v
            m[p+16] = 0
            m[p+1] -= 1
            m[p-1] += 1
        }
        m[p+2] += 8
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+16] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p+14] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p-2] = 0
            m[p-3] = 0
            while(m[p+19]){
                p += 2
            }
            m[p+17] -= 1
            while(m[p+18]){
                while(m[p+15]){
                    p -= 2
                }
                m[p-4] += 1
                while(m[p+17]){
                    p += 2
                }
                m[p+18] -= 1
            }
            while(m[p+15]){
                p -= 2
            }
            m[p+4] = 0
            p -= 4
        }
        m[p+2] += 2
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            while(m[p+4]){
                m[p+14] += 1
                while(m[p+99]){
                    p += 2
                }
                m[p+99] = 1
                while(m[p+99]){
                    p -= 2
                }
                m[p+6] -= 1
                p += 2
            }
            v = m[p+14]
            m[p+4] = v
            m[p+14] = 0
            while(m[p+99]){
                p += 2
            }
            m[p+100] = 0
            while(m[p+97]){
                p -= 2
            }
            while(m[p+7]){
                m[p+14] += 1
                while(m[p+99]){
                    p += 2
                }
                m[p+100] += 1
                while(m[p+97]){
                    p -= 2
                }
                m[p+7] -= 1
            }
            v = m[p+14]
            m[p+7] = v
            m[p+14] = 0
            while(m[p+99]){
                p += 2
            }
            while(m[p+97]){
                m[p+97] -= 1
                p -= 2
            }
            m[p] = 0
            m[p-1] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p-2] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p+6] = 0
            p -= 2
        }
        m[p+2] += 1
        if(m[p-1]){
            v = m[p-1]
            m[p+1] -= v
            m[p+2] = 0
        }
        m[p-1] = 1
        m[p+1] += 1
        while(m[p+1]){
            v = m[p]
            m[p+1] -= 1
            m[p+1] += v
            m[p+2] -= v
            m[p] = 0
            while(m[p+2]){
                v = m[p+1]
                m[p] += v
                m[p+2] += v
                m[p+1] = 0
                m[p-1] -= 1
                m[p+2] = 0
            }
            m[p+1] = 0
        }
        v = m[p-1]
        m[p+1] = v
        m[p-1] = 0
        while(m[p+1]){
            m[p+1] -= 1
            m[p-1] += 1
            m[p+4] = 0
            while(m[p+7]){
                m[p+14] += 1
                while(m[p+99]){
                    p += 2
                }
                m[p+99] = 1
                while(m[p+99]){
                    p -= 2
                }
                m[p+9] -= 1
                p += 2
            }
            v = m[p+14]
            m[p+7] = v
            m[p+14] = 0
            while(m[p+99]){
                p += 2
            }
            while(m[p+100]){
                while(m[p+97]){
                    p -= 2
                }
                m[p+4] += 1
                while(m[p+99]){
                    p += 2
                }
                m[p+100] -= 1
                m[p+101] += 1
            }
            v = m[p+101]
            m[p+100] = v
            m[p+101] = 0
            while(m[p+97]){
                m[p+97] -= 1
                p -= 2
            }
            m[p] = 0
            m[p-1] = 0
            while(m[p+21]){
                p += 2
            }
            m[p+19] -= 1
            while(m[p+20]){
                while(m[p+17]){
                    p -= 2
                }
                m[p-2] += 1
                while(m[p+19]){
                    p += 2
                }
                m[p+20] -= 1
            }
            while(m[p+17]){
                p -= 2
            }
            m[p+6] = 0
            p -= 2
        }
        v = m[p-1]
        m[p+1] = v
        v = m[p+1]
        m[p-1] = v
        m[p+1] = 0
        p -= 1
    }
}

function getch(mov) {
    if (goteof) return
    if (!gotline) {
        gotline = getline line
        goteof = !gotline
        if (goteof) return
    }
    if (line == "") {
        gotline = 0
        m[p+mov] = 10
        return
    }
    if (!genord) {
        for(i=1; i<256; i++)
            ord_ch[sprintf("%c",i)] = i
        genord = 1
    }
    c = substr(line, 1, 1)
    line = substr(line, 2)
    m[p+mov] = ord_ch[c]
}
