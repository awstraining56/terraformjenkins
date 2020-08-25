pipeline {
	agent any 
	environment {
		PATH = "${PATH}:${getTerraformPath()}"
	}
	stages {
		stage('terraform init and apply - dev'){
			steps {
				
				sh "terraform apply  -var-file=dev.tfvars -auto-approve"
			}
		}
		stage('terraform init and apply - prod'){
			steps {
				
				sh "terraform apply -var-file=dev.tfvars -auto-approve"
			}
		}	
	}
}

def getTerraformPath(){
	def tfHome = tool name: 'terraform-12', type: 'terraform'
	return tfHome
}	