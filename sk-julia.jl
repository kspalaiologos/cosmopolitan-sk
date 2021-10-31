function bf4(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 9
    p += 92
    m[p] += 2
    p -= 92
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 5
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 5
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf22(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 8
    m[p] = 1
    p += 1
    m[p] += 13
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf31(m,p)
    p += 3
    v = m[p]
    p += 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    m[p] = 1
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 8
    m[p] = 0
    p += 1
    m[p] += 14
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf51(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 6
    while m[p] != 0
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] -= 1
    end
    p += 16
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 13
    m[p] += 2
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p += 5
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf65(m,p)
    p += 3
    v = m[p]
    p += 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 5
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 3
    m[p] -= 2
    p -= 3
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 6
    while m[p] != 0
        v = m[p]
        p -= 4
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 3
        m[p] = 0
    end
    p -= 4
    v = m[p]
    p += 4
    m[p] = v
    p -= 3
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf68(m,p)
    p += 8
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    m[p] -= 1
    p -= 4
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 6
    while m[p] != 0
        v = m[p]
        p -= 4
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 3
        m[p] = 0
    end
    p -= 4
    v = m[p]
    p += 4
    m[p] = v
    p -= 3
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf71(m,p)
    p += 8
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    if m[p] >= 0 && m[p] < 200000
        print(Char(m[p]))
    else
        print(Char(0xFFFD))
    end
    p -= 2
    v = m[p]
    p -= 1
    m[p] = v
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 7
    m[p] = 0
    p += 2
    m[p] = 18
    p += 1
    m[p] = 0
    p -= 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf80(m,p)
    p += 3
    v = m[p]
    p += 2
    m[p] = v
    p -= 3
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 5
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 10
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 10
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf89(m,p)
    p += 4
    m[p] += 1
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf98(m,p)
    p += 3
    v = m[p]
    p += 2
    m[p] = v
    p -= 3
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 5
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 10
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 10
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf107(m,p)
    p += 8
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 1
    if m[p] >= 0 && m[p] < 200000
        print(Char(m[p]))
    else
        print(Char(0xFFFD))
    end
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 4
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 10
    m[p] = 0
    p += 12
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] += 1
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 19
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf121(m,p)
    p += 8
    m[p] += 8
    v = m[p]
    p -= 1
    m[p] = m[p]+v*10
    m[p] += 3
    if m[p] >= 0 && m[p] < 200000
        print(Char(m[p]))
    else
        print(Char(0xFFFD))
    end
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 4
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 10
    m[p] = 0
    p += 12
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] += 1
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 19
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf135(m,p)
    p += 8
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    v = m[p]
    p += 1
    m[p] = v*5
    v = m[p]
    p -= 1
    m[p] = v
    if m[p] >= 0 && m[p] < 200000
        print(Char(m[p]))
    else
        print(Char(0xFFFD))
    end
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 4
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 10
    m[p] = 0
    p += 12
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] += 1
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 19
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf149(m,p)
    p += 8
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 2
    m[p] = 0
    p -= 6
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf158(m,p)
    p += 5
    v = m[p]
    p += 1
    m[p] = v
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 2
    m[p] += 2
    p -= 3
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf167(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 5
    m[p] += 1
    p += 4
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 85
        while m[p] != 0
            p += 2
        end
        m[p] = 1
        while m[p] != 0
            p -= 2
        end
        p -= 89
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 85
    while m[p] != 0
        p += 2
    end
    p += 1
    m[p] = 0
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 93
    while m[p] != 0
        p += 10
        m[p] += 1
        p += 85
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 93
        m[p] -= 1
    end
    p += 10
    v = m[p]
    p -= 10
    m[p] = v
    p += 10
    m[p] = 0
    p += 85
    while m[p] != 0
        p += 2
    end
    p -= 2
    while m[p] != 0
        m[p] -= 1
        p -= 2
    end
    p -= 93
    m[p] -= 3
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p -= 4
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 9
    m[p] = 0
    p += 13
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf186(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 6
    while m[p] != 0
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] -= 1
    end
    p += 16
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 14
    if !eof(stdin) ; m[p] = read(stdin, Char) ; end
    p += 4
    m[p] += 8
    v = m[p]
    p -= 1
    m[p] = m[p]+v*10
    m[p] += 3
    v = m[p]
    p -= 3
    m[p] = m[p]-v
    p -= 2
    m[p] = m[p]+v
    p += 3
    m[p] = 0
    p += 2
    m[p] = 0
    p += 1
    m[p] = 0
    p += 6
    m[p] = 1
    p -= 10
    while m[p] != 0
        v = m[p]
        p += 3
        m[p] = m[p]-v
        p -= 5
        m[p] = m[p]+v
        p += 2
        m[p] = 0
        p += 10
        m[p] -= 1
        p -= 10
    end
    p -= 2
    v = m[p]
    p += 5
    m[p] = m[p]+v
    p -= 3
    m[p] = v
    p += 10
    v = m[p]
    p -= 14
    m[p] = m[p]+v
    p += 1
    m[p] = m[p]+v
    p -= 1
    v = m[p]
    p += 14
    m[p] = v
    p -= 7
    m[p] = 11
    p -= 5
    m[p] = 0
    p -= 2
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] = 0
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf194(m,p)
    p += 8
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    v = m[p]
    p += 1
    m[p] = v*5
    v = m[p]
    p -= 1
    m[p] = v
    v = m[p]
    p -= 3
    m[p] = m[p]-v
    p -= 2
    m[p] = m[p]+v
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] = 0
    p += 1
    m[p] = 0
    p += 6
    m[p] = 1
    p -= 10
    while m[p] != 0
        v = m[p]
        p += 3
        m[p] = m[p]-v
        p -= 5
        m[p] = m[p]+v
        p += 2
        m[p] = 0
        p += 10
        m[p] -= 1
        p -= 10
    end
    p -= 2
    v = m[p]
    p += 5
    m[p] = m[p]+v
    p -= 3
    m[p] = v
    p -= 2
    m[p] = 0
    p += 5
    m[p] = 1
    p += 7
    while m[p] != 0
        p -= 7
        v = m[p]
        p -= 2
        m[p] = m[p]+v
        p -= 3
        m[p] = m[p]+v
        v = m[p]
        p += 5
        m[p] = v
        p -= 5
        m[p] = 0
        p += 10
        m[p] += 1
        p += 1
    end
    p -= 1
    while m[p] != 0
        m[p] -= 1
        p += 1
    end
    p += 1
    v = m[p]
    p -= 14
    m[p] = m[p]+v
    p += 1
    m[p] = m[p]+v
    p -= 1
    v = m[p]
    p += 14
    m[p] = v
    p -= 7
    m[p] = 11
    p -= 7
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] = 0
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf199(m,p)
    p += 8
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 3
    m[p] += 2
    p -= 5
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 3
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 3
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf208(m,p)
    p += 5
    v = m[p]
    p -= 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 5
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 5
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf217(m,p)
    p += 4
    v = m[p]
    p -= 1
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf226(m,p)
    p += 8
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 8
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 5
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 5
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf235(m,p)
    p += 4
    m[p] += 1
    v = m[p]
    p -= 1
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf244(m,p)
    p += 4
    m[p] -= 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 1
    m[p] = 0
    if !eof(stdin) ; m[p] = read(stdin, Char) ; end
    m[p] = 0
    p -= 4
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] += 1
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 19
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf258(m,p)
    p += 8
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 8
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 3
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 3
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf267(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 6
    m[p] = 0
    p += 16
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 14
        m[p] += 1
        p += 16
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 19
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf281(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 17
    while m[p] != 0
        p += 5
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 3
        m[p] -= 1
    end
    p += 5
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 13
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p += 5
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf295(m,p)
    p += 3
    v = m[p]
    p += 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 7
    p -= 3
    while m[p] != 0
        v = m[p]
        p -= 4
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 3
        m[p] = 0
    end
    p -= 4
    v = m[p]
    p += 4
    m[p] = v
    p -= 3
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf298(m,p)
    p += 4
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf307(m,p)
    p += 3
    v = m[p]
    p += 12
    m[p] = v
    p -= 13
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 7
    p += 8
    while m[p] != 0
        v = m[p]
        p -= 15
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 14
        m[p] = 0
    end
    p -= 15
    v = m[p]
    p += 15
    m[p] = v
    p -= 14
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf310(m,p)
    p += 15
    m[p] += 2
    v = m[p]
    p -= 9
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 13
    m[p] = v
    p -= 7
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf319(m,p)
    p += 3
    v = m[p]
    p += 13
    m[p] = v
    p -= 14
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 13
    v = m[p]
    p -= 9
    m[p] += 1
    m[p] = m[p]-v
    p -= 5
    m[p] = v
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 16
    m[p] = 0
    p += 2
    m[p] = 0
    p -= 9
    while m[p] != 0
        v = m[p]
        p += 9
        m[p] = m[p]-v
        p -= 14
        m[p] = m[p]+v
        p += 5
        m[p] = 0
        p += 7
        m[p] += 1
        p -= 7
    end
    p -= 5
    v = m[p]
    p += 14
    m[p] = m[p]+v
    p -= 9
    m[p] = v
    p += 7
    v = m[p]
    p -= 14
    m[p] = m[p]+v
    p += 1
    m[p] = m[p]+v
    p -= 1
    v = m[p]
    p += 14
    m[p] = v
    p -= 7
    m[p] = 7
    p -= 5
    m[p] = 0
    p -= 2
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] = 0
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf322(m,p)
    p += 4
    m[p] += 1
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf331(m,p)
    p += 3
    v = m[p]
    p += 12
    m[p] = v
    p -= 13
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 12
    v = m[p]
    p -= 10
    m[p] = v
    p -= 3
    m[p] = v
    v = m[p]
    p += 13
    m[p] = v
    p -= 7
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 2
    m[p] = 1
    p -= 3
    m[p] = 1
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 4
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf344(m,p)
    p += 5
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf353(m,p)
    p += 3
    v = m[p]
    p += 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 4
    p -= 3
    while m[p] != 0
        v = m[p]
        p -= 4
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 3
        m[p] = 0
    end
    p -= 4
    v = m[p]
    p += 4
    m[p] = v
    p -= 3
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf356(m,p)
    p += 4
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf365(m,p)
    p += 3
    v = m[p]
    p += 12
    m[p] = v
    p -= 13
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 4
    p += 8
    while m[p] != 0
        v = m[p]
        p -= 15
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 14
        m[p] = 0
    end
    p -= 15
    v = m[p]
    p += 15
    m[p] = v
    p -= 14
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf368(m,p)
    p += 15
    v = m[p]
    p -= 9
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 13
    m[p] = v
    p -= 7
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf377(m,p)
    p += 3
    v = m[p]
    p += 13
    m[p] = v
    p -= 14
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 4
    p += 9
    while m[p] != 0
        v = m[p]
        p -= 16
        m[p] = m[p]+v
        p += 1
        m[p] -= 1
        p += 15
        m[p] = 0
    end
    p -= 16
    v = m[p]
    p += 16
    m[p] = v
    p -= 15
    m[p] += 1
    p -= 1
    m[p] = 0
    p += 1
    while m[p] != 0
        p += 6
        v = m[p]
        p -= 8
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 6
        m[p] -= 1
        p -= 1
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 3
    end
    p += 6
    m[p] = 0
    p -= 7
    p
end

function bf380(m,p)
    p += 16
    m[p] += 2
    v = m[p]
    p -= 10
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 14
    m[p] = v
    p -= 8
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf391(m,p)
    p += 5
    m[p] += 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 4
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf400(m,p)
    p += 3
    v = m[p]
    p += 14
    m[p] = v
    p -= 15
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 2
    m[p] -= 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf409(m,p)
    p += 3
    v = m[p]
    p += 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 1
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf418(m,p)
    p += 3
    v = m[p]
    p += 12
    m[p] = v
    p -= 13
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 1
    m[p] += 1
    v = m[p]
    p += 2
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p += 7
    m[p] += 1
    p -= 13
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf427(m,p)
    p += 3
    v = m[p]
    p += 16
    m[p] = v
    p -= 17
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 12
    v = m[p]
    p -= 9
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 13
    m[p] = v
    p -= 7
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf436(m,p)
    p += 3
    v = m[p]
    p += 13
    m[p] = v
    p -= 14
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 5
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 3
    m[p] = 2
    p -= 3
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 3
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 3
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf445(m,p)
    p += 5
    v = m[p]
    p -= 1
    m[p] = v
    p += 4
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 3
    m[p] = 2
    p -= 5
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 3
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 3
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf454(m,p)
    p += 4
    v = m[p]
    p -= 1
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 4
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf463(m,p)
    p += 5
    v = m[p]
    p -= 2
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 11
    v = m[p]
    p -= 10
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 14
    m[p] = v
    p -= 8
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 5
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf472(m,p)
    p += 5
    m[p] += 1
    v = m[p]
    p -= 2
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 12
    v = m[p]
    p -= 11
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 15
    m[p] = v
    p -= 9
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf481(m,p)
    p += 8
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 3
    m[p] = 2
    p -= 5
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 3
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 3
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf490(m,p)
    p += 4
    m[p] += 1
    v = m[p]
    p -= 1
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 1
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf499(m,p)
    p += 5
    v = m[p]
    p -= 2
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 14
    v = m[p]
    p -= 13
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 17
    m[p] = v
    p -= 11
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 4
    m[p] -= 1
    p -= 2
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf508(m,p)
    p += 5
    m[p] += 1
    v = m[p]
    p -= 2
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 12
    v = m[p]
    p -= 11
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 15
    m[p] = v
    p -= 9
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*4
    m[p] += 1
    v = m[p]
    p += 1
    m[p] = v*4
    v = m[p]
    p -= 1
    m[p] = v
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf517(m,p)
    p += 4
    v = m[p]
    p += 1
    m[p] = v
    p -= 3
    m[p] = m[p]+v
    v = m[p]
    p += 2
    m[p] = v
    p += 4
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*4
    m[p] += 1
    v = m[p]
    p += 1
    m[p] = v*4
    m[p] += 1
    v = m[p]
    p -= 1
    m[p] = v
    p += 1
    m[p] = 0
    p -= 2
    m[p] = 1
    p -= 3
    m[p] = 1
    p -= 1
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf530(m,p)
    p += 5
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*9
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf539(m,p)
    p += 3
    v = m[p]
    p += 1
    m[p] = v
    p -= 2
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 1
    v = m[p]
    p += 7
    m[p] = m[p]+v
    p -= 4
    m[p] += 2
    v = m[p]
    p += 3
    m[p] = m[p]+v
    p += 4
    m[p] = 1
    p -= 7
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 2
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 12
    while m[p] != 0
        p -= 3
        m[p] += 1
        p -= 3
        m[p] += 1
        p += 7
        while m[p] != 0
            m[p] -= 1
            p -= 1
        end
        p += 1
    end
    p -= 2
    while m[p] != 0
        m[p] -= 1
        v = m[p]
        p -= 3
        m[p] = m[p]+v
        p -= 3
        m[p] -= 1
        p += 6
        m[p] = 0
        p += 4
        m[p] -= 1
        p -= 6
    end
    p += 3
    v = m[p]
    p -= 7
    m[p] = m[p]+v
    p += 3
    m[p] = 8
    p += 4
    m[p] = 0
    p += 2
    m[p] += 1
    p += 1
    while m[p] != 0
        p -= 1
        m[p] -= 1
    end
    p -= 1
    while m[p] != 0
        p -= 6
        v = m[p]
        p -= 8
        m[p] = v
        p += 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        p -= 7
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 15
        m[p] -= 1
        p -= 1
    end
    p -= 5
    m[p] = 0
    p -= 7
    p
end

function bf545(m,p)
    p += 5
    v = m[p]
    p += 10
    m[p] = v
    v = m[p]
    p -= 9
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 13
    m[p] = v
    p -= 7
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*9
    p += 1
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 3
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf554(m,p)
    p += 3
    v = m[p]
    p += 2
    m[p] = v
    p -= 3
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 5
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 6
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 6
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf563(m,p)
    p += 15
    v = m[p]
    p -= 12
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 13
    m[p] = v
    p -= 10
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 1
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf572(m,p)
    p += 15
    m[p] += 1
    v = m[p]
    p -= 9
    m[p] = v
    p -= 4
    m[p] = m[p]+v
    v = m[p]
    p += 13
    m[p] = v
    p -= 7
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 2
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 1
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 1
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf581(m,p)
    p += 3
    v = m[p]
    p += 2
    m[p] = v
    p -= 3
    m[p] = m[p]+v
    v = m[p]
    p += 1
    m[p] = v
    p += 5
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    m[p] += 3
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 6
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 6
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf590(m,p)
    p += 15
    v = m[p]
    p -= 12
    m[p] = v
    p -= 1
    m[p] = m[p]+v
    v = m[p]
    p += 13
    m[p] = v
    p -= 10
    v = m[p]
    p += 1
    m[p] = v
    p -= 4
    m[p] = v
    v = m[p]
    p += 3
    m[p] = v
    p += 3
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*10
    p += 1
    m[p] = 0
    p -= 6
    m[p] = 0
    p -= 2
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 9
    while m[p] != 0
        p += 6
        m[p] += 1
        p += 7
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] -= 1
    end
    p += 6
    v = m[p]
    p -= 6
    m[p] = v
    p += 6
    m[p] = 0
    p += 7
    while m[p] != 0
        p += 2
    end
    m[p] = 1
    while m[p] != 0
        p -= 2
    end
    p -= 18
    m[p] += 2
    v = m[p]
    p += 7
    m[p] = v
    m[p] = 0
    p -= 7
    m[p] = 0
    p -= 1
    m[p] = 2
    p -= 1
    m[p] = 0
    p += 2
    p
