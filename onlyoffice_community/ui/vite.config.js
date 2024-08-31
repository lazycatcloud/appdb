import { defineConfig, loadEnv } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig(({mode}) => {
  var env = loadEnv(mode, process.cwd())
  return {
    plugins: [vue({
      template: {
        compilerOptions: {
          isCustomElement: (tag) => tag.startsWith("lzc"),
        }
      }
    })],
    server: {
      proxy: {
        "/wopi": env.VITE_SERVER_BASE_URL,
         "/cool": {
          target: env.VITE_COLLABORA_WS_BASE_URL,
          ws: true,
        },
        "/browser": env.VITE_SERVER_BASE_URL,
        "/hosting": env.VITE_SERVER_BASE_URL, 
      }
    }
  }
})
