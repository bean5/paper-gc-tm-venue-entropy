# Theological topics through time: An application of Gibbs-sampled LDA and post-hoc metrics to compare religious venues

Whitepaper on LDA Topic Models to compute topic entropy by year. Base corpus: LDS General Conference articles spanning decades.

## Dependencies

- docker
- docker-compose

## Build Instructions

```sh
docker-compose run proposal
docker-compose run final
```

The first time you run the command it will need to build the latex base image which can take a long time.

## To Do

- [ ] Use a common base image to accelerate first-time PDF generation
