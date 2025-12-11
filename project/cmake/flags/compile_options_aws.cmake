# add compile flags

# Compile Warnings
list(
	APPEND c_GLOBAL_COMMON_COMPILE_C_OPTIONS
	-Wno-undef
	-Wno-error
	-w
)
