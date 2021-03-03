# Minimal example for using [Pagy](https://github.com/ddnexus/pagy) and [Searchkick](https://github.com/ankane/searchkick) in Ruby 3

This minimal Ruby application demonstrates [Pagy's Searchkick extra](https://ddnexus.github.io/pagy/extras/searchkick) is causing an issue when using Ruby 3. When running the tests, there is a failure:

```
$ bin/rails test
Running via Spring preloader in process 89960
Run options: --seed 3593

# Running:

E

Error:
ArticlesControllerTest#test_should_get_index:
ArgumentError: wrong number of arguments (given 2, expected 0..1)
    app/controllers/articles_controller.rb:6:in `index'
    test/controllers/articles_controller_test.rb:9:in `block in <class:ArticlesControllerTest>'


rails test test/controllers/articles_controller_test.rb:8



Finished in 1.533972s, 0.6519 runs/s, 0.0000 assertions/s.
1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```

When using Ruby 2.7.2, the test is successful:

```
$ bin/rails test
Running via Spring preloader in process 82711
Run options: --seed 43993

# Running:

.

Finished in 1.756634s, 0.5693 runs/s, 0.5693 assertions/s.
1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```
