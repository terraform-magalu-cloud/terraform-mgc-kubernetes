# Changelog

All notable changes to this project will be documented in this file.

## [2.0.0](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/compare/v1.0.2...v2.0.0) (2026-11-21)


### ⚠ BREAKING CHANGES

* - Dropped deprecated project_id variable
- Renamed outputs: subnet_id -> subnet_ids, cidr -> cluster_ipv4_cidr, dropped zone
- Changed default node pool flavor to BV2-4-40
- Raised minimum provider version to mgc ~> 0.56.0

### Features

* add manual workflow dispatch and release info parsing to telegram notification action ([c113e3c](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c113e3c4889084d9609ca00bc41750b09f42fa0b))
* add telegram notifications for releases and update CI workflows ([5b17329](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/5b17329d3bdb059cfd6110262c47b1e350111a7b))
* upgrade provider to mgc 0.56.0 and adopt new VM machine types ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))


### Bug Fixes

* bump required_version to >= 1.11.0 for write-only attribute support ([cb8b8ed](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/cb8b8ed13b4888d84c84c487800ea0cd20efc053))
* **ci:** add conventional-changelog-conventionalcommits to semantic-release extra_plugins ([53c062a](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/53c062a5997c2dc36db780f899a09e69304149c6))
* **ci:** pin conventional-changelog-conventionalcommits to v7 ([5abe78a](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/5abe78a08e8271a4de0576195daeb246d3bec12d))
* **ci:** pin semantic-release to v23.0.8 with compatible plugins and fallback token ([f7474c4](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/f7474c46a1b5ea22a511d19db4285e71fb6080fd))
* **ci:** update pre-commit-terraform to v1.99.5 and fix terraform_docs args ([a726b6a](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/a726b6ad184071a5b4359935e0f4e039a7b58746))
* **ci:** use native GITHUB_TOKEN instead of SEMANTIC_RELEASE_TOKEN ([54d9610](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/54d9610a84eb99209174af106fdb5f2b0f3a9e41))

## [2.0.0](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/compare/v1.0.2...v2.0.0) (2026-11-21)

### ⚠ BREAKING CHANGES

* **provider**: Raised minimum provider version to `magalucloud/mgc ~> 0.56.0`.
* **variables**: Dropped deprecated `project_id` input argument (project context is now inferred via API key / tenant).
* **node_pools**: Changed default node pool flavor to `BV2-4-40` following deprecation of `cloud-k8s.*` machine types.
* **outputs**:
  * Renamed `subnet_id` to `subnet_ids` (now returns `set(string)`).
  * Renamed `cidr` to `cluster_ipv4_cidr`.
  * Removed obsolete `zone` output (use `region`).

### Features

* **provider**: Upgrade `magalucloud/mgc` provider to `~> 0.56.0` ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **testing**: Implement comprehensive native `terraform test` testing suite covering default, advanced, disabled, async, and input validation scenarios ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **validation**: Add Kubernetes version pre-condition validation against `data.mgc_kubernetes_version` and regex semantic formatting ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **validation**: Add validation ensuring `min_replicas <= max_replicas` across all node pools ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **security**: Mask `kubeconfig` output as sensitive ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **notifications**: Add Telegram release notifications workflow via GitHub Actions ([5b17329](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/5b17329d3bdb059cfd6110262c47b1e350111a7b))
* **dx**: Add `Makefile` and `scripts/test.sh` for developer automation ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))

### Bug Fixes

* **create**: Fix resource planning and conditional creation when `var.create = false` ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **server_group**: Remove erroneous validation that blocked `enabled_server_group = true` ([c6c9b33](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/c6c9b33431957cddb1a20960c6b52e1ff682d7d5))
* **ci**: Fix PR validation permissions (`statuses: write`) and pre-commit test wrapper ([5b17329](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/5b17329d3bdb059cfd6110262c47b1e350111a7b))

## [1.0.2](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/compare/v1.0.1...v1.0.2) (2024-10-07)


### Bug Fixes

* adjust constrain provider version ([b45ae39](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/b45ae39ab44e38bcbc26f62deb0de8337635d700))

## [1.0.1](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/compare/v1.0.0...v1.0.1) (2024-09-29)


### Bug Fixes

* assync true and improv docs ([cbecea2](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/cbecea2d4902e9c7218b4201f3123d7c75b9fecc))

## 1.0.0 (2024-09-29)


### Features

* add docs ([6a39a8a](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/6a39a8a1250f7e2c22fcecc586b424e3c8577d9f))
* add lock terraform ([f10eab0](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/f10eab0f837bcc765e33a6664235bb73dad78295))
* available outputs ([991a111](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/991a1114ce2d007282b11163fbcf7dae0d570b66))
* improvment create nodepool ([8786b67](https://github.com/terraform-magalu-cloud/terraform-mgc-kubernetes/commit/8786b6767181727bb9541406e55bfffbf2aa65da))
