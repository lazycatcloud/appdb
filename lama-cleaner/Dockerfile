# registry.lazycat.cloud/cwq1913/lama-cleaner:cpu-0.33.0
FROM cwq1913/lama-cleaner:cpu-0.33.0

ENV cachePath=/root/.cache/torch/hub/checkpoints

RUN mkdir -p ${cachePath}

COPY cache ${cachePath}

# ENV LAMA_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_big_lama/big-lama.pt
# ENV LDM_ENCODE_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/cond_stage_model_encode.pt
# ENV LDM_DECODE_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/cond_stage_model_decode.pt
# ENV LDM_DIFFUSION_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/diffusion.pt
# ENV MANGA_INPAINTOR_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/manga/manga_inpaintor.jit
# ENV MANGA_LINE_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/manga/erika.jit
# ENV INTERACTIVE_SEG_MODEL_URL=https://ghproxy.com/https://github.com/Sanster/models/releases/download/clickseg_pplnet/clickseg_pplnet.pt

CMD [ "lama-cleaner", "--model=lama", "--device=cpu", "--port=8080", "--host=0.0.0.0" ]

EXPOSE 8080
