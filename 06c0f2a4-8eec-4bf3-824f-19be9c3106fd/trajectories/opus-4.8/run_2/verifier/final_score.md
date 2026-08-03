# Score — opus-4.8/run_2

Task: numpy__numpy-15158 (`06c0f2a4-8eec-4bf3-824f-19be9c3106fd`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.7162  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.0952 |
| rubric | 0.8417 |
| **process** = (det + 0.7162·rubric) / 1.7162 | 0.4067 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.029412 | 0.4945 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.4914 |
