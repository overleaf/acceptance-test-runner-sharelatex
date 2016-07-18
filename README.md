# acceptance-test-runner-sharelatex

Docker-based acceptance test runner for ShareLaTeX projects.

## Build

```bash
$ ./build.sh
```

## Usage

In a project directory run:

```bash
$ docker run -v "$(pwd):/app" --rm sl-acceptance-test-runner
```

The project should have a script at `test/acceptance/scripts/full-test.sh` which is responsible for starting the service and running the acceptance tests.
