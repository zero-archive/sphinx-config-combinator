# Sphinx Config Combinator

Script that combine multiple config files into one for [Sphinx Search](http://sphinxsearch.com) engine

## Install

* Create directory for your config files beside your `sphinx.conf`

```bash
$ mkdir /etc/sphinxsearch/conf.d
```

* Separate your `sphinx.conf` to files like a `100-source`, `200-indexer`
  and place it under `conf.d` directory

* Replace you original `sphinx.conf` with `sphinx.conf` from this repository
  and make it executable with

```bash
$ chmod +x /etc/sphinxsearch/sphinx.conf
```

* Test it and you'll see combined config

```bash
$ bash /etc/sphinxsearch/sphinx.conf
```

* Now you can restart your `searchd`

## License

Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
