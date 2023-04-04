#!/bin/bash
set -ux

VOCAB_PATH=model/Bert/vocab.txt
DATA_DIR=data/GA_Dialogure
INIT_CHECKPOINT=model/PLATO
DATA_TYPE=multi_knowledge_topic_transfer


# Paddle environment settings.

python -u \
    ./preprocess.py \
    --vocab_path $VOCAB_PATH \
    --data_dir $DATA_DIR \
    --data_type $DATA_TYPE
