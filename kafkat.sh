#!/bin/bash

kubectl --namespace=kafka run -i -t kafkat --image=djenriquez/kafkat --restart=Never --env="ZK_PATH=zookeeper.kafka-prod.svc.cluster.local:2181" --rm=true -- $@
