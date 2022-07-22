# CMake generated Testfile for 
# Source directory: /cygdrive/c/Code/cmake_tutorial/Step4
# Build directory: /cygdrive/c/Code/cmake_tutorial/Step4
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "25")
set_tests_properties(Runs PROPERTIES  _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;42;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Usage "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage:.*number" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;45;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp4 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "4")
set_tests_properties(Comp4 PROPERTIES  PASS_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;59;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp9 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "9")
set_tests_properties(Comp9 PROPERTIES  PASS_REGULAR_EXPRESSION "9 is 3" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;60;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp5 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "5")
set_tests_properties(Comp5 PROPERTIES  PASS_REGULAR_EXPRESSION "5 is 2.236" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;61;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp7 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "7")
set_tests_properties(Comp7 PROPERTIES  PASS_REGULAR_EXPRESSION "7 is 2.645" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;62;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp25 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "25")
set_tests_properties(Comp25 PROPERTIES  PASS_REGULAR_EXPRESSION "25 is 5" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;63;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp-25 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "-25")
set_tests_properties(Comp-25 PROPERTIES  PASS_REGULAR_EXPRESSION "-25 is (-nan|nan|0)" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;64;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
add_test(Comp0.0001 "/cygdrive/c/Code/cmake_tutorial/Step4/Tutorial.exe" "0.0001")
set_tests_properties(Comp0.0001 PROPERTIES  PASS_REGULAR_EXPRESSION "0.0001 is 0.01" _BACKTRACE_TRIPLES "/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;52;add_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;65;do_test;/cygdrive/c/Code/cmake_tutorial/Step4/CMakeLists.txt;0;")
subdirs("MathFunctions")
