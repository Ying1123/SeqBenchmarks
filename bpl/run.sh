
#echo "================== Running old solver over vector_hard.bpl =================="
#~/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver vector_hard.bpl -monomorphize /env:2 /proverLog:vector_hard.smt2 /proverOpt:PROVER_PATH=/home/ying/CVC4/seq_prod/bin/cvc5 /proverOpt:O:strings-exp=true /proverOpt:O:strings-seq-update=false /proverOpt:O:full-saturate-quant=true /proverOpt:SOLVER=CVC5 /trace


#echo "============== Running new solver over vector_hard.bpl ==============="
#~/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver vector_hard.bpl -monomorphize /env:2 /proverOpt:PROVER_PATH=/home/ying/CVC4/seq_prod/bin/cvc5 /proverOpt:O:strings-exp=true /proverOpt:O:strings-seq-update=true /proverOpt:SOLVER=CVC5 /trace

#echo "============== Running new solver over inst_vector.bpl ==============="
#~/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver inst_vector.bpl -monomorphize /env:2 /proverLog:inst_vector.smt2 /proverOpt:PROVER_PATH=/home/ying/CVC4/seq_prod/bin/cvc5 /proverOpt:O:strings-exp=true /proverOpt:O:strings-seq-update=true /proverOpt:SOLVER=CVC5 /trace

#echo "============== Running old solver over inst_vector.bpl ==============="
#~/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver inst_vector.bpl -monomorphize /env:2 /proverLog:inst_vector.smt2 /proverOpt:PROVER_PATH=/home/ying/CVC4/seq_prod/bin/cvc5 /proverOpt:O:strings-exp=true /proverOpt:O:strings-seq-update=false /proverOpt:SOLVER=CVC5 /trace

