import configparser
import os

lzc_app_domain = os.getenv("LAZYCAT_APP_DOMAIN")
lzc_api = "https://{}/api".format(lzc_app_domain)

if lzc_app_domain is not None:
  print("workaround: use lzc app domain {}".format(lzc_api))
  config = configparser.ConfigParser()
  config.read('config.ini', encoding='utf-8')
  config["Web_API"]["Domain"] = lzc_api
  config.write(open('config.ini', "w", encoding="utf-8"))