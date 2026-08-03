# Score — gemini-3.1-pro-preview/run_2

Task: go-gorm__gorm-4888 (`016372a9-f7b9-4e69-919c-15c286423dc9`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.7565  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.7500 |
| rubric | 0.3320 |
| **process** = (det + 0.7565·rubric) / 1.7565 | 0.5700 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.009804 | 0.9916 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9919 |
