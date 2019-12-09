⍝x ← 1 2 3 4 5 6 7 8 9 0 1 2
fmt ← { 4 ⎕CR ⍵ }

∇Z ← A img B ;w;h;l
    (w h)←A ⍝ dimensions
    l ← (w×h)÷⍨⍴B ⍝ num layers 25 6
    Z ← (⍬⍴l) h w ⍴ B ⍝ 3d img
∇

∇Z ← chk B ;z;zl;sl
    z ← (({0=⍵})⍤1)B ⍝ zero mask
    zl ← ⊃({+/∈⍵}⍤2)z ⍝ zeros per layer
    sl ← B[1⊃⍋zl;;] ⍝ fewest zeroed layer
    Z ← {(+/1=⍵)×+/2=⍵}∈sl ⍝ 2's & 1's multiplied
∇

∇Z ← A decode B ;w;h;px;pxi
    (w h)←A ⍝ dimensions
    px ← ⊂[1](∈⍤¯1)B ⍝ as pixels
    pxi ← {(⍵⍳1)<⍵⍳0}¨px ⍝ first non-transparent pixel
    Z ← h w ⍴ {' █'[1+⍵]}¨pxi
∇

⍝ chk 25 6 img raw
⍝ 25 6 decode 25 6 img raw

