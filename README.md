# os



```bash
export COSIGN_CERTIFICATE_OIDC_ISSUER="https://token.actions.githubusercontent.com"
export COSIGN_CERTIFICATE_IDENTITY="https://github.com/lauritskarl/bootc-workstation/.github/workflows/build.yaml@refs/heads/main"
cosign verify ghcr.io/lauritskarl/bootc-workstation
```

rpc-auth generator: https://jlopp.github.io/bitcoin-core-rpc-auth-generator/