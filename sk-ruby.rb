#!/usr/bin/ruby
def run(in_, out)
m=[0]*0x10100;p=127;
    m[p]=(m[p]+1)%0x100
    p+=1
    m[p]=(m[p]+1)%0x100
    while m[p]!=0
        p-=1
        while m[p]!=0
            p+=1
            m[p]=(m[p]-1)%0x100
            end
        p+=1
        while m[p]!=0
            p+=1
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=101
            m[p]=(m[p]+2)%0x100
            p-=92
            m[p]=(m[p]+9)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=5
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+9)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=9
            m[p]=(m[p]+12)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=6
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+12)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=1
            p+=1
            m[p]=(m[p]+13)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+13)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=1
            p+=3
            m[p]=0
            p+=1
            m[p]=(m[p]+14)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+14)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=9
            m[p]=(m[p]+9)%0x100
            p-=3
            while m[p]!=0
                p-=6
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=3
                m[p]=0
                end
            p+=3
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=9
            while m[p]!=0
                p+=13
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=13
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+10)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            while m[p]!=0
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]-1)%0x100
                end
            p+=16
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=13
            m[p]=(m[p]+2)%0x100
            p+=1
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            m[p]=(m[p]-2)%0x100
            p+=3
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            p-=3
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=3
                o=p-4                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=4
            o=p+4            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]-1)%0x100
            p+=4
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            p-=3
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=3
                o=p-4                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=4
            o=p+4            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            out.write(""<<m[p])
            m[p]=0
            p-=3
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=10
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]+1)%0x100
            p+=2
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=10
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            out.write(""<<m[p])
            m[p]=0
            p-=3
            m[p]=0
            p+=16
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]+1)%0x100
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=20
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+8)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*10)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            out.write(""<<m[p])
            m[p]=0
            p-=3
            m[p]=0
            p+=16
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]+1)%0x100
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=20
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            out.write(""<<m[p])
            m[p]=0
            p-=3
            m[p]=0
            p+=16
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]+1)%0x100
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=20
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=0
            p+=2
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=(m[p]+2)%0x100
            p+=3
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*5)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=(m[p]+1)%0x100
            p+=4
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=85
                while m[p]!=0
                    p+=2
                    end
                m[p]=(m[p]+1)%0x100
                while m[p]!=0
                    p-=2
                    end
                p-=89
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=85
            while m[p]!=0
                p+=2
                end
            p+=1
            m[p]=0
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=93
            while m[p]!=0
                p+=10
                m[p]=(m[p]+1)%0x100
                p+=85
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=93
                m[p]=(m[p]-1)%0x100
                end
            p+=10
            o=p-10            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=85
            while m[p]!=0
                p+=2
                end
            p-=2
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=2
                end
            p-=89
            m[p]=0
            p-=4
            m[p]=(m[p]-3)%0x100
            p+=2
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=5
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+5)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            while m[p]!=0
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]-1)%0x100
                end
            p+=16
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=14
            c=in_.getbyte();m[p]=c unless c==nil
            p+=1
            m[p]=0
            p+=3
            m[p]=(m[p]+8)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*10)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            p+=7
            m[p]=1
            p-=7
            o=p-3            ;m[o]=(m[o]+m[p]*255)%0x100
            o=p-5            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            while m[p]!=0
                p+=10
                m[p]=(m[p]-1)%0x100
                p-=10
                o=p+3                ;m[o]=(m[o]+m[p]*255)%0x100
                o=p-2                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=2
            o=p+5            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=11
            p+=7
            o=p-14            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=14
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            while m[p]!=0
                p-=3
                m[p]=0
                p+=1
                m[p]=0
                p+=8
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*5)%0x100
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=1
            p-=7
            o=p-3            ;m[o]=(m[o]+m[p]*255)%0x100
            o=p-5            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            while m[p]!=0
                p+=10
                m[p]=(m[p]-1)%0x100
                p-=10
                o=p+3                ;m[o]=(m[o]+m[p]*255)%0x100
                o=p-2                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=2
            o=p+5            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=1
            p+=7
            while m[p]!=0
                p-=7
                o=p-2                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-5                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=5
                o=p+5                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=10
                m[p]=(m[p]+1)%0x100
                p+=1
                end
            p-=1
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p+=1
                end
            p-=6
            m[p]=11
            p+=7
            o=p-14            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=14
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            while m[p]!=0
                p-=3
                m[p]=0
                p+=1
                m[p]=0
                p+=8
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=(m[p]+2)%0x100
            p+=3
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=3
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=5
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=5
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]+1)%0x100
            p-=1
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]-1)%0x100
            p+=1
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            c=in_.getbyte();m[p]=c unless c==nil
            m[p]=0
            p+=16
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]+1)%0x100
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=20
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+11)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=10
            m[p]=(m[p]+4)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=3
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+4)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p+=16
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=14
                m[p]=(m[p]+1)%0x100
                p+=16
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=20
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+6)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            while m[p]!=0
                p+=5
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=3
                m[p]=(m[p]-1)%0x100
                end
            p+=5
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=12
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+7)%0x100
            p-=3
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=3
                o=p-4                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=4
            o=p+4            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=0
            p-=12
            o=p+12            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+7)%0x100
            p+=8
            while m[p]!=0
                p-=14
                m[p]=(m[p]-1)%0x100
                p+=14
                o=p-15                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=15
            o=p+15            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=(m[p]+2)%0x100
            p-=9
            m[p]=0
            p+=9
            o=p-9            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=18
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=0
            p+=2
            o=p-9            ;m[o]=(m[o]+m[p]*255)%0x100
            o=p-14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=9
            while m[p]!=0
                p+=7
                m[p]=(m[p]+1)%0x100
                p-=7
                o=p+9                ;m[o]=(m[o]+m[p]*255)%0x100
                o=p-5                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=5
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+5            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=7
            p+=7
            o=p-14            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=14
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            while m[p]!=0
                p-=3
                m[p]=0
                p+=1
                m[p]=0
                p+=8
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]+1)%0x100
            p+=2
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=0
            p-=12
            o=p+12            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            m[p]=0
            p+=10
            o=p-10            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=1
            p+=3
            m[p]=1
            p+=2
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*6)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+4)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*6)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+4)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=9
            m[p]=(m[p]+8)%0x100
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+7)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+4)%0x100
            p-=3
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=3
                o=p-4                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=4
            o=p+4            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=0
            p-=12
            o=p+12            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+4)%0x100
            p+=8
            while m[p]!=0
                p-=14
                m[p]=(m[p]-1)%0x100
                p+=14
                o=p-15                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=15
            o=p+15            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=0
            p+=9
            o=p-9            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=18
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+4)%0x100
            p+=9
            while m[p]!=0
                p-=15
                m[p]=(m[p]-1)%0x100
                p+=15
                o=p-16                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=16
            o=p+16            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=3
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                end
            p+=6
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=18
            m[p]=(m[p]+2)%0x100
            p-=10
            m[p]=0
            p+=10
            o=p-10            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=14
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+4)%0x100
            p-=3
            while m[p]!=0
                p-=6
                m[p]=0
                p+=9
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=4
                o=p-4                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                end
            p-=4
            o=p+4            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=(m[p]+1)%0x100
            p+=1
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+4)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+4)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=19
            m[p]=0
            p-=14
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            m[p]=(m[p]-1)%0x100
            p+=1
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+5)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+5)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=0
            p-=12
            o=p+12            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=2
            m[p]=(m[p]+1)%0x100
            p+=11
            m[p]=(m[p]+1)%0x100
            p-=9
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=21
            m[p]=0
            p-=16
            o=p+16            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p+=9
            o=p-9            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=18
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            m[p]=2
            p+=3
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=3
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=2
            p+=3
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=3
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+4)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+4)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=0
            p+=2
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p+=10
            o=p-10            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=14
            o=p+14            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*7)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+5)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*7)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+5)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=(m[p]+1)%0x100
            p-=2
            m[p]=0
            p+=2
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p+=11
            o=p-11            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-15            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=15
            o=p+15            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=2
            p+=3
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=3
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]+1)%0x100
            p-=1
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=(m[p]-1)%0x100
            p-=1
            m[p]=0
            p+=2
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p+=13
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-17            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=17
            o=p+17            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=(m[p]+1)%0x100
            p-=2
            m[p]=0
            p+=2
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p+=11
            o=p-11            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-15            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=15
            o=p+15            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*4)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            o=p+1            ;m[o]=(m[o]+m[p]*4)%0x100
            m[p]=0
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*4)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        o=p+1        ;m[o]=(m[o]+m[p]*4)%0x100
        m[p]=0
        p+=1
        o=p-1        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=1
            p+=3
            m[p]=1
            p+=2
            m[p]=(m[p]+3)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*4)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            o=p+1            ;m[o]=(m[o]+m[p]*4)%0x100
            m[p]=0
            p+=1
            m[p]=(m[p]+1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+3)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*4)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        o=p+1        ;m[o]=(m[o]+m[p]*4)%0x100
        m[p]=0
        p+=1
        m[p]=(m[p]+1)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=9
            m[p]=(m[p]+8)%0x100
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+4)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=8
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*9)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*9)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=6
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=5
            m[p]=(m[p]+2)%0x100
            p+=7
            m[p]=1
            p-=10
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=3
            while m[p]!=0
                p-=6
                m[p]=(m[p]+1)%0x100
                p+=3
                m[p]=(m[p]+1)%0x100
                p+=4
                while m[p]!=0
                    m[p]=(m[p]-1)%0x100
                    p-=1
                    end
                p+=1
                end
            p-=2
            while m[p]!=0
                p+=4
                m[p]=(m[p]-1)%0x100
                p-=10
                m[p]=(m[p]-1)%0x100
                p+=6
                m[p]=(m[p]-1)%0x100
                o=p-3                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=2
                end
            p+=3
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=4
            m[p]=8
            p+=6
            m[p]=(m[p]+1)%0x100
            p+=1
            while m[p]!=0
                p-=1
                m[p]=(m[p]-1)%0x100
                end
            p-=1
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=15
                m[p]=0
                p+=1
                m[p]=0
                p+=8
                o=p-8                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p-7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p-=7
                o=p+7                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=12
                end
            p-=5
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=0
            p-=10
            o=p+10            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=1
            m[p]=0
            p+=9
            o=p-9            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*9)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*9)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+7)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=6
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+7)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=0
            p+=12
            o=p-12            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+7)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+7)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=(m[p]+1)%0x100
            p-=9
            m[p]=0
            p+=9
            o=p-9            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+7)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+2)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=1
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+7)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=7
            m[p]=0
            p-=2
            o=p+2            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+7)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*8)%0x100
            m[p]=0
            p-=1
            m[p]=(m[p]+3)%0x100
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=6
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+7)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*8)%0x100
        m[p]=0
        p-=1
        m[p]=(m[p]+3)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=0
            p+=12
            o=p-12            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=13
            o=p+13            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=4
            m[p]=0
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=3
            o=p+3            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=6
            m[p]=(m[p]+6)%0x100
            o=p-1            ;m[o]=(m[o]+m[p]*10)%0x100
            m[p]=0
            p-=1
            while m[p]!=0
                p+=6
                m[p]=(m[p]+1)%0x100
                p+=7
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=11
                m[p]=(m[p]-1)%0x100
                end
            p+=6
            o=p-6            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            while m[p]!=0
                p+=2
                end
            m[p]=(m[p]+1)%0x100
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=2
            p-=9
            m[p]=0
            p+=1
            m[p]=0
            p+=8
            o=p-8            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=7
            o=p+7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=7
            m[p]=0
            p-=7
            end
        p+=2
        m[p]=(m[p]+6)%0x100
        o=p-1        ;m[o]=(m[o]+m[p]*10)%0x100
        m[p]=0
        p-=4
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=(m[p]-1)%0x100
            p-=10
            m[p]=0
            p+=10
            o=p-10            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=15
            end
        p+=1
        m[p]=(m[p]+8)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=17
            m[p]=0
            p+=5
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=3
                m[p]=(m[p]+1)%0x100
                p+=5
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=20
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+2)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            while m[p]!=0
                p+=10
                m[p]=(m[p]+1)%0x100
                p+=85
                while m[p]!=0
                    p+=2
                    end
                m[p]=(m[p]+1)%0x100
                while m[p]!=0
                    p-=2
                    end
                p-=93
                m[p]=(m[p]-1)%0x100
                end
            p+=10
            o=p-10            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=85
            while m[p]!=0
                p+=2
                end
            p+=1
            m[p]=0
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=90
            while m[p]!=0
                p+=7
                m[p]=(m[p]+1)%0x100
                p+=85
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]+1)%0x100
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=90
                m[p]=(m[p]-1)%0x100
                end
            p+=7
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=85
            while m[p]!=0
                p+=2
                end
            p-=2
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=2
                end
            p-=98
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p+=1
        m[p]=(m[p]+1)%0x100
        p-=3
        while m[p]!=0
            p+=3
            m[p]=0
            p-=1
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]-1)%0x100
            end
        m[p]=(m[p]+1)%0x100
        p+=2
        m[p]=(m[p]+1)%0x100
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=1
            o=p+1            ;m[o]=(m[o]+m[p]*1)%0x100
            o=p+2            ;m[o]=(m[o]+m[p]*255)%0x100
            m[p]=0
            p+=2
            while m[p]!=0
                p-=3
                m[p]=(m[p]-1)%0x100
                p+=2
                o=p-1                ;m[o]=(m[o]+m[p]*1)%0x100
                o=p+1                ;m[o]=(m[o]+m[p]*1)%0x100
                m[p]=0
                p+=1
                m[p]=0
                end
            p-=1
            m[p]=0
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        while m[p]!=0
            m[p]=(m[p]-1)%0x100
            p-=2
            m[p]=(m[p]+1)%0x100
            p+=5
            m[p]=0
            p+=3
            while m[p]!=0
                p+=7
                m[p]=(m[p]+1)%0x100
                p+=85
                while m[p]!=0
                    p+=2
                    end
                m[p]=(m[p]+1)%0x100
                while m[p]!=0
                    p-=2
                    end
                p-=90
                m[p]=(m[p]-1)%0x100
                end
            p+=7
            o=p-7            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p+=85
            while m[p]!=0
                p+=2
                end
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=93
                m[p]=(m[p]+1)%0x100
                p+=95
                while m[p]!=0
                    p+=2
                    end
                p+=2
                m[p]=(m[p]+1)%0x100
                p-=1
                m[p]=(m[p]-1)%0x100
                end
            p+=1
            o=p-1            ;m[o]=(m[o]+m[p]*1)%0x100
            m[p]=0
            p-=4
            while m[p]!=0
                m[p]=(m[p]-1)%0x100
                p-=2
                end
            p-=98
            m[p]=0
            p+=1
            m[p]=0
            p+=21
            while m[p]!=0
                p+=2
                end
            p-=2
            m[p]=(m[p]-1)%0x100
            p+=1
            while m[p]!=0
                p-=3
                while m[p]!=0
                    p-=2
                    end
                p-=19
                m[p]=(m[p]+1)%0x100
                p+=21
                while m[p]!=0
                    p+=2
                    end
                p+=1
                m[p]=(m[p]-1)%0x100
                end
            p-=3
            while m[p]!=0
                p-=2
                end
            p-=11
            m[p]=0
            p-=7
            end
        p-=2
        o=p+2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p+=2
        o=p-2        ;m[o]=(m[o]+m[p]*1)%0x100
        m[p]=0
        p-=1
        end
end
run(STDIN, STDOUT)
