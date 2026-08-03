# Score — opus-4.8/run_3

Task: Textualize__rich-1657 (`21f9747a-dccd-4012-b74b-1b6d67705adb`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.5977  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.5000 |
| rubric | 0.4527 |
| **process** = (det + 0.5977·rubric) / 1.5977 | 0.4823 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.4982 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.5107 |
