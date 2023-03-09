FROM python:3.10

LABEL org.opencontainers.image.source=https://github.com/tibeer/skopeo_worker
LABEL org.opencontainers.image.description="skopeo worker"

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt \
    && apt update \
    && apt install -y --no-install-recommends skopeo \
    && apt-get clean \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/* requirements.txt

COPY skopeo_mirror_wrapper.py .

CMD [ "python", "skopeo_mirror_wrapper.py" ]
