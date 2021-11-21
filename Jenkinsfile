pipeline{
agent any
stages 
{
stage('Build') 
{
steps{
echo "Building the Code.........."
}
}
stage('Test') 
{
steps{
echo "Testing the Code.........."
}
}
stage('Build coker image ') 
{
steps{
echo "Build docker image  the Project.........."
sh  "docker build -t lavayna/jenkins-angular-app ."
}
}
stage('Deploy') 
{
steps{
echo "Deploying the Project.........."
}
}
}
}