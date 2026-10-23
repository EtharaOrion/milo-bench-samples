# Score — opus-4.8/run_3

Task: babel__babel-13905 (`b7419275-8184-4485-9e8e-1404f64c1c38`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.7273  

| channel | score |
|---|--:|
| outcome | 0.25 |
| deterministic (soft) | 0.8750 |
| rubric | 0.7470 |
| **process** = (det + 0.7273·rubric) / 1.7273 | 0.8211 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.3071 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.3106 |
