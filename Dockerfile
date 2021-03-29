FROM postgres:13.2

ENV POSTGIS_VERSION 3

RUN set -ex; \
	DEBIAN_FRONTEND=noninteractive; \
	apt-get update; \
	apt-get install --no-install-recommends -y \
		postgresql-contrib \
		postgresql-$PG_MAJOR-postgis-$POSTGIS_VERSION \
		postgresql-$PG_MAJOR-postgis-$POSTGIS_VERSION-scripts \
		postgresql-$PG_MAJOR-pgrouting \
	; \
	apt-get clean; \
	rm -rf /var/lib/apt/lists/*
