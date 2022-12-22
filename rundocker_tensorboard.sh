#!/bin/bash
docker run -v $(pwd):/work  -u $(id -u):$(id -g) -it -p 6006:6006 tensorflow/tensorflow sh -c "cd /work/notebooks && tensorboard --logdir='logs/' --port=6006 --bind_all"
