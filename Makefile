clear:
	docker-compose down
	sudo chown -R konstantin data/database data/nextcloud
	rm -rf data/database data/nextcloud

install-apps:
	docker-compose exec app bash -c "cd / && ./install-apps.sh"
