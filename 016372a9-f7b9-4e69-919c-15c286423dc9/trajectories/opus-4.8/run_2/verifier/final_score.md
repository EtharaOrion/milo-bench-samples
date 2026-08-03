# Score — opus-4.8/run_2

Task: go-gorm__gorm-4888 (`016372a9-f7b9-4e69-919c-15c286423dc9`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.7565  

| channel | score |
|---|--:|
| outcome | 0.9987864077669902 |
| deterministic (soft) | 0.5490 |
| rubric | 0.5077 |
| **process** = (det + 0.7565·rubric) / 1.7565 | 0.5312 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.009804 | 0.9896 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9890 |
