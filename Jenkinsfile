pipeline {
  agent any
  triggers {
    pollSCM '* * * * *'
  }
  stages {
    stage('SonarQube Analysis') {
      steps {
        sh '''
        echo $PATH
	export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/home/ubuntu/.dotnet/tools
	dotnet sonarscanner begin /k:"Dotnet" /d:sonar.host.url=http://sonar.mukesh.website /d:sonar.login=5ddb90f56ac11ce691a8e1e1d8fe1dd4aac4e460
	dotnet restore panz.csproj
	dotnet build panz.csproj -c Release
	dotnet sonarscanner end /d:sonar.login=5ddb90f56ac11ce691a8e1e1d8fe1dd4aac4e460
        
        '''
      }
    }
   
}

}
