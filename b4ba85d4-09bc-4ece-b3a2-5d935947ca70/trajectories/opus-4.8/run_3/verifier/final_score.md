# Score — opus-4.8/run_3

Task: langchain-ai__langchain-9239 (`b4ba85d4-09bc-4ece-b3a2-5d935947ca70`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.4444  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.7222 |
| rubric | 0.7503 |
| **process** = (det + 0.4444·rubric) / 1.4444 | 0.7309 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9731 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9000 |
