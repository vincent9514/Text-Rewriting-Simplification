python -m nmt.nmt.nmt \
    --src=complex --tgt=simple \
    --vocab_prefix=data/PWKP/vocab  \
    --train_prefix=data/PWKP/train \
    --dev_prefix=data/PWKP/val \
    --test_prefix=data/PWKP/test\
    --out_dir=data/PWKP/model \
    --num_train_steps=50000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu

