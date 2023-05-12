# Docker Compose Configuration for ELK Stack 

This Docker Compose configuration sets up an ELK stack with Nginx as a reverse proxy, a simple Node.js application, Filebeat, ElastAlert, and Mailhog for testing email notifications.
#
## Services

The following services are included:

- `elasticsearch`
- `logstash`
- `kibana`
- `app`
- `nginx`
- `filebeat`
- `elastalert`
- `mailhog`

#
## Usage

To use this Docker Compose configuration, follow these steps:

1. Clone this repository to your local machine.
    ```
    git colne https://github.com/DevOpsGyus/ELK-stack.git
    ```
2. Navigate to the cloned directory in your terminal.
3. Run the following command to start all services:

   - `start.sh` : The script is meant to ensure that all necessary files and directories are present before running the docker-compose up command to avoid errors or unexpected behavior during deployment.
     
        ```
        sh start.sh
        ```
        or 
        ```
        docker-compose up 
        ```
4. To stop the services, run the following command:

    ```
    docker-compose down
    ```

### Note:

- The default Elasticsearch password is set to `admin` for demonstration purposes only. you should use a secure password and store it in a secure way.

- The Node.js application can be replaced with your own application by modifying the Dockerfile and docker-compose.yml files accordingly.

- The nginx service is set up to proxy requests to the Node.js application, but can be modified to serve any other static files or proxy to other services as needed.

- The elastalert service is set up with default rules for demonstration purposes only.

- The mailhog service is included for testing email notifications.