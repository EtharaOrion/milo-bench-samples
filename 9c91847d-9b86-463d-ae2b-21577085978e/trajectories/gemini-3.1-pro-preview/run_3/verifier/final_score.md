# Score — gemini-3.1-pro-preview/run_3

Task: Textualize__rich-873 (`9c91847d-9b86-463d-ae2b-21577085978e`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.4857  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.1429 |
| rubric | 0.1877 |
| **process** = (det + 0.4857·rubric) / 1.4857 | 0.1575 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0158 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0127 |
