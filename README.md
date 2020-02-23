![code-style & security checks](https://github.com/faycalBordjah/dm-ci20-4/workflows/code-style%20&%20security%20checks/badge.svg)

![unit test & functional tests workflow](https://github.com/faycalBordjah/dm-ci20-4/workflows/unit%20test%20&%20functional%20tests%20workflow/badge.svg)

![planified integration tests](https://github.com/faycalBordjah/dm-ci20-4/workflows/planified%20integration%20tests/badge.svg)

# Start Wars API Bind

Star wars api bind planet is an API done with Symfony framework. It allows you to connect to [SWAP API](https://swapi.co/) to illustrate how to use tests.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
* A computer with Linux or MacOs 
> For Windows OS it is more complicated to install the application
* [Git](https://git-scm.com/)
    - install on ubuntu dist:
    ```bash 
    sudo apt-get install git
    ```
* [Docker](https://docs.docker.com/)
    - install on ubuntu dist: 
    ```bash 
    curl -ssL https://get.docker.com | sh 
    ```
*  [Docker Compose](https://docs.docker.com/compose/)
    - to install docker compose on ubuntu
    ```bash 
    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    ```
    ```bash
    sudo chmod +x /usr/local/bin/docker-compose
    ```

* [Make](https://www.gnu.org/software/make/manual/make.html#Introduction)  
    - to install in Linux dist
    ```bash
    sudo apt-get install build-essential
    ```  
* [Php 7.1](https://www.php.net/) or heigher
    - see the documentation 
### Installing

To install the project, you need to clone the repository on your machine:

```bash
git clone https://github.com/faycalBordjah/dm-ci20-4
```
### Usage
- To the  application using PHP's built-in web server is as easy as executing this command: 

```bash
make start
```

-You can run also the application with docker by  move to your project directory and just run the following command:
```bash
docker-compse up
```

Now you  access to the server on your [localhost](http://localhost:80)

you will get this response:
```json
{
    status: "ok"
}
```

## Running the tests

```bash
make test
```

### Break down into end to end tests

#### unit tests:
php unit tests   
**to launch:** `make test_unit`

#### functionnal tests:
The functionnal test of application  
**run:** make test_functional

#### integration tests:
integration test of the application
**run:** make test_integration

### And coding style tests

The coding style of the project is checked by 2 tools:

 * [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) that checks our code relating to several rules defined by php community
 * [Hadolint](https://github.com/hadolint/hadolint) that checks used Dockerfile on the project 


## Deployment

Add additional notes about how to deploy this on a live system

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

For the versions available, see the [tags on this repository](https://github.com/faycalBordjah/dm-ci20-4/tags). 

## Authors

* **Vincent Monjaret** - *Initial work* - [vmonjaret](https://github.com/vmonjaret)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc


