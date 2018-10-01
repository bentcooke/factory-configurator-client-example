# global defines and configuration goes here...
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../)

set(SA_PV_OS_NAME "linux")

#SET(PAL_TLS_BSP_DIR ${NEW_CMAKE_SOURCE_DIR}/mbed-cloud-client/mbed-client-pal/Configs/mbedTLS)
SET(PAL_TLS_BSP_DIR ${NEW_CMAKE_SOURCE_DIR}/mbed-cloud-client/mbed-client-pal/Configs/${TLS_LIBRARY})

add_definitions(
	-DMBED_CONF_MBED_TRACE_ENABLE=1
	-DMBEDTLS_CONFIG_FILE="\\"${PAL_TLS_BSP_DIR}/mbedTLSConfig_${OS_BRAND}.h"\\"
	-DPAL_USER_DEFINED_CONFIGURATION="\\"source/sotp_fs_config_linux.h"\\"
	-DMBED_CLIENT_USER_CONFIG_FILE="\\"source/mbed_cloud_client_user_config.h"\\"
	-DMBED_CLOUD_CLIENT_USER_CONFIG_FILE="\\"source/mbed_cloud_client_user_config.h"\\"
	-DPAL_FS_MOUNT_POINT_PRIMARY="\\"/var/config/mbed\\""
	-DPAL_FS_MOUNT_POINT_SECONDARY="\\"/var/config/mbed\\""
)
