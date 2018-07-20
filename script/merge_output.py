with open("../data/WikNet/good_partial.test.tok.complex", 'r') as fin:
	with open("../model/nmt_attention_bpe_2_layers/output_test", 'r') as fout:
		with open("../model/nmt_attention_bpe_2_layers/merge_test", 'w') as fmerge:
			fcomplex = fin.readlines()
			foutput = fout.readlines()
			for i in range(len(fcomplex)):
				fmerge.write(fcomplex[i])
				fmerge.write(foutput[i])
				fmerge.write('\n')
		
