# cosmopolitan-sk

Implementing SK calculus in as many languages as possible.

Current list:
- C
- asm2bf
- brainfuck
- Malbolge Unshackled

# Test cases

```
test "(((SK)K)K)" "K"
test "((((S((S(KS))K))(K((SK)K)))(KK))(SS))" "K"
test "((((S(K(S((SK)K))))K)S)K)" "(KS)"
test "(((S((S(K((SK)K)))((S((S(K((SK)K)))((SK)K)))(K(K(K((SK)K)))))))(K((S(KK))((SK)K))))((S((S(K((SK)K)))((S(K((S(KS))(S(K((SK)K))))))((S(KK))((SK)K)))))(K((SK)K))))" "(K((SK)K))"
test "((((S(KS))((S(K(S(KS))))((S(K(S(KK))))((SK)K))))((SK)K))((SK)K))" "((S((S(KS))((S(KK))((SK)K))))((SK)K))"
```

# Notes

## Malbolge Unshackled

Everything other than `(` and `K` is treated as `S`. The source file is `sk-malbolge.mb`. Use fast20 from kspalaiologos/malbolge-lisp repository.
