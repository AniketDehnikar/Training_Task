module "helm_alpine" {
  source = "./modules"

  name      = var.name
  namespace = var.namespace

}

resource "null_resource" "top" {

  triggers = {
    always_run = local.timeregex
  }

  provisioner "local-exec" {
    when    = create
    command = <<EOF
        rm -f top_*.txt
        top -b -n 1 > top_${self.triggers.always_run}.txt
   EOF
  }

 
  depends_on = [
    module.helm_alpine
  ]
}
