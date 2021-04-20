# SPMDepNetrc

Test to verify [SPM support basic auth for non-git binary dependency hosts](https://forums.swift.org/t/spm-support-basic-auth-for-non-git-binary-dependency-hosts/37878)

A binary framework from SAP BTP SDK for iOS shall be made available from Repository Based Shipment Channel (RBSC) and RBSC requires authentication, see [documentation](https://help.sap.com/viewer/0a64be17478d4f5ba45d14ab62b0d74c/Cloud/en-US/7e83dfc309834942b441fc2106c5b7f5.html) and [tool]
(https://ui.repositories.cloud.sap/)

Locally on my machine I verified that binary framework gets downloaded during package resolution.

# TODO
- verify in CI environment by
  - use a GitHub action, e.g. [setup-nrc](https://github.com/marketplace/actions/setup-netrc) or [netrc](https://github.com/extractions/netrc) to set necessary entry in `~/.netrc` file
  - build Swift Package with Xcode 12.5 (requires macOS 11 image but [not yet avaiable](https://github.com/actions/virtual-environments/issues/2486))
