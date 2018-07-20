export PYTHONPATH="${PYTHONPATH}:$(pwd)/nmt"

python -m nmt.nmt\
    --attention=scaled_luong \
    --src=complex --tgt=simple \
    --subword_option=bpe \
    --vocab_prefix=data/WikNet/vocab.tok.bpe \
    --train_prefix=data/WikNet/good_partial.train.tok.bpe \
    --dev_prefix=data/WikNet/good_partial.val.tok.bpe \
    --test_prefix=data/WikNet/good_partial.test.tok.bpe \
    --out_dir=model/nmt_attention_bpe_2_layers_lower \
    --num_train_steps=20000 \
    --steps_per_stats=50 \
    --num_layers=2 \
    --num_units=128\
    --dropout=0.25 \
    --metrics=bleu
