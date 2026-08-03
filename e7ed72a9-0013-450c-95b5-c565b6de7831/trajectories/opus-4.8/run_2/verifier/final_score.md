# Score — opus-4.8/run_2

Task: langchain-ai__langchain-845 (`e7ed72a9-0013-450c-95b5-c565b6de7831`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.5794  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.8667 |
| rubric | 0.6762 |
| **process** = (det + 0.5794·rubric) / 1.5794 | 0.7968 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9797 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9561 |
