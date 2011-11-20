---
layout: none
---
<?php
header("HTTP/1.1 301 Moved Permanently");
header( 'Location: {{ site.url }}{{ page.redirect }}' ) ;
?>
