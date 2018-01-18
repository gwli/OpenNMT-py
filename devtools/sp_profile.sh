cmd="python train.py -data data/demo -save_model demo-model"
sp="/raid/tools/SP/SystemProfiler-linux-public-3.9.3747-52a8955/Target-x86_64/x86_64/sp"

cd ..
rm -fr ./*.qdstrm
$sp profile --delay=2 --duration=10 -o mgemm.qdstrm -t cuda,cublas,curand,pthread $cmd
