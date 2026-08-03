# Score — opus-4.8/run_1

Task: mswjs__msw-1096 (`47ee1d1d-f986-4b51-891d-1ac7a097b04e`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.7958  

| channel | score |
|---|--:|
| outcome | 0.6666666666666666 |
| deterministic (soft) | 0.7059 |
| rubric | 0.4598 |
| **process** = (det + 0.7958·rubric) / 1.7958 | 0.5968 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.6597 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.6500 |
