#!/bin/bash

CMD=(
	'shinken --version'
)

CONTAINERS=(
	'shinken_arbiter'
	'shinken_poller'
	'shinken_scheduler'
	'shinken_reactionner'
	'shinken_broker'
	'shinken_receiver'
)

for i in "${CMD[@]}"
do
	for CONTAINER in "${CONTAINERS[@]}"
	do
		echo $CONTAINER
		eval 'docker exec -it ' $CONTAINER $i
		echo '======================================================'
	done
done

echo 'shinken_broker'
docker port shinken_broker
echo '======================================================'
echo 'shinken_receiver'
docker port shinken_receiver
echo '======================================================'
