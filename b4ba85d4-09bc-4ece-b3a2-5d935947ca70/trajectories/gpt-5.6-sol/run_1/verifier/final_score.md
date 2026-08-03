# Score — gpt-5.6-sol/run_1

Task: langchain-ai__langchain-9239 (`b4ba85d4-09bc-4ece-b3a2-5d935947ca70`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.4444  

| channel | score |
|---|--:|
| outcome | 0.8571428571428571 |
| deterministic (soft) | 0.5417 |
| rubric | 0.8619 |
| **process** = (det + 0.4444·rubric) / 1.4444 | 0.6402 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.8354 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.8214 |
