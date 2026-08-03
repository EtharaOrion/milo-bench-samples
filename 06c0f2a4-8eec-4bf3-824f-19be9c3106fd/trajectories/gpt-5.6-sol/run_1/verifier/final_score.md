# Score — gpt-5.6-sol/run_1

Task: numpy__numpy-15158 (`06c0f2a4-8eec-4bf3-824f-19be9c3106fd`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.7162  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.1944 |
| rubric | 0.9661 |
| **process** = (det + 0.7162·rubric) / 1.7162 | 0.5165 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.029412 | 0.9716 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9706 |
