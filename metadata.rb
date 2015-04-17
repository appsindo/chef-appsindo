name             'appsindo'
maintainer       'Appsindo Technology'
maintainer_email 'erwin.saputra@at.co.id'
license          'All rights reserved'
description      'Installs/Configures Server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.2.0'

recipe "appsindo", "Default"

depends 'ohai', '~> 2.0.1'
depends 'build-essential', '~> 2.2.3'
depends 'xml', '~> 1.2.13'
depends 'apt', '~> 2.7.0'
depends 'php', '~> 1.5.0'
depends 'nginx', '~> 2.7.4'
depends 'nodejs' , '~> 1.3.0'
depends 'mongodb', '~> 0.16.2'
depends 'mysql', '~>5.6.1'
depends 'redisio', '~>2.3.0'
depends 'ntp', '~>1.8.2'
depends 'git', '~>4.1.0'
depends 'cron', '~>1.6.1'

supports 'debian'
supports 'ubuntu'