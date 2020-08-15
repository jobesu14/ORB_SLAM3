echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build c:/Projects/research/ORB_SLAM3/Thirdparty/DBoW2/build --config Release --target ALL_BUILD -- /maxcpucount:10


cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build c:/Projects/research/ORB_SLAM3/Thirdparty/g2o/build --config Release --target ALL_BUILD -- /maxcpucount:10

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM3 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build c:/Projects/research/ORB_SLAM3/build --config Release --target ALL_BUILD -- /maxcpucount:10

cd ..