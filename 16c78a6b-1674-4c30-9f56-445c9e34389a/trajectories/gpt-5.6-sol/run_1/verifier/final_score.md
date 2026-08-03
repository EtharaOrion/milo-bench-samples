# Score — gpt-5.6-sol/run_1

Task: gofiber__fiber-933 (`16c78a6b-1674-4c30-9f56-445c9e34389a`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.4433  

| channel | score |
|---|--:|
| outcome | 0.25 |
| deterministic (soft) | 0.6087 |
| rubric | 0.8904 |
| **process** = (det + 0.4433·rubric) / 1.4433 | 0.6952 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.2945 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.2750 |
