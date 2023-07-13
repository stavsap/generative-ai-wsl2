# LLM Fine Tuning

[The Novice's LLM Training Guide](https://rentry.org/llm-training#native-fine-tuning)


## Qlora autotrain 

``` shell
autotrain llm --train --project_name output --model Salesforce/xgen-7b-8k-base --data_path data --use_peft  --use_int4 --trainer sft --learning_rate 2e-4
```

## parquet

- [write parquet format](https://stackoverflow.com/questions/32940416/methods-for-writing-parquet-files-using-python)
- [parquet to csv](https://stackoverflow.com/questions/51215166/convert-parquet-to-csv)
