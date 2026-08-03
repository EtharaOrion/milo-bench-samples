# Score — opus-4.8/run_1

Task: langchain-ai__langchain-9239 (`b4ba85d4-09bc-4ece-b3a2-5d935947ca70`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.4444  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 1.0000 |
| rubric | 0.8167 |
| **process** = (det + 0.4444·rubric) / 1.4444 | 0.9436 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9944 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 1.0000 |