end

function bf603(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 17
    m[p] = 0
    p += 5
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 3
        m[p] += 1
        p += 5
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 19
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf617(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 5
    while m[p] != 0
        p += 10
        m[p] += 1
        p += 85
        while m[p] != 0
            p += 2
        end
        m[p] = 1
        while m[p] != 0
            p -= 2
        end
        p -= 93
        m[p] -= 1
    end
    p += 10
    v = m[p]
    p -= 10
    m[p] = v
    p += 10
    m[p] = 0
    p += 85
    while m[p] != 0
        p += 2
    end
    p += 1
    m[p] = 0
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 90
    while m[p] != 0
        p += 7
        m[p] += 1
        p += 85
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] += 1
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 90
        m[p] -= 1
    end
    p += 7
    v = m[p]
    p -= 7
    m[p] = v
    p += 7
    m[p] = 0
    p += 85
    while m[p] != 0
        p += 2
    end
    p -= 2
    while m[p] != 0
        m[p] -= 1
        p -= 2
    end
    p -= 97
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf636(m,p)
    m[p] -= 1
    p -= 2
    m[p] += 1
    p += 5
    m[p] = 0
    p += 3
    while m[p] != 0
        p += 7
        m[p] += 1
        p += 85
        while m[p] != 0
            p += 2
        end
        m[p] = 1
        while m[p] != 0
            p -= 2
        end
        p -= 90
        m[p] -= 1
    end
    p += 7
    v = m[p]
    p -= 7
    m[p] = v
    p += 7
    m[p] = 0
    p += 85
    while m[p] != 0
        p += 2
    end
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 93
        m[p] += 1
        p += 95
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
        p += 1
        m[p] += 1
        p -= 1
    end
    p += 1
    v = m[p]
    p -= 1
    m[p] = v
    p += 1
    m[p] = 0
    p -= 4
    while m[p] != 0
        m[p] -= 1
        p -= 2
    end
    p -= 97
    m[p] = 0
    p -= 1
    m[p] = 0
    p += 22
    while m[p] != 0
        p += 2
    end
    p -= 2
    m[p] -= 1
    p += 1
    while m[p] != 0
        p -= 3
        while m[p] != 0
            p -= 2
        end
        p -= 19
        m[p] += 1
        p += 21
        while m[p] != 0
            p += 2
        end
        p += 1
        m[p] -= 1
    end
    p -= 3
    while m[p] != 0
        p -= 2
    end
    p -= 11
    m[p] = 0
    p -= 7
    p
end

function bf1(m,p)
    p -= 1
    while m[p] != 0
        p += 1
        m[p] -= 1
    end
    p += 1
    while m[p] != 0
        p += 1
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf4(m,p)
    end
    p += 1
    m[p] += 9
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        m[p] -= 1
        p -= 2
        m[p] += 1
        p += 9
        m[p] += 12
        while m[p] != 0
            p += 6
            m[p] += 1
            p += 7
            while m[p] != 0
                p += 2
            end
            p += 1
            m[p] += 1
            p -= 3
            while m[p] != 0
                p -= 2
            end
            p -= 11
            m[p] -= 1
        end
        p += 6
        v = m[p]
        p -= 6
        m[p] = v
        p += 6
        m[p] = 0
        p += 7
        while m[p] != 0
            p += 2
        end
        m[p] = 1
        while m[p] != 0
            p -= 2
        end
        p -= 18
        m[p] += 6
        v = m[p]
        p += 7
        m[p] = v
        m[p] = 0
        p -= 7
        m[p] = 0
        p -= 1
        m[p] = 6
        p -= 1
        m[p] = 0
        p += 2
    end
    p += 1
    m[p] += 12
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf22(m,p)
    end
    p += 1
    m[p] += 13
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf31(m,p)
    end
    p += 1
    m[p] += 14
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        m[p] -= 1
        p -= 2
        m[p] += 1
        p += 9
        m[p] += 9
        p -= 3
        while m[p] != 0
            p += 3
            v = m[p]
            p -= 8
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p += 6
            m[p] = 0
            p += 3
            m[p] = 0
            p -= 3
        end
        p += 3
        m[p] = 0
        p -= 7
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        m[p] -= 1
        p -= 2
        m[p] += 1
        p += 9
        while m[p] != 0
            p += 13
            while m[p] != 0
                p += 2
            end
            p += 1
            m[p] += 1
            p -= 3
            while m[p] != 0
                p -= 2
            end
            p -= 11
            m[p] -= 1
        end
        p += 13
        while m[p] != 0
            p += 2
        end
        m[p] = 1
        while m[p] != 0
            p -= 2
        end
        p -= 11
        m[p] = 0
        p -= 7
    end
    p += 1
    m[p] += 10
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf51(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf65(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf68(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf71(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf80(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf89(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf98(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf107(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf121(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf135(m,p)
    end
    p += 1
    m[p] += 3
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf149(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf158(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*5
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf167(m,p)
    end
    p += 1
    m[p] += 5
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf186(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf194(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf199(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf208(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf217(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf226(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf235(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf244(m,p)
    end
    p += 1
    m[p] += 11
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf258(m,p)
    end
    p += 2
    m[p] += 4
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf267(m,p)
    end
    p += 1
    m[p] += 6
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf281(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf295(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf298(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf307(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf310(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf319(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf322(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf331(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*6
    m[p] += 4
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p += 7
        m[p] += 8
        v = m[p]
        p -= 8
        m[p] = v
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        m[p] = 0
        p -= 7
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 2
    end
    p += 1
    m[p] += 7
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf344(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf353(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf356(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf365(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf368(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf377(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf380(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p += 3
        v = m[p]
        p += 1
        m[p] = v
        p -= 2
        m[p] = m[p]+v
        v = m[p]
        p += 1
        m[p] = v
        p -= 1
        m[p] = 0
        p -= 2
        m[p] -= 1
        p -= 2
        m[p] += 1
        p += 9
        m[p] += 4
        p -= 3
        while m[p] != 0
            p += 3
            v = m[p]
            p -= 8
            m[p] = m[p]+v
            p += 1
            m[p] = m[p]+v
            v = m[p]
            p += 7
            m[p] = v
            p -= 3
            v = m[p]
            p -= 4
            m[p] = v
            p -= 2
            m[p] = 0
            p += 6
            m[p] = 0
        end
        p -= 4
        v = m[p]
        p += 4
        m[p] = v
        p += 3
        m[p] = 0
        p -= 7
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf391(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 4
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf400(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf409(m,p)
    end
    p += 2
    m[p] += 5
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf418(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf427(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf436(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf445(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf454(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 4
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf463(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*7
    m[p] += 5
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf472(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf481(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf490(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf499(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf508(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*4
    m[p] += 1
    v = m[p]
    p += 1
    m[p] = v*4
    v = m[p]
    p -= 1
    m[p] = v
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf517(m,p)
    end
    p += 2
    m[p] += 3
    v = m[p]
    p -= 1
    m[p] = m[p]+v*4
    m[p] += 1
    v = m[p]
    p += 1
    m[p] = v*4
    m[p] += 1
    v = m[p]
    p -= 1
    m[p] = v
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p += 7
        m[p] += 8
        v = m[p]
        p -= 8
        m[p] = v
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        v = m[p]
        p += 7
        m[p] = v
        m[p] = 0
        p -= 7
        m[p] = 0
        p -= 2
        m[p] = 0
        p += 2
    end
    p += 1
    m[p] += 4
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf530(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*9
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf539(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf545(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*9
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf554(m,p)
    end
    p += 2
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf563(m,p)
    end
    p += 2
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 1
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf572(m,p)
    end
    p += 2
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 2
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf581(m,p)
    end
    p += 2
    m[p] += 7
    v = m[p]
    p -= 1
    m[p] = m[p]+v*8
    m[p] += 3
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf590(m,p)
    end
    p += 2
    m[p] += 6
    v = m[p]
    p -= 1
    m[p] = m[p]+v*10
    p += 1
    m[p] = 0
    p -= 4
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p += 15
        m[p] -= 1
        v = m[p]
        p -= 10
        m[p] = v
        p += 10
        m[p] = 0
        p -= 15
        m[p] -= 1
        p -= 2
        m[p] += 1
        p += 2
    end
    p += 1
    m[p] += 8
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf603(m,p)
    end
    p += 1
    m[p] += 2
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf617(m,p)
    end
    p += 1
    m[p] += 1
    p -= 3
    if m[p] != 0
        v = m[p]
        p += 2
        m[p] = m[p]-v
        p += 1
        m[p] = 0
        p -= 3
    end
    m[p] = 1
    p += 2
    m[p] += 1
    while m[p] != 0
        p -= 1
        v = m[p]
        p += 1
        m[p] -= 1
        m[p] = m[p]+v
        p += 1
        m[p] = m[p]-v
        p -= 2
        m[p] = 0
        p += 2
        while m[p] != 0
            p -= 1
            v = m[p]
            p -= 1
            m[p] = m[p]+v
            p += 2
            m[p] = m[p]+v
            p -= 1
            m[p] = 0
            p -= 2
            m[p] -= 1
            p += 3
            m[p] = 0
        end
        p -= 1
        m[p] = 0
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    p -= 2
    m[p] = 0
    p += 2
    while m[p] != 0
        p = bf636(m,p)
    end
    p -= 2
    v = m[p]
    p += 2
    m[p] = v
    v = m[p]
    p -= 2
    m[p] = v
    p += 2
    m[p] = 0
    p -= 1
    p
end

function brainfuck(m,p)
    m[p] = 1
    p += 1
    m[p] = 1
    while m[p] != 0
        p = bf1(m,p)
    end
    p
end

brainfuck(zeros(Int,1048832), 256)
