cmake_minimum_required(VERSION 3.5)

project(rcl_interfaces)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

# ament_export_dependencies(rcl_interfaces)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/IntraProcessMessage.msg"
  "msg/ListParametersResult.msg"
  "msg/ParameterDescriptor.msg"
  "msg/ParameterEventDescriptors.msg"
  "msg/ParameterEvent.msg"
  "msg/Parameter.msg"
  "msg/ParameterType.msg"
  "msg/ParameterValue.msg"
  "msg/SetParametersResult.msg"
  "srv/DescribeParameters.srv"
  "srv/GetParameters.srv"
  "srv/GetParameterTypes.srv"
  "srv/ListParameters.srv"
  "srv/SetParametersAtomically.srv"
  "srv/SetParameters.srv"
)

# this must happen before the invocation of ament_package()
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
