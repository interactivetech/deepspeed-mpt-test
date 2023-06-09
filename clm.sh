
deepspeed --num_nodes=1 --num_gpus=8 examples/pytorch/language-modeling/run_clm.py --deepspeed ds_config_fp16_z2.json\
    --model_name_or_path gpt2-large \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --do_train \
    --do_eval \
    --fp16 \
    --per_device_train_batch_size 8 \
    --learning_rate 2e-5 \
    --num_train_epochs 2 \
    --output_dir /cstor/mendeza/hf_output/ \
    --overwrite_output_dir \
    --save_steps 0 \
    --max_steps 10000 \
    --save_strategy "no" \
    --cache_dir /cstor/mendeza/hf_test \
    --torch_dtype float16