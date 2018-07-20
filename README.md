# Neural Text Simplification Using Tensorflow

This project is an exploration of dopting tensorflow's neural machine translation model ([nmt](https://github.com/tensorflow/nmt)) to text simplification task. It is similar to [Neural Text Simplification](https://github.com/senisioi/NeuralTextSimplification) which is based on [OpenNMT](https://github.com/OpenNMT/OpenNMT). An interactive demo is served at [simpletext.xyz](http://www.simpletext.xyz).

## Quick Start:
1. Clone the repository to your local machine recursively:
```bash
git clone --recursive https://github.com/captainjtx/SimpleText.git
```

2. Install the python packages:
```bash
cd SimpleText
pip install -r requirements.txt
```
3. Download pretrained model into local directory (./model):
```bash
mkdir model
python script/download_models.py
```

4. Run inference on one of the pretrained models (seq2seq, 2-hidden layer LSTM with Attention, dropout 0.25, [more info](https://github.com/tensorflow/nmt)). Default input is test/complex.tt, default output is test/inference.txt : 
```bash
mkdir test
cat "Science Fantasy is a genre where elements of science fiction and fantasy co-exist." > test/complext.txt
./script/test_attention.sh
less test/inference.txt
```

## Retrain the model
Our models are trained on the [Wikipedia corpus](http://ssli.ee.washington.edu/tial/projects/simplification). We performed a further data cleaning on the model to focus only on sentences that are shorter than the original ones (thresholding at 80%). After that, subword tokenization ([byte-pair encoding (bpe)](https://github.com/rsennrich/subword-nmt)) was performed to tackle the out-of-vocabulary problem. A nice jupyter notebook was provided to walk throught the complete preprocessing, including downloading the dataset, thresholding the sentence reduction and subword segmentation.

1. Open jupyter notebook:
```bash
jupyter notebook
```
2. Open WikNet_Explore.ipynb and run step by step.

3. Train on the generated dataset using [nmt](https://github.com/tensorflow/nmt):
```bash
./script/train_nmt_attention_bpe.sh
```
