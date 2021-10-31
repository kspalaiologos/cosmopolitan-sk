#!/usr/bin/rc
ptr=(1)

fn f {
    p=t$^ptr
    v=$$p
    if (~ $v ()) v=0
}

fn w {
    $p=$v
}

fn s {
    f
    v=$1
    w
}

fn r {
    carry=1
    nptr=()
    for(v in $ptr) {
        if (~ $carry 1) {
            carry=0
            if (~ $v 0) {
                v=1
            } else if (~ $v 9) {
                v=0
                carry=1
            } else {
                n=(2 3 4 5 6 7 8 9)
                v=$n($v)
            }
        }
        nptr=($nptr $v)
    }
    if (~ $carry 1) nptr=($nptr 1)
    ptr=$nptr
}

fn l {
    carry=1
    nptr=()
    pv=()
    for(v in $ptr) {
        nptr=($nptr $pv)
        if (~ $carry 1) {
            carry=0
            if (~ $v 0) {
                v=9
                carry=1
            } else {
                n=(0 1 2 3 4 5 6 7 8)
                v=$n($v)
            }
        }
        if (~ $v 0) {
            pv=$v
        } else {
            pv=()
            nptr=($nptr $v)
        }
    }
    ptr=$nptr
}

inc=(
 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33
 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65
 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81
 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97
 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113
 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129
 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145
 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161
 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177
 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193
 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209
 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225
 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241
 242 243 244 245 246 247 248 249 250 251 252 253 254 255 0 1
)

fn u {
    f
    if (~ $v 0) {
        v=1
    } else {
        v=$inc($v)
    }
    w
}

dec=(
 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47
 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63
 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79
 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95
 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111
 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127
 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143
 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159
 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175
 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191
 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207
 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223
 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239
 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255
)

fn d {
    f
    if (~ $v 0) {
        v=255
    } else {
        v=$dec($v)
    }
    w
}

