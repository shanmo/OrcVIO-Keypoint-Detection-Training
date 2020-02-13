python main.py -expID Pstar -task star &&
python main.py -expID Pstaremb -task staremb -loadModel ../exp/Pstar/model_cpu.pth -dropLR 60 &&
python main.py -expID Pstarembdep -task starembdep -loadModel ../exp/Pstaremb/model_cpu.pth -dropLR 60
