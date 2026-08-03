# Score — opus-4.8/run_2

Task: juanfont__headscale-1681 (`5ade486d-6686-4fb9-a45b-c8cdc007f2bb`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.8033  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.1042 |
| rubric | 0.1877 |
| **process** = (det + 0.8033·rubric) / 1.8033 | 0.1414 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0141 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0272 |
