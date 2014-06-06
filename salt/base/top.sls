prod:
  'dev.frontend900.coscale.com':
    - app_coscale_com.coscale
  'prod*frontend*':
    - apache.apache
qa:
  'qa*frontend*':
    - apache.apache
dev:
  'dex*frontend*':
    - app_coscale_com.coscale
