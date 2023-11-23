```
./run.sh
./test ./dmp_trained_10_for_cpp.json cost.txt
python step1_train_dmp_from_trajectory_file.py trajectory.txt results/training --n 5
python plot_rollouts.py cost.txt task.json --save
```