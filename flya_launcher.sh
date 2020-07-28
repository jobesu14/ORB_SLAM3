#!/bin/bash
pathDatasetEuroc='/home/jobesu/datasets' #Example, it is necesary to change it by the dataset path

#------------------------------------
# Monocular Examples
#echo "Launching Flya with Monocular sensor"
#./Examples/Monocular-flya/mono_flya ./Vocabulary/ORBvoc.txt ./Examples/Monocular-flya/elios2.yaml "$pathDatasetEuroc"/Nendaz_019 dataset_nendaz_019_mono
#./Examples/Monocular-flya/mono_flya ./Vocabulary/ORBvoc.txt ./Examples/Monocular-flya/elios2.yaml "$pathDatasetEuroc"/Grimsel-520 dataset_grimsel_520_mono

#------------------------------------
# Monocular-Inertial Examples
#echo "Launching Flya with Monocular-Inertial sensor"
#./Examples/Monocular-Inertial-flya/mono_inertial_flya ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial-flya/elios2_1000.yaml "$pathDatasetEuroc"/Nendaz_019 dataset_nendaz_019_monoi
./Examples/Monocular-Inertial-flya/mono_inertial_flya ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial-flya/elios2_200.yaml "$pathDatasetEuroc"/Grimsel-520 dataset_grimsel_520_monoi
#./Examples/Monocular-Inertial-flya/mono_inertial_flya ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial-flya/elios2_1000.yaml "$pathDatasetEuroc"/Nendaz_019_60s dataset_nendaz_019_60s_monoi
