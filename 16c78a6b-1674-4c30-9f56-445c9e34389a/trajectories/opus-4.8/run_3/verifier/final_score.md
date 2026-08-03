# Score — opus-4.8/run_3

Task: gofiber__fiber-933 (`16c78a6b-1674-4c30-9f56-445c9e34389a`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.4433  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.9130 |
| rubric | 0.9302 |
| **process** = (det + 0.4433·rubric) / 1.4433 | 0.9183 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9918 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9500 |
