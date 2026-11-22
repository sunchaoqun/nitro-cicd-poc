FROM public.ecr.aws/amazonlinux/amazonlinux:minimal@sha256:75a2d4226d9b98c914d7eed878a03bef4f365ad548be5d28d464ccba504cec79
ARG GIT_SHA=unknown
COPY app/run.sh /app/run.sh
RUN printf '%s\n' "$GIT_SHA" > /app/commit && chmod 0444 /app/commit
USER 65534:65534
ENTRYPOINT ["/app/run.sh"]
