# Score — gpt-5.6-sol/run_3

Task: juanfont__headscale-1681 (`5ade486d-6686-4fb9-a45b-c8cdc007f2bb`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.8033  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.1458 |
| rubric | 0.1486 |
| **process** = (det + 0.8033·rubric) / 1.8033 | 0.1470 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0147 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0293 |
