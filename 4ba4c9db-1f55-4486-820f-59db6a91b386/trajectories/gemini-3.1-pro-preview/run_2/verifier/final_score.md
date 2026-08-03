# Score — gemini-3.1-pro-preview/run_2

Task: 99designs__gqlgen-1038 (`4ba4c9db-1f55-4486-820f-59db6a91b386`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.8538  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.5238 |
| rubric | 0.6638 |
| **process** = (det + 0.8538·rubric) / 1.8538 | 0.5883 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9588 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9500 |
