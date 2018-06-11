#!/bin/bash
#
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=80000
#SBATCH --gres=gpu:1
#SBATCH --time=160:00:00
#SBATCH --partition gpu
#SBATCH --job-name=gpujob

module load languages/anaconda2/5.0.1
module load tools/bazel/0.7.0

srun python train.py --dataset=summer2winter_yosemite
