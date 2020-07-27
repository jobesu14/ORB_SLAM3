#!/bin/bash
pathDatasetEuroc='/home/jobesu/datasets' #Example, it is necesary to change it by the dataset path

#------------------------------------
# Monocular Examples
#echo "Launching MH01 with Monocular sensor"
#./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml "$pathDatasetEuroc"/MH01 ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono

#------------------------------------
# Monocular-Inertial Examples
echo "Launching Flya with Monocular-Inertial sensor"
./Examples/Monocular-Inertial-flya/mono_inertial_flya ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial-flya/elios2.yaml "$pathDatasetEuroc"/Nendaz_019 dataset_nendaz_019_monoi
