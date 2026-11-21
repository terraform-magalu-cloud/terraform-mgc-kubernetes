# Changelog

All notable changes to this project will be documented in this file.

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
