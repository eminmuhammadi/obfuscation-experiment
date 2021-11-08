# !/bin/bash

# Variables
platform=windows
architecture=amd64
folder=build/pure
app=app-pure.exe

# Command line arguments 
#
# GOOS - Target Operating System	GOARCH - Target Platform
# -----------------------------------------------------------
# android	                        arm
# darwin	                        386
# darwin	                        amd64
# darwin	                        arm
# darwin	                        arm64
# dragonfly	                        amd64
# freebsd	                        386
# freebsd	                        amd64
# freebsd	                        arm
# linux	                            386
# linux	                            amd64
# linux	                            arm
# linux	                            arm64
# linux	                            ppc64
# linux	                            ppc64le
# linux	                            mips
# linux	                            mipsle
# linux	                            mips64
# linux	                            mips64le
# netbsd	                        386
# netbsd	                        amd64
# netbsd	                        arm
# openbsd	                        386
# openbsd	                        amd64
# openbsd	                        arm
# plan9	                            386
# plan9	                            amd64
# solaris	                        amd64
# windows	                        386
# windows	                        amd64

# Build folder
rm -rf $folder
mkdir -p $folder

# Execute builder
time {
    env GOOS=$platform GOARCH=$architecture go build -o $folder/$app github.com/eminmuhammadi/obfuscation-experiment

    # Generate Shasum
    sha256sum $folder/$app > $folder/$app.sha256
    cat $folder/$app.sha256
    echo "Build has been successfully completed."

} || { 
    echo "Build has been failed."
}