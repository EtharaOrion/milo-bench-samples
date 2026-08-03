# Score — gpt-5.6-sol/run_3

Task: 99designs__gqlgen-3296 (`3af7770f-59fd-4d93-ab3d-9ff8d9d5372b`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.3826  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.0882 |
| rubric | 0.7218 |
| **process** = (det + 0.3826·rubric) / 1.3826 | 0.2636 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.4764 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.4950 |
