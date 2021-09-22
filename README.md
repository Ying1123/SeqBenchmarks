# SeqBenchmarks

The paths should be modified for scripts to run on a different environment.

1. ```bpl``` contains benchmarks from Shaz, which should be run by boogie.
2. ```diem``` contains benchmarks from diem. 

   (a)
   
   ```diem/modules_in_func``` is the major folder we care about. It contains benchmarks from diem repo in ```diem/language/diem-framework/modules```.
   The scripts were written to run modules by each function. There will be 500+ benchmarks (functions).
   Each module corresponding to a folder. For each module, each category has a folder. Inside each folder for categories, there are log files.
   run ```./one_button.sh``` to re-run all the benchmarks. The results will be written to result.csv
    
   (b)
   
   ```diem/functional``` contains benchmarks from diem repo in ```/diem/language/move-prover/tests/sources/functional```.
   ```diem/modules``` contains benchmarks from diem repo in ```diem/language/diem-framework/modules```.
   Each benchmark corresponding to a folder, which contains different log files generated by the scripts. ```*.t``` corresponding to running time.
   ```diem/modules/modules_summary.py``` is a script to generate csv from log files for modules benchmarks.
   ```diem/functional/functional_summary.py``` is a script to generate csv from log files for functional benchmarks.
   
   
3. ```SMT_LIB``` contains benchmarks from SMT_LIB, currently have sequence benchmarks translated from array benchmarks QF_AX.
4. ```cvc_regression``` contains handcrafted smt benchmarks, or some small benchmarks collected during debugging.
   
