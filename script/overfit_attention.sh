python -m nmt.nmt.nmt \
    --embed_prefix=model/GloVe/glove.6B.300d \
    --attention=scaled_luong \
    --src=complex --tgt=simple \
    --share_vocab=1 \
    --vocab_prefix=data/PWKP/vocab \
    --train_prefix=data/PWKP/val \
    --dev_prefix=data/PWKP/test \
    --test_prefix=data/PWKP/test \
    --out_dir=model/overfit_attention_glove \
    --num_train_steps=20000 \
    --steps_per_stats=50 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
