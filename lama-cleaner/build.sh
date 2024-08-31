mkdir -p cache

pushd cache

# wget -O big-lama.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_big_lama/big-lama.pt
# wget -O cond_stage_model_encode.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/cond_stage_model_encode.pt
# wget -O cond_stage_model_decode.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/cond_stage_model_decode.pt
# wget -O diffusion.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/diffusion.pt
# wget -O manga_inpaintor.jit https://ghproxy.com/https://github.com/Sanster/models/releases/download/manga/manga_inpaintor.jit
# wget -O erika.jit https://ghproxy.com/https://github.com/Sanster/models/releases/download/manga/erika.jit
# wget -O clickseg_pplnet.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/clickseg_pplnet/clickseg_pplnet.pt

# copy by ChatGPT
if [ ! -f big-lama.pt ]; then
  wget -O big-lama.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_big_lama/big-lama.pt
fi

if [ ! -f cond_stage_model_encode.pt ]; then
  wget -O cond_stage_model_encode.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/cond_stage_model_encode.pt
fi

if [ ! -f cond_stage_model_decode.pt ]; then
  wget -O cond_stage_model_decode.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/cond_stage_model_decode.pt
fi

if [ ! -f diffusion.pt ]; then
  wget -O diffusion.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/add_ldm/diffusion.pt
fi

if [ ! -f manga_inpaintor.jit ]; then
  wget -O manga_inpaintor.jit https://ghproxy.com/https://github.com/Sanster/models/releases/download/manga/manga_inpaintor.jit
fi

if [ ! -f erika.jit ]; then
  wget -O erika.jit https://ghproxy.com/https://github.com/Sanster/models/releases/download/manga/erika.jit
fi

if [ ! -f clickseg_pplnet.pt ]; then
  wget -O clickseg_pplnet.pt https://ghproxy.com/https://github.com/Sanster/models/releases/download/clickseg_pplnet/clickseg_pplnet.pt
fi

popd


version=0.0.5
docker build --platform=linux/amd64  -t registry.lazycat.cloud/cwq1913/lama-cleaner-dademon:$version .