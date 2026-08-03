# Score — opus-4.8/run_1

Task: halo-dev__halo-2226 (`adc88585-1c5d-4a03-a88d-ca3e400d8d66`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.7143  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.1429 |
| rubric | 0.8421 |
| **process** = (det + 0.7143·rubric) / 1.7143 | 0.4342 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9434 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9206 |
