Mixpanel API Client
===================
 
A simple API client for tracking data in Mixpanel 

Installation
------------

Installation is a piece of cake:

```bash
$ gem install mixpanel-client
```

Usage
-----

Usage is pretty straightforward:

``` ruby

client = Mixpanel.new('YOUR API KEY')
client.track('event', :some => 'data')

```

Copyright
---------
See [LICENSE][] for details.

[license]: LICENSE