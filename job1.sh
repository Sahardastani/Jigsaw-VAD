#!/bin/bash
#SBATCH --mail-user=sahar.dastani4776@gmail.com
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=REQUEUE
#SBATCH --mail-type=ALL
#SBATCH --job-name=VAD
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --mem=32GB
#SBATCH --time=1-00:00
#SBATCH --account=rrg-ebrahimi

source /home/sdastani/env3.8/bin/activate

python /home/sdastani/projects/rrg-ebrahimi/sdastani/Jigsaw-VAD/gen_patches.py --dataset avenue --phase test --sample_num 7