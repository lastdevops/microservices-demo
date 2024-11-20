# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "gcp_project_id" {
  description = "The GCP project ID to apply this config to"
  type        = string
}

variable "name" {
  description = "Name given to the new GKE cluster"
  type        = string
  default     = "online-boutique"
}

variable "region" {
  description = "Region of the new GKE cluster"
  type        = string
  default     = "us-central1"
}

variable "namespace" {
  description = "Kubernetes Namespace in which the Online Boutique resources are to be deployed"
  type        = string
  default     = "default"
}

variable "filepath_manifest" {
  description = "Path to Online Boutique's Kubernetes resources, written using Kustomize"
  type        = string
  default     = "../kustomize/"
}

variable "memorystore" {
  description = "If true, Online Boutique's in-cluster Redis cache will be replaced with a Google Cloud Memorystore Redis cache"
  type        = bool
  default     = false
}
