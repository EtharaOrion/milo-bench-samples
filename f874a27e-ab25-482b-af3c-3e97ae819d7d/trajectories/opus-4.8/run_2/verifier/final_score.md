# Score — opus-4.8/run_2

Task: seaweedfs__seaweedfs-6715 (`f874a27e-ab25-482b-af3c-3e97ae819d7d`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.6541  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.7500 |
| rubric | 0.7366 |
| **process** = (det + 0.6541·rubric) / 1.6541 | 0.7447 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.5245 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.4784 |
