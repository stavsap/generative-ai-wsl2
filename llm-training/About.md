# LLM Fine Tuning

[](The Novice's LLM Training Guide (rentry.org)![image](https://github.com/stavsap/generative-ai-wsl2/assets/4201054/6f7655b9-d608-4ef7-8faf-08b9c8569170)
)

## Qlora autotrain 

autotrain llm --train --project_name output --model Salesforce/xgen-7b-8k-base --data_path data --use_peft  --use_int4 --trainer sft --learning_rate 2e-4
