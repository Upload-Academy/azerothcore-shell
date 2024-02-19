
# Just some useful functions to help along the way

# Used as a way of printing errors and exiting
error() {
    echo "ERROR: ${1} -- Stopping!"
    exit 1
}

warning() {
    echo "WARNING: ${1} -- Continuing..."
}

info() {
    echo "INFO: ${1}"
}
