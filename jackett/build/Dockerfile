FROM alpine:3.18.2 as build

RUN apk add dotnet6-sdk
RUN apk add bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
RUN apk add musl musl-dev musl-libintl musl-utils
COPY ./jackett /jackett
WORKDIR /jackett/src
RUN dotnet publish Jackett.Server -f net6.0 --self-contained -r linux-x64 -c Release

FROM mcr.microsoft.com/dotnet/aspnet:7.0-bullseye-slim
RUN rm -rf /app/Jackett
# RUN apk add --no-cache sqlite-libs gcompat bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
# RUN apk add gcompat
COPY --from=build /jackett/src/Jackett.Server/bin/Release/net6.0/linux-x64/publish /opt/Jackett
COPY --from=build /jackett/jackett_launcher.sh /opt/Jackett

WORKDIR /opt/Jackett

RUN mkdir /opt/JackettData
RUN chown -R 1000:1000 /opt/Jackett
RUN chown -R 1000:1000 /opt/JackettData
# RUN addgroup -S jackett
# RUN adduser --home /opt/JackettData --shell /sbin/nologin --ingroup jackett jackett
# RUN adduser -S -D -h /opt/JackettData -s /sbin/nologin jackett -G jackett
RUN useradd -b /opt/JackettData -s /sbin/nologin jackett

ENV command="/opt/Jackett/jackett"
ENV command_args="--NoRestart"
ENV command_user="jackett:jackett"
ENV command_background=true
ENV basedir="/opt/Jackett"
ENV datadir="/opt/JackettData"

RUN apt update && apt install sudo -y
COPY ./start.sh /start.sh

# USER jackett
ENTRYPOINT ["/start.sh"]
