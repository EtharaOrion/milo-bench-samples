# Score — gpt-5.6-sol/run_1

Task: Textualize__rich-873 (`9c91847d-9b86-463d-ae2b-21577085978e`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.4857  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.4643 |
| rubric | 0.2685 |
| **process** = (det + 0.4857·rubric) / 1.4857 | 0.4003 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0400 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0752 |
