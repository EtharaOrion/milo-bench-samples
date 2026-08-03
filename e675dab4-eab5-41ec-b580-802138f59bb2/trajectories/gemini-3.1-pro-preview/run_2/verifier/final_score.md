# Score — gemini-3.1-pro-preview/run_2

Task: crossplane__crossplane-3105 (`e675dab4-eab5-41ec-b580-802138f59bb2`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.7662  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.8333 |
| rubric | 0.9118 |
| **process** = (det + 0.7662·rubric) / 1.7662 | 0.8674 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9867 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9551 |
