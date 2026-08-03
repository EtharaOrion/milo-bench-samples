# Score — opus-4.8/run_1

Task: Textualize__rich-873 (`9c91847d-9b86-463d-ae2b-21577085978e`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.4857  

| channel | score |
|---|--:|
| outcome | 0.625 |
| deterministic (soft) | 0.5143 |
| rubric | 0.3826 |
| **process** = (det + 0.4857·rubric) / 1.4857 | 0.4712 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.6096 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.6125 |
