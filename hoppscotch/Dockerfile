FROM hoppscotch/hoppscotch

COPY ./eval.js /app/packages/hoppscotch-web/dist
RUN echo "<script src=\"/eval.js\"></script>" >> /app/packages/hoppscotch-web/dist/index.html

EXPOSE 3000