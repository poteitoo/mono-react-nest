RUN=docker compose exec pnpm

setup:
	make clean-modules
	pnpm install -r
	docker compose up --build -d
	${RUN} pnpm install
	make stop
	# docker compose build --no-cache --parallel

standalone:
	docker compose up --remove-orphans -d
	# ${RUN} pnpm dev

run:
	${RUN} ${}

start:
	docker compse up -d

stop:
	docker compose stop

rm-env:
	docker compose rm

clean-modules:
	find . -name node_modules -type d | \
	grep -v .yarn-cache | awk -F'node_modules' \
	'{print $$1}' | uniq | xargs -I{} rm -rf {}node_modules
