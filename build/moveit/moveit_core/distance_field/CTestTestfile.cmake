# CMake generated Testfile for 
# Source directory: /home/robot/ws_moveit/src/moveit/moveit_core/distance_field
# Build directory: /home/robot/ws_moveit/build/moveit/moveit_core/distance_field
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_moveit_core_gtest_test_voxel_grid "/home/robot/ws_moveit/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/robot/ws_moveit/build/test_results/moveit_core/gtest-test_voxel_grid.xml" "--return-code" "/home/robot/ws_moveit/devel/lib/moveit_core/test_voxel_grid --gtest_output=xml:/home/robot/ws_moveit/build/test_results/moveit_core/gtest-test_voxel_grid.xml")
set_tests_properties(_ctest_moveit_core_gtest_test_voxel_grid PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/robot/ws_moveit/src/moveit/moveit_core/distance_field/CMakeLists.txt;21;catkin_add_gtest;/home/robot/ws_moveit/src/moveit/moveit_core/distance_field/CMakeLists.txt;0;")
add_test(_ctest_moveit_core_gtest_test_distance_field "/home/robot/ws_moveit/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/robot/ws_moveit/build/test_results/moveit_core/gtest-test_distance_field.xml" "--return-code" "/home/robot/ws_moveit/devel/lib/moveit_core/test_distance_field --gtest_output=xml:/home/robot/ws_moveit/build/test_results/moveit_core/gtest-test_distance_field.xml")
set_tests_properties(_ctest_moveit_core_gtest_test_distance_field PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/robot/ws_moveit/src/moveit/moveit_core/distance_field/CMakeLists.txt;24;catkin_add_gtest;/home/robot/ws_moveit/src/moveit/moveit_core/distance_field/CMakeLists.txt;0;")