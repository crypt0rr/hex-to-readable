# HEX to (human) readable

Little script to parse your Hashcat cracked ***$HEX[1234567890]*** to (human) readable format.

## Input

Create a file that contains at least the ***$HEX[1234567890]*** or the *--show* output from Hashcat as shown below.

```plain
$HEX[31303838333a4d6172796c616e64]
$HEX[3435343533356c3a66647266]
```

```plain
b9ee56f2d714f1ccd9798df5fc3a1277:$HEX[31303838333a4d6172796c616e64]
bb4339131ed529effe0adbb7d558b9ea:$HEX[3435343533356c3a66647266]
```

## Output

Script will create *clears.txt* file which contains the original HEX value and the plaintext variant.

Some example output:

```plain
HEX: 56696c6c616c6f626f7335353a | Plain: Villalobos55:
HEX: 4bfc6e646967756e673139 | Plain: Kündigung19
HEX: 466f72e761666532 | Plain: Forçafe2
HEX: 536368e464656c323321 | Plain: Schädel23!
HEX: 4672fc686c696e673230313821 | Plain: Frühling2018!
HEX: 5073616c6d37333a3236 | Plain: Psalm73:26
HEX: 44fc7373656c646f72662e3139 | Plain: Düsseldorf.19
```
