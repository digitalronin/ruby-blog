server:
	hugo server -D

build:
	hugo

# Remove 'draft: true' from front-matter of new post
# before publishing
publish:
	make build
	git add docs
	git commit -m "Publish: $$(date)"
	git push
