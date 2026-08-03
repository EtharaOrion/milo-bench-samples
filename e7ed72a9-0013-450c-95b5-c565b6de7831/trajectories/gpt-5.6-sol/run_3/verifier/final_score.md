# Score — gpt-5.6-sol/run_3

Task: langchain-ai__langchain-845 (`e7ed72a9-0013-450c-95b5-c565b6de7831`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.5794  

| channel | score |
|---|--:|
| outcome | 0.4444444444444444 |
| deterministic (soft) | 0.0500 |
| rubric | 0.8180 |
| **process** = (det + 0.5794·rubric) / 1.5794 | 0.3317 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.4332 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.4030 |
