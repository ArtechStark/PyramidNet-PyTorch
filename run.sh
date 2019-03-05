#!/bin/bash
#SBATCH -J jack
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -t 30:00:00
#SBATCH --gres=gpu:2
module load anaconda3/5.3.0
python train.py --net_type pyramidnet --alpha 64 --depth 110 --no-bottleneck --batch_size 32 --lr 0.025 --print-freq 1 --expname PyramidNet-110 --dataset cifar10 --epochs 300
