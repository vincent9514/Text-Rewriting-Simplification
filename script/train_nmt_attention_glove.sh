export PYTHONPATH="${PYTHONPATH}:$(pwd)/nmt"

python -m nmt.nmt\
    --attention=scaled_luong \
    --src=complex --tgt=simple \
    --vocab_prefix=data/WikNet/vocab.tok\
    --train_prefix=data/WikNet/good_partial.train.tok\
    --embed_prefix=model/GloVe/glove.6B.100d\
    --dev_prefix=data/WikNet/good_partial.val.tok\
    --test_prefix=data/PWKP/good_partial.test.tok\
    --out_dir=model/nmt_attention_glove \
    --num_train_steps=20000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
