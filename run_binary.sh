#!/usr/bin/env bash

ROOT=$(git rev-parse --show-toplevel)
RESULTS_ROOT="${ROOT}/results"

# mkdir -p ${RESULTS_ROOT}

### NAME YOUR EXPERIMENT HERE ##
EXP_NAME="bert-binary-with-rubric"
################################

## Local variables for current experiment
EXP_ROOT="${RESULTS_ROOT}/${EXP_NAME}"
export WANDB_PROJECT="asap-binary"
export WANDB_NAME="${EXP_NAME}"
mkdir -p ${EXP_ROOT}
#Train model. Defaults are used for any argument not specified here. Use "\" to add arguments over multiple lines.
python src/train_binary.py --save-dir "${EXP_ROOT}" \
    --model-name "bert-base-uncased" \
    --no-save \
    --batch-size 16 \
    --lr 2e-5 \
    --lr2 5e-4 \
    --max-epoch 5 \
    --freeze-layers 6 \

            
                
               
