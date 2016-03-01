BUILD A SUB-THEME WITH Gratis
-----------------------------

In general, you'll want to rename anything in this folder to your new sub-theme name.
So for example if your sub-theme name is foobar, you'll change anything like:

STARTERKIT.info.yml.txt

to

foobar.info.yml

Note you drop the txt and change the first part of the name as well.

The base Gratis theme is designed to be easily extended by a sub-theme. You
shouldn't modify any of the SASS / CSS or TWIG files in the gratis/ folder unless you've
specified to use local.css. It's preferred instead you should create a sub-theme
of Gratis which is located in a folder outside of the root Gratis/ folder.
The examples below assume Gratis and your sub-theme will be
installed in /themes/, but any valid theme directory is acceptable
(read the sites/default/default.settings.php for more info.)

Why? To learn why you shouldn't modify any of the files in the Gratis/ folder,
https://drupal.org/node/245802

Drupal 8 sub-theming
https://www.drupal.org/node/2165673

Optionally use Grunt and LibSass for sub-theming.

    - See the main readme file for more info. There
      is a package.json and gruntfile.js in the starterkit to get you
      up and running.
