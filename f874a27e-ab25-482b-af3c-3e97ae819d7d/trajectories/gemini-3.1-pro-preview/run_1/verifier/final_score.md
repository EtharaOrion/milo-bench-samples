# Score — gemini-3.1-pro-preview/run_1

Task: seaweedfs__seaweedfs-6715 (`f874a27e-ab25-482b-af3c-3e97ae819d7d`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.6541  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.8333 |
| rubric | 0.4574 |
| **process** = (det + 0.6541·rubric) / 1.6541 | 0.6847 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.5185 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.4500 |
