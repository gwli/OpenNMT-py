cmd="python train.py -data data/demo -save_model demo-model"
sp="/raid/tools/SP/SystemProfiler-linux-public-4.0.1163-b6fa40c/Target-x86_64/x86_64/sp"

cd ..
rm -fr ./*.qdstrm
$sp profile --delay=2 --duration=10 -o OpenNMT-py.qdstrm -t cuda,cublas,curand,system $cmd
