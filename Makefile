local:
	./build
deploy:
	./build
	rsync -avz site.static/ websites:/usr/local/www/langstroth.org/
rebuild:
	clean && ./build
clean:
	rm -rf site.static/*
