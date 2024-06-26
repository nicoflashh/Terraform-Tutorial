1. Descargas:
    - Terraform
    - AWS Cli 
En caso de que no lo hayas hecho: 
    2. Logear a tu cuenta de AWS. Crear un usuario IAM, en donde le vamos a anadir un grupo de usuarios con los siguientes permisos: 
        -AmazonDynamosDBFUll Access
        -AMazonEC2FUllACcess
        -AmazonRDSFUllAccess
        -AmazonRoute53FullAcess
        -AmazonS3FullAccess
        -IAMFullAccess
    3. Una vez hemos creado el usuario IAM y el Grupo de usuarios. Asignamos ese grupo de usuario a ese Usuario.
    4. Por ultimo, tenemos que crear unas credenciales para el usuario que vayamos a usar
2. Vincular usuario de AWS con Ordenador.
    - Para ello hay que configurarlo por terminal. 
    Comandos: 
        aws config ->Configurar Usuario con las credenciales previamente creadas
    Para ver mas informacion acerca de la configuracion en Windows: 
        -C:\Users\Nicolas\.aws 
4. Una vez configurado nuestro usuario procedemos a desarrollar nuestro archivo de terraform. Lo podemos encontrar en main.tf. 
    Arrancaramos el codigo usando los siguientes comandos:
     "terraform init", "terraform plan", "terraform apply"
     Para borrar la instancia EC2, usaremos el comando "terraform destroy"
    