# Rails HTD Academy

### Environment preparation

#### Windows
Install Rails environment

```TODO```

Install Docker environment (it is used for running external services, in our case - database)

[Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/)

#### Mac
Install `rbenv`

[rbenv install Mac](https://github.com/rbenv/rbenv#homebrew-on-macos)

Install Docker environment (it is used for running external services, in our case - database)
[Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)
 

#### Linux

Install `rbenv`

[rbenv on Ubuntu Linux](https://makandracards.com/makandra/28149-installing-rbenv-on-ubuntu)

Install Docker environment (it is used for running external services, in our case - database)

[Docker Engine (Ubuntu)](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
[Docker Compose](https://docs.docker.com/compose/install/)

### Running project
Go to project folder and run
```bash
docker-compose up -d
```
And then:
```bash
rbenv install 2.6.3
```
And then:
```bash
gem install bundler
```
And then:
```bash
bundle
```
And then:
```bash
rails db:reset
```
And finally:
```bash
rails s
```

After the server has started, you should be able to open your browser, go to [http://localhost:3000](http://localhost:3000) and see the Rails welcome page.
