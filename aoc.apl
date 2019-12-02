fuel ← {¯2+⌊⍵÷3} ⍝ per module
sum_fuel ← {⊃{+/{{0⌈fuel ⍵} ⍣⍵ ∆}¨⍳20⊣∆←⍵;∆}⍵} ⍝ 20 iterations to decay to 0
