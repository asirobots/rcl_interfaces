# Default values for transitions
# as described on
# http://design.ros2.org/articles/node_lifecycle.html

# Externally available transitions.
# When a node is in one of these primary states,
# these transitions can be invoked.
uint8 TRANSITION_CREATE = 0
uint8 TRANSITION_CONFIGURE = 1
uint8 TRANSITION_CLEANUP = 2
uint8 TRANSITION_ACTIVATE = 3
uint8 TRANSITION_DEACTIVATE = 4
uint8 TRANSITION_SHUTDOWN = 5
uint8 TRANSITION_DESTROY = 6

# These transitions are not publically
# available and cannot be invoked by a user.
# The following transitions are implicitly
# invoked based on the callback feedback
# of the intermediate transition states.
uint8 TRANSITION_ON_CONFIGURE_SUCCESS = 10
uint8 TRANSITION_ON_CONFIGURE_FAILURE = 11
uint8 TRANSITION_ON_CONFIGURE_ERROR = 12

uint8 TRANSITION_ON_CLEANUP_SUCCESS = 20
uint8 TRANSITION_ON_CLEANUP_FAILURE = 21
uint8 TRANSITION_ON_CLEANUP_ERROR = 22

uint8 TRANSITION_ON_ACTIVATE_SUCCESS = 30
uint8 TRANSITION_ON_ACTIVATE_FAILURE = 31
uint8 TRANSITION_ON_ACTIVATE_ERROR = 32

uint8 TRANSITION_ON_DEACTIVATE_SUCCESS = 40
uint8 TRANSITION_ON_DEACTIVATE_FAILURE = 41
uint8 TRANSITION_ON_DEACTIVATE_ERROR = 42

uint8 TRANSITION_UNCONFIGURED_SHUTDOWN  = 50
uint8 TRANSITION_INACTIVE_SHUTDOWN = 51
uint8 TRANSITION_ACTIVE_SHUTDOWN = 52
uint8 TRANSITION_ON_SHUTDOWN_SUCCESS = 53
uint8 TRANSITION_ON_SHUTDOWN_FAILURE = 54
uint8 TRANSITION_ON_SHUTDOWN_ERROR = 55

uint8 TRANSITION_ON_ERROR_SUCCESS = 60
uint8 TRANSITION_ON_ERROR_FAILURE = 61
uint8 TRANSITION_ON_ERROR_ERROR = 62

uint8 id
string label
