# Score — gemini-3.1-pro-preview/run_3

Task: langchain-ai__langchain-9239 (`b4ba85d4-09bc-4ece-b3a2-5d935947ca70`)  
Status: invalid  
Gate: VOID — B1-scored-status  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.4444  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.1364 |
| rubric | 0.1286 |
| **process** = (det + 0.4444·rubric) / 1.4444 | 0.1340 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0000 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0000 |
