# Samsung Exynos 5420/5422 Common Device Platform

Shared device platform and common configuration for Samsung Exynos 5420 and Exynos 5422 devices targeting **LineageOS 18.1 (Android 11)**.

## Overview

This repository provides shared hardware abstractions, common board configurations, shared services, init scripts, and SELinux policies for Exynos 5420/5422 platforms while preserving 5420 defaults and gating Exynos 5422 specific features via `TARGET_SOC` conditionals.

## Key Components

- **Common Board Configurations**: Shared memory maps, graphics allocations, and compilation flags.
- **Exynos 5422 Gating**: Conditional definitions for CPU frequency tables, thermal configurations, and board names.
- **Common SELinux Policies**: Base security context rules for Samsung SLSI hardware modules.
- **Common Seccomp & GPS Policies**: System-wide platform integration rules.
