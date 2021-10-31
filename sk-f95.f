PROGRAM brainfuck
  INTEGER, PARAMETER :: si64 = selected_int_kind(18)
  INTEGER, PARAMETER :: si32 = selected_int_kind(9)
  
  INTEGER (KIND=si32), DIMENSION(0:1048832) :: m = 0
  INTEGER (KIND=si32):: v
  INTEGER (KIND=si64):: n, d
  INTEGER :: r, p = 256
  CHARACTER :: ch

  m(p) = 1
  p = p + 1
  m(p) = 1
  DO WHILE (m(p) .NE. 0)
    p = p - 1
    DO WHILE (m(p) .NE. 0)
      p = p + 1
      m(p) = m(p) - 1
    END DO
    p = p + 1
    DO WHILE (m(p) .NE. 0)
      p = p + 1
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 9
      p = p + 92
      m(p) = m(p) + 2
      p = p - 92
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 5
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 5
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 9
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 12
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 6
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 6
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 12
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 8
      m(p) = 1
      p = p + 1
      m(p) = m(p) + 13
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 13
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 8
      m(p) = 0
      p = p + 1
      m(p) = m(p) + 14
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 14
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 9
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p + 3
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p + 6
        m(p) = 0
        p = p + 3
        m(p) = 0
        p = p - 3
      END DO
      p = p + 3
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 13
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 13
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 10
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 6
      DO WHILE (m(p) .NE. 0)
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) - 1
      END DO
      p = p + 16
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 13
      m(p) = m(p) + 2
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p + 5
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 5
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      m(p) = m(p) + 1
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = m(p) - 2
      p = p - 3
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 6
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 4
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 4
      v = m(p)
      p = p + 4
      m(p) = v
      p = p - 3
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      m(p) = m(p) + 2
      p = p + 1
      m(p) = 0
      p = p - 4
      m(p) = m(p) - 1
      p = p - 4
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 6
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 4
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 4
      v = m(p)
      p = p + 4
      m(p) = v
      p = p - 3
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      WRITE (*,'(A)',advance='no') CHAR(m(p))
      p = p - 2
      v = m(p)
      p = p - 1
      m(p) = v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 2
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 7
      m(p) = 0
      p = p + 2
      m(p) = 18
      p = p + 1
      m(p) = 0
      p = p - 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 3
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 5
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 10
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 10
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      m(p) = m(p) + 1
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 3
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 5
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 10
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 10
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      m(p) = m(p) + 1
      WRITE (*,'(A)',advance='no') CHAR(m(p))
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 4
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 10
      m(p) = 0
      p = p + 12
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) + 1
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 19
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 8
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*10
      m(p) = m(p) + 3
      WRITE (*,'(A)',advance='no') CHAR(m(p))
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 4
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 10
      m(p) = 0
      p = p + 12
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) + 1
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 19
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      v = m(p)
      p = p + 1
      m(p) = v*5
      v = m(p)
      p = p - 1
      m(p) = v
      WRITE (*,'(A)',advance='no') CHAR(m(p))
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 4
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 10
      m(p) = 0
      p = p + 12
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) + 1
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 19
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 3
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      p = p + 1
      m(p) = 0
      p = p - 2
      m(p) = 0
      p = p - 6
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 2
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 2
      m(p) = m(p) + 2
      p = p - 3
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*5
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 5
      m(p) = m(p) + 1
      p = p + 4
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 85
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        m(p) = 1
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 89
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 85
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p + 1
      m(p) = 0
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 93
      DO WHILE (m(p) .NE. 0)
        p = p + 10
        m(p) = m(p) + 1
        p = p + 85
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 93
        m(p) = m(p) - 1
      END DO
      p = p + 10
      v = m(p)
      p = p - 10
      m(p) = v
      p = p + 10
      m(p) = 0
      p = p + 85
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      DO WHILE (m(p) .NE. 0)
        m(p) = m(p) - 1
        p = p - 2
      END DO
      p = p - 93
      m(p) = m(p) - 3
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 2
      m(p) = 0
      p = p - 4
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 9
      m(p) = 0
      p = p + 13
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 5
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 6
      DO WHILE (m(p) .NE. 0)
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) - 1
      END DO
      p = p + 16
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 14
      READ (*, '(A)',advance='no',iostat=r) ch
      IF (r .EQ. 0) THEN
        m(p) = ICHAR(ch)
      ELSE IF (IS_IOSTAT_EOR(r)) THEN
        m(p) = 10
      END IF
      p = p + 4
      m(p) = m(p) + 8
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*10
      m(p) = m(p) + 3
      v = m(p)
      p = p - 3
      m(p) = m(p)-v
      p = p - 2
      m(p) = m(p)+v
      p = p + 3
      m(p) = 0
      p = p + 2
      m(p) = 0
      p = p + 1
      m(p) = 0
      p = p + 6
      m(p) = 1
      p = p - 10
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p + 3
        m(p) = m(p)-v
        p = p - 5
        m(p) = m(p)+v
        p = p + 2
        m(p) = 0
        p = p + 10
        m(p) = m(p) - 1
        p = p - 10
      END DO
      p = p - 2
      v = m(p)
      p = p + 5
      m(p) = m(p)+v
      p = p - 3
      m(p) = v
      p = p + 10
      v = m(p)
      p = p - 14
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)+v
      p = p - 1
      v = m(p)
      p = p + 14
      m(p) = v
      p = p - 7
      m(p) = 11
      p = p - 5
      m(p) = 0
      p = p - 2
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = 0
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*5
      v = m(p)
      p = p + 1
      m(p) = v*5
      v = m(p)
      p = p - 1
      m(p) = v
      v = m(p)
      p = p - 3
      m(p) = m(p)-v
      p = p - 2
      m(p) = m(p)+v
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = 0
      p = p + 1
      m(p) = 0
      p = p + 6
      m(p) = 1
      p = p - 10
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p + 3
        m(p) = m(p)-v
        p = p - 5
        m(p) = m(p)+v
        p = p + 2
        m(p) = 0
        p = p + 10
        m(p) = m(p) - 1
        p = p - 10
      END DO
      p = p - 2
      v = m(p)
      p = p + 5
      m(p) = m(p)+v
      p = p - 3
      m(p) = v
      p = p - 2
      m(p) = 0
      p = p + 5
      m(p) = 1
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p - 7
        v = m(p)
        p = p - 2
        m(p) = m(p)+v
        p = p - 3
        m(p) = m(p)+v
        v = m(p)
        p = p + 5
        m(p) = v
        p = p - 5
        m(p) = 0
        p = p + 10
        m(p) = m(p) + 1
        p = p + 1
      END DO
      p = p - 1
      DO WHILE (m(p) .NE. 0)
        m(p) = m(p) - 1
        p = p + 1
      END DO
      p = p + 1
      v = m(p)
      p = p - 14
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)+v
      p = p - 1
      v = m(p)
      p = p + 14
      m(p) = v
      p = p - 7
      m(p) = 11
      p = p - 7
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = 0
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = m(p) + 2
      p = p - 5
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 3
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 3
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p - 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 5
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 5
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      v = m(p)
      p = p - 1
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 8
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 5
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 5
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      m(p) = m(p) + 1
      v = m(p)
      p = p - 1
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      m(p) = m(p) - 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      READ (*, '(A)',advance='no',iostat=r) ch
      IF (r .EQ. 0) THEN
        m(p) = ICHAR(ch)
      ELSE IF (IS_IOSTAT_EOR(r)) THEN
        m(p) = 10
      END IF
      m(p) = 0
      p = p - 4
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) + 1
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 19
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 11
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 4
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 8
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 3
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 3
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 4
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 6
      m(p) = 0
      p = p + 16
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 14
        m(p) = m(p) + 1
        p = p + 16
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 19
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 6
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 17
      DO WHILE (m(p) .NE. 0)
        p = p + 5
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 3
        m(p) = m(p) - 1
      END DO
      p = p + 5
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 13
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p + 5
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 7
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 4
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 4
      v = m(p)
      p = p + 4
      m(p) = v
      p = p - 3
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 12
      m(p) = v
      p = p - 13
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 7
      p = p + 8
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 15
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 14
        m(p) = 0
      END DO
      p = p - 15
      v = m(p)
      p = p + 15
      m(p) = v
      p = p - 14
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 15
      m(p) = m(p) + 2
      v = m(p)
      p = p - 9
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 7
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 14
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 13
      v = m(p)
      p = p - 9
      m(p) = m(p) + 1
      m(p) = m(p)-v
      p = p - 5
      m(p) = v
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 16
      m(p) = 0
      p = p + 2
      m(p) = 0
      p = p - 9
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p + 9
        m(p) = m(p)-v
        p = p - 14
        m(p) = m(p)+v
        p = p + 5
        m(p) = 0
        p = p + 7
        m(p) = m(p) + 1
        p = p - 7
      END DO
      p = p - 5
      v = m(p)
      p = p + 14
      m(p) = m(p)+v
      p = p - 9
      m(p) = v
      p = p + 7
      v = m(p)
      p = p - 14
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)+v
      p = p - 1
      v = m(p)
      p = p + 14
      m(p) = v
      p = p - 7
      m(p) = 7
      p = p - 5
      m(p) = 0
      p = p - 2
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = 0
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      m(p) = m(p) + 1
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 12
      m(p) = v
      p = p - 13
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 12
      v = m(p)
      p = p - 10
      m(p) = v
      p = p - 3
      m(p) = v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 7
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*6
      p = p + 1
      m(p) = 0
      p = p - 2
      m(p) = 1
      p = p - 3
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*6
    m(p) = m(p) + 4
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 7
      m(p) = m(p) + 8
      v = m(p)
      p = p - 8
      m(p) = v
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 2
      m(p) = 0
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 7
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 4
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 4
      v = m(p)
      p = p + 4
      m(p) = v
      p = p - 3
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 12
      m(p) = v
      p = p - 13
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      p = p + 8
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 15
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 14
        m(p) = 0
      END DO
      p = p - 15
      v = m(p)
      p = p + 15
      m(p) = v
      p = p - 14
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 15
      v = m(p)
      p = p - 9
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 7
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 14
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        v = m(p)
        p = p - 16
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p) - 1
        p = p + 15
        m(p) = 0
      END DO
      p = p - 16
      v = m(p)
      p = p + 16
      m(p) = v
      p = p - 15
      m(p) = m(p) + 1
      p = p - 1
      m(p) = 0
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 6
        m(p) = m(p) - 1
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 3
      END DO
      p = p + 6
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 16
      m(p) = m(p) + 2
      v = m(p)
      p = p - 10
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 14
      m(p) = v
      p = p - 8
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p + 3
        v = m(p)
        p = p - 8
        m(p) = m(p)+v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 3
        v = m(p)
        p = p - 4
        m(p) = v
        p = p - 2
        m(p) = 0
        p = p + 6
        m(p) = 0
      END DO
      p = p - 4
      v = m(p)
      p = p + 4
      m(p) = v
      p = p + 3
      m(p) = 0
      p = p - 7
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      m(p) = m(p) + 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 4
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 14
      m(p) = v
      p = p - 15
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 2
      m(p) = m(p) - 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 1
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 5
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 5
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 12
      m(p) = v
      p = p - 13
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 1
      m(p) = m(p) + 1
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p + 7
      m(p) = m(p) + 1
      p = p - 13
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 16
      m(p) = v
      p = p - 17
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 12
      v = m(p)
      p = p - 9
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 7
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 14
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 5
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = 2
      p = p - 3
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 3
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 3
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p - 1
      m(p) = v
      p = p + 4
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = 2
      p = p - 5
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 3
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 3
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      v = m(p)
      p = p - 1
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 4
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 4
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p - 2
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 11
      v = m(p)
      p = p - 10
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 14
      m(p) = v
      p = p - 8
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*7
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 5
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*7
    m(p) = m(p) + 5
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      m(p) = m(p) + 1
      v = m(p)
      p = p - 2
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 12
      v = m(p)
      p = p - 11
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 15
      m(p) = v
      p = p - 9
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 8
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = 2
      p = p - 5
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 3
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 3
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      m(p) = m(p) + 1
      v = m(p)
      p = p - 1
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 1
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p - 2
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 14
      v = m(p)
      p = p - 13
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 17
      m(p) = v
      p = p - 11
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 4
      m(p) = m(p) - 1
      p = p - 2
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      m(p) = m(p) + 1
      v = m(p)
      p = p - 2
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 12
      v = m(p)
      p = p - 11
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 15
      m(p) = v
      p = p - 9
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*4
      m(p) = m(p) + 1
      v = m(p)
      p = p + 1
      m(p) = v*4
      v = m(p)
      p = p - 1
      m(p) = v
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*4
    m(p) = m(p) + 1
    v = m(p)
    p = p + 1
    m(p) = v*4
    v = m(p)
    p = p - 1
    m(p) = v
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 4
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 3
      m(p) = m(p)+v
      v = m(p)
      p = p + 2
      m(p) = v
      p = p + 4
      m(p) = m(p) + 3
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*4
      m(p) = m(p) + 1
      v = m(p)
      p = p + 1
      m(p) = v*4
      m(p) = m(p) + 1
      v = m(p)
      p = p - 1
      m(p) = v
      p = p + 1
      m(p) = 0
      p = p - 2
      m(p) = 1
      p = p - 3
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 3
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*4
    m(p) = m(p) + 1
    v = m(p)
    p = p + 1
    m(p) = v*4
    m(p) = m(p) + 1
    v = m(p)
    p = p - 1
    m(p) = v
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 7
      m(p) = m(p) + 8
      v = m(p)
      p = p - 8
      m(p) = v
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 2
      m(p) = 0
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 4
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*9
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*9
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 2
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 1
      v = m(p)
      p = p + 7
      m(p) = m(p)+v
      p = p - 4
      m(p) = m(p) + 2
      v = m(p)
      p = p + 3
      m(p) = m(p)+v
      p = p + 4
      m(p) = 1
      p = p - 7
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 2
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 12
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        m(p) = m(p) + 1
        p = p - 3
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          m(p) = m(p) - 1
          p = p - 1
        END DO
        p = p + 1
      END DO
      p = p - 2
      DO WHILE (m(p) .NE. 0)
        m(p) = m(p) - 1
        v = m(p)
        p = p - 3
        m(p) = m(p)+v
        p = p - 3
        m(p) = m(p) - 1
        p = p + 6
        m(p) = 0
        p = p + 4
        m(p) = m(p) - 1
        p = p - 6
      END DO
      p = p + 3
      v = m(p)
      p = p - 7
      m(p) = m(p)+v
      p = p + 3
      m(p) = 8
      p = p + 4
      m(p) = 0
      p = p + 2
      m(p) = m(p) + 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        m(p) = m(p) - 1
      END DO
      p = p - 1
      DO WHILE (m(p) .NE. 0)
        p = p - 6
        v = m(p)
        p = p - 8
        m(p) = v
        p = p + 1
        m(p) = m(p)+v
        v = m(p)
        p = p + 7
        m(p) = v
        p = p - 7
        m(p) = 0
        p = p - 2
        m(p) = 0
        p = p + 15
        m(p) = m(p) - 1
        p = p - 1
      END DO
      p = p - 5
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 5
      v = m(p)
      p = p + 10
      m(p) = v
      v = m(p)
      p = p - 9
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 7
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*9
      p = p + 1
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 3
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*9
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 3
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 5
      m(p) = m(p) + 7
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 6
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 6
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 7
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 15
      v = m(p)
      p = p - 12
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 10
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 7
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 1
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 7
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 1
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 15
      m(p) = m(p) + 1
      v = m(p)
      p = p - 9
      m(p) = v
      p = p - 4
      m(p) = m(p)+v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 7
      m(p) = m(p) + 7
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 2
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 1
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 1
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 7
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 2
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 3
      v = m(p)
      p = p + 2
      m(p) = v
      p = p - 3
      m(p) = m(p)+v
      v = m(p)
      p = p + 1
      m(p) = v
      p = p + 5
      m(p) = m(p) + 7
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*8
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      m(p) = m(p) + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 6
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 6
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 7
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*8
    m(p) = m(p) + 3
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 15
      v = m(p)
      p = p - 12
      m(p) = v
      p = p - 1
      m(p) = m(p)+v
      v = m(p)
      p = p + 13
      m(p) = v
      p = p - 10
      v = m(p)
      p = p + 1
      m(p) = v
      p = p - 4
      m(p) = v
      v = m(p)
      p = p + 3
      m(p) = v
      p = p + 3
      m(p) = m(p) + 6
      v = m(p)
      p = p - 1
      m(p) = m(p)+v*10
      p = p + 1
      m(p) = 0
      p = p - 6
      m(p) = 0
      p = p - 2
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 9
      DO WHILE (m(p) .NE. 0)
        p = p + 6
        m(p) = m(p) + 1
        p = p + 7
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 11
        m(p) = m(p) - 1
      END DO
      p = p + 6
      v = m(p)
      p = p - 6
      m(p) = v
      p = p + 6
      m(p) = 0
      p = p + 7
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      m(p) = 1
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 18
      m(p) = m(p) + 2
      v = m(p)
      p = p + 7
      m(p) = v
      m(p) = 0
      p = p - 7
      m(p) = 0
      p = p - 1
      m(p) = 2
      p = p - 1
      m(p) = 0
      p = p + 2
    END DO
    p = p + 2
    m(p) = m(p) + 6
    v = m(p)
    p = p - 1
    m(p) = m(p)+v*10
    p = p + 1
    m(p) = 0
    p = p - 4
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      p = p + 15
      m(p) = m(p) - 1
      v = m(p)
      p = p - 10
      m(p) = v
      p = p + 10
      m(p) = 0
      p = p - 15
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 2
    END DO
    p = p + 1
    m(p) = m(p) + 8
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 17
      m(p) = 0
      p = p + 5
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 3
        m(p) = m(p) + 1
        p = p + 5
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 19
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 2
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 5
      DO WHILE (m(p) .NE. 0)
        p = p + 10
        m(p) = m(p) + 1
        p = p + 85
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        m(p) = 1
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 93
        m(p) = m(p) - 1
      END DO
      p = p + 10
      v = m(p)
      p = p - 10
      m(p) = v
      p = p + 10
      m(p) = 0
      p = p + 85
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p + 1
      m(p) = 0
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 90
      DO WHILE (m(p) .NE. 0)
        p = p + 7
        m(p) = m(p) + 1
        p = p + 85
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) + 1
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 90
        m(p) = m(p) - 1
      END DO
      p = p + 7
      v = m(p)
      p = p - 7
      m(p) = v
      p = p + 7
      m(p) = 0
      p = p + 85
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      DO WHILE (m(p) .NE. 0)
        m(p) = m(p) - 1
        p = p - 2
      END DO
      p = p - 97
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p + 1
    m(p) = m(p) + 1
    p = p - 3
    IF (m(p) .NE. 0) THEN
      v = m(p)
      p = p + 2
      m(p) = m(p)-v
      p = p + 1
      m(p) = 0
      p = p - 3
    END IF
    m(p) = 1
    p = p + 2
    m(p) = m(p) + 1
    DO WHILE (m(p) .NE. 0)
      p = p - 1
      v = m(p)
      p = p + 1
      m(p) = m(p) - 1
      m(p) = m(p)+v
      p = p + 1
      m(p) = m(p)-v
      p = p - 2
      m(p) = 0
      p = p + 2
      DO WHILE (m(p) .NE. 0)
        p = p - 1
        v = m(p)
        p = p - 1
        m(p) = m(p)+v
        p = p + 2
        m(p) = m(p)+v
        p = p - 1
        m(p) = 0
        p = p - 2
        m(p) = m(p) - 1
        p = p + 3
        m(p) = 0
      END DO
      p = p - 1
      m(p) = 0
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    p = p - 2
    m(p) = 0
    p = p + 2
    DO WHILE (m(p) .NE. 0)
      m(p) = m(p) - 1
      p = p - 2
      m(p) = m(p) + 1
      p = p + 5
      m(p) = 0
      p = p + 3
      DO WHILE (m(p) .NE. 0)
        p = p + 7
        m(p) = m(p) + 1
        p = p + 85
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        m(p) = 1
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 90
        m(p) = m(p) - 1
      END DO
      p = p + 7
      v = m(p)
      p = p - 7
      m(p) = v
      p = p + 7
      m(p) = 0
      p = p + 85
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 93
        m(p) = m(p) + 1
        p = p + 95
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
        p = p + 1
        m(p) = m(p) + 1
        p = p - 1
      END DO
      p = p + 1
      v = m(p)
      p = p - 1
      m(p) = v
      p = p + 1
      m(p) = 0
      p = p - 4
      DO WHILE (m(p) .NE. 0)
        m(p) = m(p) - 1
        p = p - 2
      END DO
      p = p - 97
      m(p) = 0
      p = p - 1
      m(p) = 0
      p = p + 22
      DO WHILE (m(p) .NE. 0)
        p = p + 2
      END DO
      p = p - 2
      m(p) = m(p) - 1
      p = p + 1
      DO WHILE (m(p) .NE. 0)
        p = p - 3
        DO WHILE (m(p) .NE. 0)
          p = p - 2
        END DO
        p = p - 19
        m(p) = m(p) + 1
        p = p + 21
        DO WHILE (m(p) .NE. 0)
          p = p + 2
        END DO
        p = p + 1
        m(p) = m(p) - 1
      END DO
      p = p - 3
      DO WHILE (m(p) .NE. 0)
        p = p - 2
      END DO
      p = p - 11
      m(p) = 0
      p = p - 7
    END DO
    p = p - 2
    v = m(p)
    p = p + 2
    m(p) = v
    v = m(p)
    p = p - 2
    m(p) = v
    p = p + 2
    m(p) = 0
    p = p - 1
  END DO
END PROGRAM brainfuck
