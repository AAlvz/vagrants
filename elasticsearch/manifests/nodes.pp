node default {
  class { 'elasticsearch':
    autoupgrade => false,
    config => { 'cluster.name' => 'listsearch' }
  }

  elasticsearch::instance { 'es-01':
    config => { 'node.name' => 'stockhausen' },
    init_defaults => { }, # Init defaults hash
    datadir => [ '/srv/listsearch.debian.org/es-data-es01' ],
  }
}
