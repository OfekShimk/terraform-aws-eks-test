resource "local_file" "kubeconfig" {
  count                = var.write_kubeconfig && var.create_eks ? 1 : 0
  content              = local.kubeconfig
}
