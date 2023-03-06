

# create drupal project
> composer create-project drupal/recommended-project demo1

# installing drush via composer
> composer require --dev drush/drush


# installing theme via composer and enabling and setting it as default via drush. Then cleating the cache
> composer require drupal/gin_toolbar:^1.0@beta drupal/gin:^3.0@beta
# pathauto is a module to create cleaner url mapping: https://www.youtube.com/watch?v=zSErrOFozuM
> composer require 'drupal/pathauto:^1.11'

# enabling the theme then setting it as the default theme
> drush theme:enable gin
> drush config-set system.theme default gin

# clear drupal cache
> drush cr


# to enable module via drush

> drush en [module_name]