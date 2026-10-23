# Score — opus-4.8/run_1

Task: langchain-ai__langchain-10480 (`0ae03990-71bf-4ab7-9788-d4084b1817c7`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.6125  

| channel | score |
|---|--:|
| outcome | 0.3611111111111111 |
| deterministic (soft) | 0.5000 |
| rubric | 0.6410 |
| **process** = (det + 0.6125·rubric) / 1.6125 | 0.5535 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.013514 | 0.3663 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.3649 |
