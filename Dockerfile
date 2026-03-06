# Base Stage
FROM ubuntu:22.04 AS base
RUN apt-get update && apt-get install cron -y && useradd devops
RUN mkdir -p /app && chown devops:devops /app

# Intermediate Stage
FROM base AS intermediate
COPY script.sh /app/script.sh
RUN chmod +x /app/script.sh
RUN echo "* * * * * devops /app/script.sh 1" > /etc/cron.d/myjob

# Final Stage
FROM intermediate AS final
RUN chmod 0644 /etc/cron.d/myjob
CMD ["cron", "-f"]
