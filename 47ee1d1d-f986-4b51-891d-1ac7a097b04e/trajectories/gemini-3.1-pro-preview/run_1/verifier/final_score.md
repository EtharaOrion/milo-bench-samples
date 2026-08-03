# Score — gemini-3.1-pro-preview/run_1

Task: mswjs__msw-1096 (`47ee1d1d-f986-4b51-891d-1ac7a097b04e`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.7958  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.7647 |
| rubric | 0.8590 |
| **process** = (det + 0.7958·rubric) / 1.7958 | 0.8065 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0806 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.1000 |