fn e {
    switch ($1) {
    case 10
	echo
    case 32
	echo -n ' '
    case 33
	echo -n '!'
    case 34
	echo -n '"'
    case 35
	echo -n '#'
    case 36
	echo -n '$'
    case 37
	echo -n '%'
    case 38
	echo -n '&'
    case 39
	echo -n ''''
    case 40
	echo -n '('
    case 41
	echo -n ')'
    case 42
	echo -n '*'
    case 43
	echo -n '+'
    case 44
	echo -n ','
    case 45
	echo -n '-'
    case 46
	echo -n '.'
    case 47
	echo -n '/'
    case 48
	echo -n '0'
    case 49
	echo -n '1'
    case 50
	echo -n '2'
    case 51
	echo -n '3'
    case 52
	echo -n '4'
    case 53
	echo -n '5'
    case 54
	echo -n '6'
    case 55
	echo -n '7'
    case 56
	echo -n '8'
    case 57
	echo -n '9'
    case 58
	echo -n ':'
    case 59
	echo -n ';'
    case 60
	echo -n '<'
    case 61
	echo -n '='
    case 62
	echo -n '>'
    case 63
	echo -n '?'
    case 64
	echo -n '@'
    case 65
	echo -n 'A'
    case 66
	echo -n 'B'
    case 67
	echo -n 'C'
    case 68
	echo -n 'D'
    case 69
	echo -n 'E'
    case 70
	echo -n 'F'
    case 71
	echo -n 'G'
    case 72
	echo -n 'H'
    case 73
	echo -n 'I'
    case 74
	echo -n 'J'
    case 75
	echo -n 'K'
    case 76
	echo -n 'L'
    case 77
	echo -n 'M'
    case 78
	echo -n 'N'
    case 79
	echo -n 'O'
    case 80
	echo -n 'P'
    case 81
	echo -n 'Q'
    case 82
	echo -n 'R'
    case 83
	echo -n 'S'
    case 84
	echo -n 'T'
    case 85
	echo -n 'U'
    case 86
	echo -n 'V'
    case 87
	echo -n 'W'
    case 88
	echo -n 'X'
    case 89
	echo -n 'Y'
    case 90
	echo -n 'Z'
    case 91
	echo -n '['
    case 92
	echo -n '\'
    case 93
	echo -n ']'
    case 94
	echo -n '^'
    case 95
	echo -n '_'
    case 96
	echo -n '`'
    case 97
	echo -n 'a'
    case 98
	echo -n 'b'
    case 99
	echo -n 'c'
    case 100
	echo -n 'd'
    case 101
	echo -n 'e'
    case 102
	echo -n 'f'
    case 103
	echo -n 'g'
    case 104
	echo -n 'h'
    case 105
	echo -n 'i'
    case 106
	echo -n 'j'
    case 107
	echo -n 'k'
    case 108
	echo -n 'l'
    case 109
	echo -n 'm'
    case 110
	echo -n 'n'
    case 111
	echo -n 'o'
    case 112
	echo -n 'p'
    case 113
	echo -n 'q'
    case 114
	echo -n 'r'
    case 115
	echo -n 's'
    case 116
	echo -n 't'
    case 117
	echo -n 'u'
    case 118
	echo -n 'v'
    case 119
	echo -n 'w'
    case 120
	echo -n 'x'
    case 121
	echo -n 'y'
    case 122
	echo -n 'z'
    case 123
	echo -n '{'
    case 124
	echo -n '|'
    case 125
	echo -n '}'
    case 126
	echo -n '~'
    # Use awk for the rest
    case *
	awk -v 'v='$1 'BEGIN{printf "%c",v;}'
    }
}

fn o {
    f
    e $v
}

fn i {
    f
    v=`{dd 'bs=1' 'count=1' >[2]/dev/null | od -t d1 | cut -d ' ' -s -f 2- }
    if (! ~ $v ())
      w
}

fn u2 { u ; u; }
fn d2 { d ; d; }
fn l2 { l ; l; }
fn r2 { r ; r; }
fn u3 { u2 ; u; }
fn d3 { d2 ; d; }
fn l3 { l2 ; l; }
fn r3 { r2 ; r; }
fn u4 { u2 ; u2; }
fn d4 { d2 ; d2; }
fn l4 { l2 ; l2; }
fn r4 { r2 ; r2; }
fn u5 { u3 ; u2; }
fn d5 { d3 ; d2; }
fn l5 { l3 ; l2; }
fn r5 { r3 ; r2; }
fn u6 { u3 ; u3; }
fn d6 { d3 ; d3; }
fn l6 { l3 ; l3; }
fn r6 { r3 ; r3; }
fn u7 { u4 ; u3; }
fn d7 { d4 ; d3; }
fn l7 { l4 ; l3; }
fn r7 { r4 ; r3; }
fn u8 { u4 ; u4; }
fn d8 { d4 ; d4; }
fn l8 { l4 ; l4; }
fn r8 { r4 ; r4; }
fn u9 { u5 ; u4; }
fn d9 { d5 ; d4; }
fn l9 { l5 ; l4; }
fn r9 { r5 ; r4; }
fn u10 { u5 ; u5; }
fn d10 { d5 ; d5; }
fn l10 { l5 ; l5; }
fn r10 { r5 ; r5; }
fn u11 { u6 ; u5; }
fn d11 { d6 ; d5; }
fn l11 { l6 ; l5; }
fn r11 { r6 ; r5; }
fn u12 { u6 ; u6; }
fn d12 { d6 ; d6; }
fn l12 { l6 ; l6; }
fn r12 { r6 ; r6; }
fn u13 { u7 ; u6; }
fn d13 { d7 ; d6; }
fn l13 { l7 ; l6; }
fn r13 { r7 ; r6; }
fn u14 { u7 ; u7; }
fn d14 { d7 ; d7; }
fn l14 { l7 ; l7; }
fn r14 { r7 ; r7; }
fn u15 { u8 ; u7; }
fn d15 { d8 ; d7; }
fn l15 { l8 ; l7; }
fn r15 { r8 ; r7; }
fn u16 { u8 ; u8; }
fn d16 { d8 ; d8; }
fn l16 { l8 ; l8; }
fn r16 { r8 ; r8; }
fn u17 { u9 ; u8; }
fn d17 { d9 ; d8; }
fn l17 { l9 ; l8; }
fn r17 { r9 ; r8; }
fn u18 { u9 ; u9; }
fn d18 { d9 ; d9; }
fn l18 { l9 ; l9; }
fn r18 { r9 ; r9; }
fn u19 { u10 ; u9; }
fn d19 { d10 ; d9; }
fn l19 { l10 ; l9; }
fn r19 { r10 ; r9; }
fn u20 { u10 ; u10; }
fn d20 { d10 ; d10; }
fn l20 { l10 ; l10; }
fn r20 { r10 ; r10; }
fn u21 { u11 ; u10; }
fn d21 { d11 ; d10; }
fn l21 { l11 ; l10; }
fn r21 { r11 ; r10; }
fn u22 { u11 ; u11; }
fn d22 { d11 ; d11; }
fn l22 { l11 ; l11; }
fn r22 { r11 ; r11; }
fn u23 { u12 ; u11; }
fn d23 { d12 ; d11; }
fn l23 { l12 ; l11; }
fn r23 { r12 ; r11; }
fn u24 { u12 ; u12; }
fn d24 { d12 ; d12; }
fn l24 { l12 ; l12; }
fn r24 { r12 ; r12; }
fn u25 { u13 ; u12; }
fn d25 { d13 ; d12; }
fn l25 { l13 ; l12; }
fn r25 { r13 ; r12; }
fn u26 { u13 ; u13; }
fn d26 { d13 ; d13; }
fn l26 { l13 ; l13; }
fn r26 { r13 ; r13; }
fn u27 { u14 ; u13; }
fn d27 { d14 ; d13; }
fn l27 { l14 ; l13; }
fn r27 { r14 ; r13; }
fn u28 { u14 ; u14; }
fn d28 { d14 ; d14; }
fn l28 { l14 ; l14; }
fn r28 { r14 ; r14; }
fn u29 { u15 ; u14; }
fn d29 { d15 ; d14; }
fn l29 { l15 ; l14; }
fn r29 { r15 ; r14; }
fn u30 { u15 ; u15; }
fn d30 { d15 ; d15; }
fn l30 { l15 ; l15; }
fn r30 { r15 ; r15; }
fn u31 { u16 ; u15; }
fn d31 { d16 ; d15; }
fn l31 { l16 ; l15; }
fn r31 { r16 ; r15; }
fn u32 { u16 ; u16; }
fn d32 { d16 ; d16; }
fn l32 { l16 ; l16; }
fn r32 { r16 ; r16; }
fn u33 { u17 ; u16; }
fn d33 { d17 ; d16; }
fn l33 { l17 ; l16; }
fn r33 { r17 ; r16; }
fn u34 { u17 ; u17; }
fn d34 { d17 ; d17; }
fn l34 { l17 ; l17; }
fn r34 { r17 ; r17; }
fn u35 { u18 ; u17; }
fn d35 { d18 ; d17; }
fn l35 { l18 ; l17; }
fn r35 { r18 ; r17; }
fn u36 { u18 ; u18; }
fn d36 { d18 ; d18; }
fn l36 { l18 ; l18; }
fn r36 { r18 ; r18; }
fn u37 { u19 ; u18; }
fn d37 { d19 ; d18; }
fn l37 { l19 ; l18; }
fn r37 { r19 ; r18; }
fn u38 { u19 ; u19; }
fn d38 { d19 ; d19; }
fn l38 { l19 ; l19; }
fn r38 { r19 ; r19; }
fn u39 { u20 ; u19; }
fn d39 { d20 ; d19; }
fn l39 { l20 ; l19; }
fn r39 { r20 ; r19; }
fn u40 { u20 ; u20; }
fn d40 { d20 ; d20; }
fn l40 { l20 ; l20; }
fn r40 { r20 ; r20; }
fn u41 { u21 ; u20; }
fn d41 { d21 ; d20; }
fn l41 { l21 ; l20; }
fn r41 { r21 ; r20; }
fn u42 { u21 ; u21; }
fn d42 { d21 ; d21; }
fn l42 { l21 ; l21; }
fn r42 { r21 ; r21; }
fn u43 { u22 ; u21; }
fn d43 { d22 ; d21; }
fn l43 { l22 ; l21; }
fn r43 { r22 ; r21; }
fn u44 { u22 ; u22; }
fn d44 { d22 ; d22; }
fn l44 { l22 ; l22; }
fn r44 { r22 ; r22; }
fn u45 { u23 ; u22; }
fn d45 { d23 ; d22; }
fn l45 { l23 ; l22; }
fn r45 { r23 ; r22; }
fn u46 { u23 ; u23; }
fn d46 { d23 ; d23; }
fn l46 { l23 ; l23; }
fn r46 { r23 ; r23; }
fn u47 { u24 ; u23; }
fn d47 { d24 ; d23; }
fn l47 { l24 ; l23; }
fn r47 { r24 ; r23; }
fn u48 { u24 ; u24; }
fn d48 { d24 ; d24; }
fn l48 { l24 ; l24; }
fn r48 { r24 ; r24; }
fn u49 { u25 ; u24; }
fn d49 { d25 ; d24; }
fn l49 { l25 ; l24; }
fn r49 { r25 ; r24; }
fn u50 { u25 ; u25; }
fn d50 { d25 ; d25; }
fn l50 { l25 ; l25; }
fn r50 { r25 ; r25; }
fn u51 { u26 ; u25; }
fn d51 { d26 ; d25; }
fn l51 { l26 ; l25; }
fn r51 { r26 ; r25; }
fn u52 { u26 ; u26; }
fn d52 { d26 ; d26; }
fn l52 { l26 ; l26; }
fn r52 { r26 ; r26; }
fn u53 { u27 ; u26; }
fn d53 { d27 ; d26; }
fn l53 { l27 ; l26; }
fn r53 { r27 ; r26; }
fn u54 { u27 ; u27; }
fn d54 { d27 ; d27; }
fn l54 { l27 ; l27; }
fn r54 { r27 ; r27; }
fn u55 { u28 ; u27; }
fn d55 { d28 ; d27; }
fn l55 { l28 ; l27; }
fn r55 { r28 ; r27; }
fn u56 { u28 ; u28; }
fn d56 { d28 ; d28; }
fn l56 { l28 ; l28; }
fn r56 { r28 ; r28; }
fn u57 { u29 ; u28; }
fn d57 { d29 ; d28; }
fn l57 { l29 ; l28; }
fn r57 { r29 ; r28; }
fn u58 { u29 ; u29; }
fn d58 { d29 ; d29; }
fn l58 { l29 ; l29; }
fn r58 { r29 ; r29; }
fn u59 { u30 ; u29; }
fn d59 { d30 ; d29; }
fn l59 { l30 ; l29; }
fn r59 { r30 ; r29; }
fn u60 { u30 ; u30; }
fn d60 { d30 ; d30; }
fn l60 { l30 ; l30; }
fn r60 { r30 ; r30; }
fn u61 { u31 ; u30; }
fn d61 { d31 ; d30; }
fn l61 { l31 ; l30; }
fn r61 { r31 ; r30; }
fn u62 { u31 ; u31; }
fn d62 { d31 ; d31; }
fn l62 { l31 ; l31; }
fn r62 { r31 ; r31; }
fn u63 { u32 ; u31; }
fn d63 { d32 ; d31; }
fn l63 { l32 ; l31; }
fn r63 { r32 ; r31; }
fn u64 { u32 ; u32; }
fn d64 { d32 ; d32; }
fn l64 { l32 ; l32; }
fn r64 { r32 ; r32; }
fn u65 { u33 ; u32; }
fn d65 { d33 ; d32; }
fn l65 { l33 ; l32; }
fn r65 { r33 ; r32; }
fn u66 { u33 ; u33; }
fn d66 { d33 ; d33; }
fn l66 { l33 ; l33; }
fn r66 { r33 ; r33; }
fn u67 { u34 ; u33; }
fn d67 { d34 ; d33; }
fn l67 { l34 ; l33; }
fn r67 { r34 ; r33; }
fn u68 { u34 ; u34; }
fn d68 { d34 ; d34; }
fn l68 { l34 ; l34; }
fn r68 { r34 ; r34; }
fn u69 { u35 ; u34; }
fn d69 { d35 ; d34; }
fn l69 { l35 ; l34; }
fn r69 { r35 ; r34; }
fn u70 { u35 ; u35; }
fn d70 { d35 ; d35; }
fn l70 { l35 ; l35; }
fn r70 { r35 ; r35; }
fn u71 { u36 ; u35; }
fn d71 { d36 ; d35; }
fn l71 { l36 ; l35; }
fn r71 { r36 ; r35; }
fn u72 { u36 ; u36; }
fn d72 { d36 ; d36; }
fn l72 { l36 ; l36; }
fn r72 { r36 ; r36; }
fn u73 { u37 ; u36; }
fn d73 { d37 ; d36; }
fn l73 { l37 ; l36; }
fn r73 { r37 ; r36; }
fn u74 { u37 ; u37; }
fn d74 { d37 ; d37; }
fn l74 { l37 ; l37; }
fn r74 { r37 ; r37; }
fn u75 { u38 ; u37; }
fn d75 { d38 ; d37; }
fn l75 { l38 ; l37; }
fn r75 { r38 ; r37; }
fn u76 { u38 ; u38; }
fn d76 { d38 ; d38; }
fn l76 { l38 ; l38; }
fn r76 { r38 ; r38; }
fn u77 { u39 ; u38; }
fn d77 { d39 ; d38; }
fn l77 { l39 ; l38; }
fn r77 { r39 ; r38; }
fn u78 { u39 ; u39; }
fn d78 { d39 ; d39; }
fn l78 { l39 ; l39; }
fn r78 { r39 ; r39; }
fn u79 { u40 ; u39; }
fn d79 { d40 ; d39; }
fn l79 { l40 ; l39; }
fn r79 { r40 ; r39; }
fn u80 { u40 ; u40; }
fn d80 { d40 ; d40; }
fn l80 { l40 ; l40; }
fn r80 { r40 ; r40; }
fn u81 { u41 ; u40; }
fn d81 { d41 ; d40; }
fn l81 { l41 ; l40; }
fn r81 { r41 ; r40; }
fn u82 { u41 ; u41; }
fn d82 { d41 ; d41; }
fn l82 { l41 ; l41; }
fn r82 { r41 ; r41; }
fn u83 { u42 ; u41; }
fn d83 { d42 ; d41; }
fn l83 { l42 ; l41; }
fn r83 { r42 ; r41; }
fn u84 { u42 ; u42; }
fn d84 { d42 ; d42; }
fn l84 { l42 ; l42; }
fn r84 { r42 ; r42; }
fn u85 { u43 ; u42; }
fn d85 { d43 ; d42; }
fn l85 { l43 ; l42; }
fn r85 { r43 ; r42; }
fn u86 { u43 ; u43; }
fn d86 { d43 ; d43; }
fn l86 { l43 ; l43; }
fn r86 { r43 ; r43; }
fn u87 { u44 ; u43; }
fn d87 { d44 ; d43; }
fn l87 { l44 ; l43; }
fn r87 { r44 ; r43; }
fn u88 { u44 ; u44; }
fn d88 { d44 ; d44; }
fn l88 { l44 ; l44; }
fn r88 { r44 ; r44; }
fn u89 { u45 ; u44; }
fn d89 { d45 ; d44; }
fn l89 { l45 ; l44; }
fn r89 { r45 ; r44; }
fn u90 { u45 ; u45; }
fn d90 { d45 ; d45; }
fn l90 { l45 ; l45; }
fn r90 { r45 ; r45; }
fn u91 { u46 ; u45; }
fn d91 { d46 ; d45; }
fn l91 { l46 ; l45; }
fn r91 { r46 ; r45; }
fn u92 { u46 ; u46; }
fn d92 { d46 ; d46; }
fn l92 { l46 ; l46; }
fn r92 { r46 ; r46; }
fn u93 { u47 ; u46; }
fn d93 { d47 ; d46; }
fn l93 { l47 ; l46; }
fn r93 { r47 ; r46; }
fn u94 { u47 ; u47; }
fn d94 { d47 ; d47; }
fn l94 { l47 ; l47; }
fn r94 { r47 ; r47; }
fn u95 { u48 ; u47; }
fn d95 { d48 ; d47; }
fn l95 { l48 ; l47; }
fn r95 { r48 ; r47; }
fn u96 { u48 ; u48; }
fn d96 { d48 ; d48; }
fn l96 { l48 ; l48; }
fn r96 { r48 ; r48; }
fn u97 { u49 ; u48; }
fn d97 { d49 ; d48; }
fn l97 { l49 ; l48; }
fn r97 { r49 ; r48; }
fn u98 { u49 ; u49; }
fn d98 { d49 ; d49; }
fn l98 { l49 ; l49; }
fn r98 { r49 ; r49; }
fn u99 { u50 ; u49; }
fn d99 { d50 ; d49; }
fn l99 { l50 ; l49; }
fn r99 { r50 ; r49; }
fn u100 { u50 ; u50; }
fn d100 { d50 ; d50; }
fn l100 { l50 ; l50; }
fn r100 { r50 ; r50; }
fn u101 { u51 ; u50; }
fn d101 { d51 ; d50; }
fn l101 { l51 ; l50; }
fn r101 { r51 ; r50; }
fn u102 { u51 ; u51; }
fn d102 { d51 ; d51; }
fn l102 { l51 ; l51; }
fn r102 { r51 ; r51; }
fn u103 { u52 ; u51; }
fn d103 { d52 ; d51; }
fn l103 { l52 ; l51; }
fn r103 { r52 ; r51; }
fn u104 { u52 ; u52; }
fn d104 { d52 ; d52; }
fn l104 { l52 ; l52; }
fn r104 { r52 ; r52; }
fn u105 { u53 ; u52; }
fn d105 { d53 ; d52; }
fn l105 { l53 ; l52; }
fn r105 { r53 ; r52; }
fn u106 { u53 ; u53; }
fn d106 { d53 ; d53; }
fn l106 { l53 ; l53; }
fn r106 { r53 ; r53; }
fn u107 { u54 ; u53; }
fn d107 { d54 ; d53; }
fn l107 { l54 ; l53; }
fn r107 { r54 ; r53; }
fn u108 { u54 ; u54; }
fn d108 { d54 ; d54; }
fn l108 { l54 ; l54; }
fn r108 { r54 ; r54; }
fn u109 { u55 ; u54; }
fn d109 { d55 ; d54; }
fn l109 { l55 ; l54; }
fn r109 { r55 ; r54; }
fn u110 { u55 ; u55; }
fn d110 { d55 ; d55; }
fn l110 { l55 ; l55; }
fn r110 { r55 ; r55; }
fn u111 { u56 ; u55; }
fn d111 { d56 ; d55; }
fn l111 { l56 ; l55; }
fn r111 { r56 ; r55; }
fn u112 { u56 ; u56; }
fn d112 { d56 ; d56; }
fn l112 { l56 ; l56; }
fn r112 { r56 ; r56; }
fn u113 { u57 ; u56; }
fn d113 { d57 ; d56; }
fn l113 { l57 ; l56; }
fn r113 { r57 ; r56; }
fn u114 { u57 ; u57; }
fn d114 { d57 ; d57; }
fn l114 { l57 ; l57; }
fn r114 { r57 ; r57; }
fn u115 { u58 ; u57; }
fn d115 { d58 ; d57; }
fn l115 { l58 ; l57; }
fn r115 { r58 ; r57; }
fn u116 { u58 ; u58; }
fn d116 { d58 ; d58; }
fn l116 { l58 ; l58; }
fn r116 { r58 ; r58; }
fn u117 { u59 ; u58; }
fn d117 { d59 ; d58; }
fn l117 { l59 ; l58; }
fn r117 { r59 ; r58; }
fn u118 { u59 ; u59; }
fn d118 { d59 ; d59; }
fn l118 { l59 ; l59; }
fn r118 { r59 ; r59; }
fn u119 { u60 ; u59; }
fn d119 { d60 ; d59; }
fn l119 { l60 ; l59; }
fn r119 { r60 ; r59; }
fn u120 { u60 ; u60; }
fn d120 { d60 ; d60; }
fn l120 { l60 ; l60; }
fn r120 { r60 ; r60; }
fn u121 { u61 ; u60; }
fn d121 { d61 ; d60; }
fn l121 { l61 ; l60; }
fn r121 { r61 ; r60; }
fn u122 { u61 ; u61; }
fn d122 { d61 ; d61; }
fn l122 { l61 ; l61; }
fn r122 { r61 ; r61; }
fn u123 { u62 ; u61; }
fn d123 { d62 ; d61; }
fn l123 { l62 ; l61; }
fn r123 { r62 ; r61; }
fn u124 { u62 ; u62; }
fn d124 { d62 ; d62; }
fn l124 { l62 ; l62; }
fn r124 { r62 ; r62; }
fn u125 { u63 ; u62; }
fn d125 { d63 ; d62; }
fn l125 { l63 ; l62; }
fn r125 { r63 ; r62; }
fn u126 { u63 ; u63; }
fn d126 { d63 ; d63; }
fn l126 { l63 ; l63; }
fn r126 { r63 ; r63; }
fn u127 { u64 ; u63; }
fn d127 { d64 ; d63; }
fn l127 { l64 ; l63; }
fn r127 { r64 ; r63; }
fn u128 { u64 ; u64; }
fn d128 { d64 ; d64; }
fn l128 { l64 ; l64; }
fn r128 { r64 ; r64; }

s 1
r
s 1
f
while (! ~ $v 0){
l
f
while (! ~ $v 0){
r
d
f
}
r
f
while (! ~ $v 0){
r
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r9
u9
r92
u2
l92
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u5
l
s 5
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r
u9
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r9
u12
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u6
l
s 6
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r
u12
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 1
r
u13
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r
u13
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r
s 1
r3
s 0
r
u14
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r
u14
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r9
u9
l3
f
while (! ~ $v 0){
l6
s 0
r9
f
while (! ~ $v 0){
l8
u
r8
d
f
}
l3
s 0
f
}
r3
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r9
f
while (! ~ $v 0){
r13
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r13
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u10
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
f
while (! ~ $v 0){
r16
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l14
d
f
}
r16
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l12
s 0
l
u2
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r3
d2
r3
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
l3
d
r3
f
while (! ~ $v 0){
l4
u
r4
d
f
}
f
}
l4
f
while (! ~ $v 0){
r4
u
l4
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
d
r4
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
l3
d
r3
f
while (! ~ $v 0){
l4
u
r4
d
f
}
f
}
l4
f
while (! ~ $v 0){
r4
u
l4
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u5
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
o
s 0
l3
s 0
r
f
while (! ~ $v 0){
l
u
r
d
f
}
r
s 0
l2
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u3
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u6
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 0
l2
f
while (! ~ $v 0){
r2
u
l3
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r6
u3
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u10
l
s 10
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
u
r2
s 0
l2
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 0
l2
f
while (! ~ $v 0){
r2
u
l3
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r6
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u10
l
s 10
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u5
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
o
s 0
l3
s 0
r16
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l14
u
r16
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l19
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u8
f
while (! ~ $v 0){
l
u10
r
d
f
}
l
u3
o
s 0
l3
s 0
r16
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l14
u
r16
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l19
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
f
while (! ~ $v 0){
r
u5
l
d
f
}
r
f
while (! ~ $v 0){
l
u
r
d
f
}
l
o
s 0
l3
s 0
r16
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l14
u
r16
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l19
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
r2
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
u2
r3
s 0
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r3
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
u
r4
f
while (! ~ $v 0){
r6
u
r85
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l89
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r85
f
while (! ~ $v 0){
r2
f
}
r
s 0
l3
f
while (! ~ $v 0){
l2
f
}
l93
f
while (! ~ $v 0){
r10
u
r85
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l93
d
f
}
r10
f
while (! ~ $v 0){
l10
u
r10
d
f
}
r85
f
while (! ~ $v 0){
r2
f
}
l2
f
while (! ~ $v 0){
d
l2
f
}
l89
s 0
l2
s 0
l2
d3
f
while (! ~ $v 0){
r2
u
l2
d
f
}
l4
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u5
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
f
while (! ~ $v 0){
r16
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l14
d
f
}
r16
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l14
i
r
s 0
r3
u8
f
while (! ~ $v 0){
l
u10
r
d
f
}
r6
s 1
l7
u3
f
while (! ~ $v 0){
l3
d
l2
u
r5
d
f
}
l3
f
while (! ~ $v 0){
r10
d
l10
f
while (! ~ $v 0){
r3
d
l5
u
r2
d
f
}
f
}
l2
f
while (! ~ $v 0){
r2
u
r3
u
l5
d
f
}
r5
s 11
r7
f
while (! ~ $v 0){
l13
u
l
u
r14
d
f
}
l14
f
while (! ~ $v 0){
r14
u
l14
d
f
}
r
f
while (! ~ $v 0){
l2
s 0
l
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
s 0
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u3
f
while (! ~ $v 0){
l
u5
r
d
f
}
l
f
while (! ~ $v 0){
r
u5
l
d
f
}
r
f
while (! ~ $v 0){
l
u
r
d
f
}
r6
s 1
l7
f
while (! ~ $v 0){
l3
d
l2
u
r5
d
f
}
l3
f
while (! ~ $v 0){
r10
d
l10
f
while (! ~ $v 0){
r3
d
l5
u
r2
d
f
}
f
}
l2
f
while (! ~ $v 0){
r2
u
r3
u
l5
d
f
}
r5
s 1
r7
f
while (! ~ $v 0){
l7
f
while (! ~ $v 0){
l2
u
l3
u
r5
d
f
}
l5
f
while (! ~ $v 0){
r5
u
l5
d
f
}
r10
u
r
f
}
l
f
while (! ~ $v 0){
d
r
f
}
l6
s 11
r7
f
while (! ~ $v 0){
l13
u
l
u
r14
d
f
}
l14
f
while (! ~ $v 0){
r14
u
l14
d
f
}
r
f
while (! ~ $v 0){
l2
s 0
l
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
s 0
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
u2
r3
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u3
l
s 3
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
r
f
while (! ~ $v 0){
l
u
l2
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u5
l
s 5
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r
f
while (! ~ $v 0){
l
u
l
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r4
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u5
l
s 5
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r
u
f
while (! ~ $v 0){
l
u
l
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r4
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u4
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u7
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
d
r
s 0
l
f
while (! ~ $v 0){
r
u
l
d
f
}
i
s 0
r16
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l14
u
r16
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l19
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u11
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r10
u4
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u3
l
s 3
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u4
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
r16
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l14
u
r16
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l19
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u6
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
f
while (! ~ $v 0){
r5
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l3
d
f
}
r5
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l12
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u7
l3
f
while (! ~ $v 0){
l3
d
r3
f
while (! ~ $v 0){
l4
u
r4
d
f
}
f
}
l4
f
while (! ~ $v 0){
r4
u
l4
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
l2
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
s 0
l12
f
while (! ~ $v 0){
r12
u
l13
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u7
r8
f
while (! ~ $v 0){
l14
d
r14
f
while (! ~ $v 0){
l15
u
r15
d
f
}
f
}
l15
f
while (! ~ $v 0){
r15
u
l15
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
r9
u2
f
while (! ~ $v 0){
l9
u
l4
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r18
s 0
l13
f
while (! ~ $v 0){
r13
u
l14
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u
r7
s 0
r2
f
while (! ~ $v 0){
l9
d
l5
u
r14
d
f
}
l9
f
while (! ~ $v 0){
r7
u
l7
f
while (! ~ $v 0){
r9
d
l14
u
r5
d
f
}
f
}
l5
f
while (! ~ $v 0){
r5
u
r9
u
l14
d
f
}
r5
s 7
r7
f
while (! ~ $v 0){
l13
u
l
u
r14
d
f
}
l14
f
while (! ~ $v 0){
r14
u
l14
d
f
}
r
f
while (! ~ $v 0){
l2
s 0
l
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
s 0
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
u
r2
s 0
l2
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
s 0
l12
f
while (! ~ $v 0){
r12
u
l13
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r3
s 0
r10
f
while (! ~ $v 0){
l10
u
l3
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r
s 1
r3
s 1
r2
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u4
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u6
r
d
f
}
l
u4
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l
s 0
l
s 0
r9
u8
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r
u7
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u4
l3
f
while (! ~ $v 0){
l3
d
r3
f
while (! ~ $v 0){
l4
u
r4
d
f
}
f
}
l4
f
while (! ~ $v 0){
r4
u
l4
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
l2
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
s 0
l12
f
while (! ~ $v 0){
r12
u
l13
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u4
r8
f
while (! ~ $v 0){
l14
d
r14
f
while (! ~ $v 0){
l15
u
r15
d
f
}
f
}
l15
f
while (! ~ $v 0){
r15
u
l15
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
r9
f
while (! ~ $v 0){
l9
u
l4
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r18
s 0
l13
f
while (! ~ $v 0){
r13
u
l14
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u4
r9
f
while (! ~ $v 0){
l15
d
r15
f
while (! ~ $v 0){
l16
u
r16
d
f
}
f
}
l16
f
while (! ~ $v 0){
r16
u
l16
d
f
}
r
u
f
while (! ~ $v 0){
d
l3
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r
f
}
r6
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
r10
u2
f
while (! ~ $v 0){
l10
u
l4
u
r14
d
f
}
l14
f
while (! ~ $v 0){
r14
u
l14
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u4
l3
f
while (! ~ $v 0){
l6
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r4
f
while (! ~ $v 0){
l4
u
r4
d
f
}
f
}
l4
f
while (! ~ $v 0){
r4
u
l4
d
f
}
r7
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
u
r
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u4
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u4
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r19
s 0
l14
f
while (! ~ $v 0){
r14
u
l15
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r3
d
r
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u8
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r4
s 0
l2
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u5
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u5
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
s 0
l12
f
while (! ~ $v 0){
r12
u
l13
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r2
u
r2
s 0
r9
u
l11
f
while (! ~ $v 0){
r2
u
l4
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r21
s 0
l16
f
while (! ~ $v 0){
r16
u
l17
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r4
s 0
r9
f
while (! ~ $v 0){
l9
u
l4
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r18
s 0
l13
f
while (! ~ $v 0){
r13
u
l14
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r3
s 2
r3
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u3
l
s 3
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
r
f
while (! ~ $v 0){
l
u
r
d
f
}
s 2
r3
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u3
l
s 3
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r
f
while (! ~ $v 0){
l
u
l
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r4
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u4
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u4
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r2
f
while (! ~ $v 0){
l2
u
l
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r4
s 0
r10
f
while (! ~ $v 0){
l10
u
l4
u
r14
d
f
}
l14
f
while (! ~ $v 0){
r14
u
l14
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u5
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u7
r
d
f
}
l
u5
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r2
u
f
while (! ~ $v 0){
l2
u
l
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r4
s 0
r11
f
while (! ~ $v 0){
l11
u
l4
u
r15
d
f
}
l15
f
while (! ~ $v 0){
r15
u
l15
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 2
r3
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u3
l
s 3
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r
u
f
while (! ~ $v 0){
l
u
l
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r4
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r
d
r
f
while (! ~ $v 0){
l2
u
l
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r4
s 0
r13
f
while (! ~ $v 0){
l13
u
l4
u
r17
d
f
}
l17
f
while (! ~ $v 0){
r17
u
l17
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r2
u
f
while (! ~ $v 0){
l2
u
l
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r4
s 0
r11
f
while (! ~ $v 0){
l11
u
l4
u
r15
d
f
}
l15
f
while (! ~ $v 0){
r15
u
l15
d
f
}
r6
u3
f
while (! ~ $v 0){
l
u4
r
d
f
}
l
u
f
while (! ~ $v 0){
r
u4
l
d
f
}
r
f
while (! ~ $v 0){
l
u
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u4
r
d
f
}
l
u
f
while (! ~ $v 0){
r
u4
l
d
f
}
r
f
while (! ~ $v 0){
l
u
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 0
l
f
while (! ~ $v 0){
r
u
l3
u
r2
d
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r
s 1
r3
s 1
r2
u3
f
while (! ~ $v 0){
l
u4
r
d
f
}
l
u
f
while (! ~ $v 0){
r
u4
l
d
f
}
r
u
f
while (! ~ $v 0){
l
u
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u3
f
while (! ~ $v 0){
l
u4
r
d
f
}
l
u
f
while (! ~ $v 0){
r
u4
l
d
f
}
r
u
f
while (! ~ $v 0){
l
u
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l
s 0
l
s 0
r9
u8
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r
u4
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u9
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u9
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r6
s 0
l
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r5
u2
r7
s 1
l10
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r3
f
while (! ~ $v 0){
l3
u
l3
u
r7
f
while (! ~ $v 0){
d
l
f
}
r
f
}
l2
f
while (! ~ $v 0){
r4
d
l10
d
r6
d
f
while (! ~ $v 0){
l3
u
r3
d
f
}
l2
f
}
r3
f
while (! ~ $v 0){
l7
u
r7
d
f
}
l4
s 8
r6
u
r
f
while (! ~ $v 0){
l
d
f
}
l
f
while (! ~ $v 0){
d
l14
s 0
l
s 0
r9
f
while (! ~ $v 0){
l7
u
l
u
r8
d
f
}
l7
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r12
f
}
l5
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
s 0
l10
f
while (! ~ $v 0){
r10
u
l10
d
f
}
r
s 0
r9
f
while (! ~ $v 0){
l9
u
l4
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u9
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u9
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 0
l2
f
while (! ~ $v 0){
r2
u
l3
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r6
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u6
l
s 6
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r12
f
while (! ~ $v 0){
l12
u
l
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r4
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r8
s 0
r9
u
f
while (! ~ $v 0){
l9
u
l4
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r6
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u2
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u
l
s 1
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 0
l2
f
while (! ~ $v 0){
r2
u
l3
u
r
d
f
}
l
f
while (! ~ $v 0){
r
u
l
d
f
}
r6
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u3
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u6
l
s 6
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u7
f
while (! ~ $v 0){
l
u8
r
d
f
}
l
u3
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r12
f
while (! ~ $v 0){
l12
u
l
u
r13
d
f
}
l13
f
while (! ~ $v 0){
r13
u
l13
d
f
}
r4
s 0
l
f
while (! ~ $v 0){
r
u
l4
u
r3
d
f
}
l3
f
while (! ~ $v 0){
r3
u
l3
d
f
}
r6
u6
f
while (! ~ $v 0){
l
u10
r
d
f
}
l
f
while (! ~ $v 0){
r6
u
r7
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l11
d
f
}
r6
f
while (! ~ $v 0){
l6
u
r6
d
f
}
r7
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
u2
l
s 2
l
s 0
r2
f
while (! ~ $v 0){
r7
u
l7
d
f
}
r7
s 0
l7
f
}
r2
u6
f
while (! ~ $v 0){
l
u10
r
d
f
}
l4
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r7
s 0
r10
d
f
while (! ~ $v 0){
l10
u
r10
d
f
}
l15
f
}
r
u8
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r17
s 0
r5
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l3
u
r5
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l19
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u2
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
f
while (! ~ $v 0){
r10
u
r85
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l93
d
f
}
r10
f
while (! ~ $v 0){
l10
u
r10
d
f
}
r85
f
while (! ~ $v 0){
r2
f
}
r
s 0
l3
f
while (! ~ $v 0){
l2
f
}
l90
f
while (! ~ $v 0){
r7
u
r85
f
while (! ~ $v 0){
r2
f
}
r
u
l3
f
while (! ~ $v 0){
l2
f
}
l90
d
f
}
r7
f
while (! ~ $v 0){
l7
u
r7
d
f
}
r85
f
while (! ~ $v 0){
r2
f
}
l2
f
while (! ~ $v 0){
d
l2
f
}
l97
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
r
u
l3
f
while (! ~ $v 0){
r2
d
r
s 0
l3
d
f
}
s 1
r2
u
f
while (! ~ $v 0){
d
l
f
while (! ~ $v 0){
r
u
r
d
l2
d
f
}
r2
f
while (! ~ $v 0){
l3
d
r2
f
while (! ~ $v 0){
r
u
l2
u
r
d
f
}
r
s 0
f
}
l
s 0
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
d
l2
u
r5
s 0
r3
f
while (! ~ $v 0){
r7
u
r85
f
while (! ~ $v 0){
r2
f
}
s 1
f
while (! ~ $v 0){
l2
f
}
l90
d
f
}
r7
f
while (! ~ $v 0){
l7
u
r7
d
f
}
r85
f
while (! ~ $v 0){
r2
f
}
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l93
u
r95
f
while (! ~ $v 0){
r2
f
}
r
d
r
u
l
f
}
r
f
while (! ~ $v 0){
l
u
r
d
f
}
l4
f
while (! ~ $v 0){
d
l2
f
}
l97
s 0
l
s 0
r22
f
while (! ~ $v 0){
r2
f
}
l2
d
r
f
while (! ~ $v 0){
l3
f
while (! ~ $v 0){
l2
f
}
l19
u
r21
f
while (! ~ $v 0){
r2
f
}
r
d
f
}
l3
f
while (! ~ $v 0){
l2
f
}
l11
s 0
l7
f
}
l2
f
while (! ~ $v 0){
r2
u
l2
d
f
}
r2
f
while (! ~ $v 0){
l2
u
r2
d
f
}
l
f
}
