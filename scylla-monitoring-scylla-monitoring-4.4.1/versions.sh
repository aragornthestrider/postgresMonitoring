unset SUPPORTED_VERSIONS
unset MANAGER_SUPPORTED_VERSIONS
unset DEFAULT_VERSION
unset MANAGER_DEFAULT_VERSION
unset DEFAULT_ENTERPRISE_VERSION
unset DOCKER_LIMITS
unset DOCKER_PARAMS
declare -A SUPPORTED_VERSIONS
declare -A MANAGER_SUPPORTED_VERSIONS
declare -A DEFAULT_VERSION
declare -A MANAGER_DEFAULT_VERSION
declare -A DEFAULT_ENTERPRISE_VERSION
declare -A DOCKER_LIMITS
declare -A DOCKER_PARAMS
SUPPORTED_VERSIONS["3.8"]="4.3,4.4,4.5,2020.1,2021.1,master"
MANAGER_SUPPORTED_VERSIONS["3.8"]="2.3,2.4,2.5"
DEFAULT_VERSION["3.8"]="4.4"
DEFAULT_ENTERPRISE_VERSION["3.8"]="2020.1"
MANAGER_DEFAULT_VERSION["3.8"]="2.4"
SUPPORTED_VERSIONS["3.9"]="4.3,4.4,4.5,4.6,2020.1,2021.1,master"
MANAGER_SUPPORTED_VERSIONS["3.9"]="2.3,2.4,2.5,2.6"
DEFAULT_VERSION["3.9"]="4.4"
DEFAULT_ENTERPRISE_VERSION["3.9"]="2020.1"
MANAGER_DEFAULT_VERSION["3.9"]="2.4"
SUPPORTED_VERSIONS["3.10"]="4.3,4.4,4.5,4.6,2020.1,2021.1,master"
MANAGER_SUPPORTED_VERSIONS["3.10"]="2.3,2.4,2.5,2.6"
DEFAULT_VERSION["3.10"]="4.4"
DEFAULT_ENTERPRISE_VERSION["3.10"]="2020.1"
MANAGER_DEFAULT_VERSION["3.10"]="2.5"
SUPPORTED_VERSIONS["3.11"]="4.4,4.5,4.6,5.0,2020.1,2021.1,2022.1,master"
MANAGER_SUPPORTED_VERSIONS["3.11"]="2.3,2.4,2.5,2.6"
DEFAULT_VERSION["3.11"]="5.0"
DEFAULT_ENTERPRISE_VERSION["3.11"]="2021.1"
MANAGER_DEFAULT_VERSION["3.11"]="2.6"
SUPPORTED_VERSIONS["4.0"]="4.4,4.5,4.6,5.0,2020.1,2021.1,2022.1,master"
MANAGER_SUPPORTED_VERSIONS["4.0"]="2.3,2.4,2.5,2.6,3.0"
DEFAULT_VERSION["4.0"]="5.0"
DEFAULT_ENTERPRISE_VERSION["4.0"]="2022.1"
MANAGER_DEFAULT_VERSION["4.0"]="3.0"
SUPPORTED_VERSIONS["4.1"]="4.5,4.6,5.0,5.1,2020.1,2021.1,2022.1,2022.2,master"
MANAGER_SUPPORTED_VERSIONS["4.1"]="2.5,2.6,3.0"
DEFAULT_VERSION["4.1"]="5.1"
DEFAULT_ENTERPRISE_VERSION["4.1"]="2022.2"
MANAGER_DEFAULT_VERSION["4.1"]="3.0"
SUPPORTED_VERSIONS["4.2"]="4.5,4.6,5.0,5.1,2020.1,2021.1,2022.1,2022.2,master"
MANAGER_SUPPORTED_VERSIONS["4.2"]="2.5,2.6,3.0"
DEFAULT_VERSION["4.2"]="5.1"
DEFAULT_ENTERPRISE_VERSION["4.2"]="2022.2"
MANAGER_DEFAULT_VERSION["4.2"]="3.0"
SUPPORTED_VERSIONS["4.3"]="5.0,5.1,5.2,2020.1,2021.1,2022.1,2022.2,master"
MANAGER_SUPPORTED_VERSIONS["4.3"]="2.5,2.6,3.0"
DEFAULT_VERSION["4.3"]="5.1"
DEFAULT_ENTERPRISE_VERSION["4.3"]="2022.2"
MANAGER_DEFAULT_VERSION["4.3"]="3.0"
SUPPORTED_VERSIONS["4.4"]="5.0,5.1,5.2,5.3,2020.1,2021.1,2022.1,2022.2,2023.1,master"
DEFAULT_VERSION["4.4"]="5.2"
DEFAULT_ENTERPRISE_VERSION["4.4"]="2023.1"
MANAGER_DEFAULT_VERSION["4.4"]="3.1"
MANAGER_SUPPORTED_VERSIONS["4.4"]="3.0,3.1"
MANAGER_DEFAULT_VERSION["master"]="3.1"
PROMETHEUS_VERSION=v2.44.0
ALERT_MANAGER_VERSION="v0.25.0"
GRAFANA_VERSION=9.5.3
LOKI_VERSION="2.8.2"
GRAFANA_RENDERER_VERSION="3.5.0"
THANOS_VERSION="v0.31.0"
VICTORIA_METRICS_VERSION="v1.86.0"