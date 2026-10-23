# Score — opus-4.8/run_3

Task: babel__babel-13294 (`a43e74e0-ade1-445b-af96-b5c8b561ef27`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.8317  

| channel | score |
|---|--:|
| outcome | 0.7699115044247787 |
| deterministic (soft) | 0.1154 |
| rubric | 0.5473 |
| **process** = (det + 0.8317·rubric) / 1.8317 | 0.3115 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.009804 | 0.7609 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.7646 |
