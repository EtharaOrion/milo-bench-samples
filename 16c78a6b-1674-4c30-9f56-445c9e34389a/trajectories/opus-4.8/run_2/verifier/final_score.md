# Score — opus-4.8/run_2

Task: gofiber__fiber-933 (`16c78a6b-1674-4c30-9f56-445c9e34389a`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.4433  

| channel | score |
|---|--:|
| outcome | 0.25 |
| deterministic (soft) | 0.6087 |
| rubric | 0.8206 |
| **process** = (det + 0.4433·rubric) / 1.4433 | 0.6738 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.2924 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.2631 |
