# set CMAKE_SYSTEM_NAME to define build as CMAKE_CROSSCOMPILING
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION Cortex-M4-STM32F407)
set(CMAKE_SYSTEM_PROCESSOR arm)

find_program(CROSS_GCC_PATH "arm-none-eabi-gcc")
if (NOT CROSS_GCC_PATH)
  message(FATAL_ERROR "Cannot find ARM GCC compiler: arm-none-eabi-gcc")
endif()
get_filename_component(TOOLCHAIN ${CROSS_GCC_PATH} PATH)


set(CMAKE_C_COMPILER ${TOOLCHAIN}/arm-none-eabi-gcc)
set(CMAKE_Cxx_COMPILER ${TOOLCHAIN}/arm-none-eabi-g++)
set(TOOLCHAIN_AS ${TOOLCHAIN}/arm-none-eabi-as CACHE STRING "arm-none-eabi-as")
set(TOOLCHAIN_LD ${TOOLCHAIN}/arm-none-eabi-ld CACHE STRING "arm-none-eabi-ld")
set(TOOLCHAIN_SIZE ${TOOLCHAIN}/arm-none-eabi-size CACHE STRING "arm-none-eabi-size")

# --specs=nano.specs is both a compiler and linker option
set(ARM_OPTIONS -mcpu=cortex-m4 -mfloat-abi=soft --specs=nano.specs)

add_compile_options(
  ${ARM_OPTIONS}
  -fmessage-length=0
  -funsigned-char
  -ffunction-sections
  -fdata-sections
  -MMD
  -MP)

# cmake-generator-expressions
# see https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html
# $<CONFIG:DEBUG> is true if this is a debug build type 
# Conditional Expressions: $<condition:true_string>
add_compile_definitions(
  STM32F407xx
  USE_FULL_ASSERT
  $<$<CONFIG:DEBUG>:OS_USE_TRACE_SEMIHOSTING_STDOUT>
  $<$<CONFIG:DEBUG>:OS_USE_SEMIHOSTING>
)

# use this to avoid running the linker during test compilation
# set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# use these options to verify the linker can create an ELF file
# when not doing a static link

add_link_options(
  ${ARM_OPTIONS}
  $<$<CONFIG:DEBUG>:--specs=rdimon.specs>
  $<$<CONFIG:RELEASE>:--specs=nosys.specs>
  $<$<CONFIG:DEBUG>:-u_printf_float>
  $<$<CONFIG:DEBUG>:-u_scanf_float>
  -nostartfiles
  LINKER:--gc-sections
  LINKER:--build-id)

# rather than 
# $<$<CONFIG:RELEASE>:some string>
# we could 
# $<$<NOT:$<CONFIG:DEBUG>>:some string>


set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

