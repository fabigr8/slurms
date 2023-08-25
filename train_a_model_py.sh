#!/bin/bash
# Name of the job:
#SBATCH -J train_classifier
#SBATCH -A <jmu_account_name>
#SBATCH --no-requeue 
#SBATCH -p <partition>
#SBATCH --nodes=5
#SBATCH --ntasks=1
##SBATCH --exclusive
#SBATCH --gres=gpu:5
#SBATCH --mail-user=XXXXXXX@uni-wuerzburg.de
#SBATCH --mail-type=END
#SBATCH --time=12:00:00

#source ~/.bashrc

echo '------------------'
date
echo '------------------'

module load miniconda/3
conda init bash

conda activate fabigr8_env

cd ~/developments/hexoga_llm

# Use the FOLD variable here
python main.py

echo '------------------'
date
echo '------------------'
