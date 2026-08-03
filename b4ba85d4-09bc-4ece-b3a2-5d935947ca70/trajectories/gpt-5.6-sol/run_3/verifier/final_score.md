# Score — gpt-5.6-sol/run_3

Task: langchain-ai__langchain-9239 (`b4ba85d4-09bc-4ece-b3a2-5d935947ca70`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.4444  

| channel | score |
|---|--:|
| outcome | 0.7142857142857143 |
| deterministic (soft) | 0.3250 |
| rubric | 0.8982 |
| **process** = (det + 0.4444·rubric) / 1.4444 | 0.5014 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.6930 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.6929 |
