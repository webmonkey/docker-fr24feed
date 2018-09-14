build:
	docker build -t webmonkey/fr24feed .


run:
	docker run --rm -it --network adsb-containers_adsb -p 8754:8754 webmonkey/fr24feed
