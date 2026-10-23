# Score — gpt-5.6-sol/run_2

Task: langchain-ai__langchain-11513 (`1083ba1f-46cc-4d4e-9847-d39f0c9f681d`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.64  

| channel | score |
|---|--:|
| outcome | 0.16666666666666666 |
| deterministic (soft) | 0.3929 |
| rubric | 0.7474 |
| **process** = (det + 0.64·rubric) / 1.64 | 0.5312 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.038462 | 0.1947 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.1923 |
