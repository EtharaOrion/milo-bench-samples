# Score — gemini-3.1-pro-preview/run_2

Task: 99designs__gqlgen-3296 (`3af7770f-59fd-4d93-ab3d-9ff8d9d5372b`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.3826  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.3333 |
| rubric | 0.8932 |
| **process** = (det + 0.3826·rubric) / 1.3826 | 0.4883 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9488 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 1.0000 |
