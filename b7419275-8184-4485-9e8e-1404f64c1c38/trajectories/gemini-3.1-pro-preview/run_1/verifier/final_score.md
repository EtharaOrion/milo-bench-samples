# Score — gemini-3.1-pro-preview/run_1

Task: babel__babel-13905 (`b7419275-8184-4485-9e8e-1404f64c1c38`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.7273  

| channel | score |
|---|--:|
| outcome | 0.25 |
| deterministic (soft) | 0.5417 |
| rubric | 0.5627 |
| **process** = (det + 0.7273·rubric) / 1.7273 | 0.5505 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.2801 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.2250 |
