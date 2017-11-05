# FlexiCMS
Flexible site management system

# Installation
1. We clone the repository.
2. Extract the files to the root directory of the site.
3. In the files (/cms/Config/database.php, /admin/Config/database.php) we specify the connection parameters.
4. Type yousite.com/install in the browser and follow the instructions.

# Site management

1. Type in the browser yousite.com/admin
2. Insert Login: Admin and Password: Admin

Example /cms/Config/database.php and /admin/Config/database.php
```
<?php
return [
    'host'     => 'localhost',
    'db_name'  => 'cms',
    'username' => 'root',
    'password' => '',
    'charset'  => 'utf8'
];
```
