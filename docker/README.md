## Running

### Prerequisites

At the moment, this image build will only work on Ubuntu host machines.  I'll try to circle back and make adjustments to improve kernel image resolution on other hosts but due to the nature of the tools involved to run QEMU and to manipulate guest OS disk images, this image is tied directly to specific Linux kernel verions. 

If you are doing this on an OSX machine with Apple Silicon, you'll want to make sure that you're running with Rosetta.  I am using `colima` with Rosetta enabled. 

### Building

To build the docker image, run
```shell
docker build --platform=linux/amd64 -f docker/Dockerfile .
```

I'm realizing now that I might be a bit silly using an amd64 platform image since the target build will run inside a Freedos image inside a QEMU instance anyways, so TODO for me: just run it with an arm64 platform target.