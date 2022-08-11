<url>
    <loc><?php echo htmlspecialchars($url->location, ENT_XML1); ?></loc>
    <?php if($url->lastModified): ?>
        <lastmod><?php echo $url->lastModified->toW3cString(); ?></lastmod>
    <?php endif; ?>
    <?php if($url->changeFrequency): ?>
        <changefreq><?php echo htmlspecialchars($url->changeFrequency, ENT_XML1); ?></changefreq>
    <?php endif; ?>
    <?php if($url->priority): ?>
        <priority><?php echo htmlspecialchars($url->priority, ENT_XML1); ?></priority>
    <?php endif; ?>
</url>
<?php /**PATH /www/wwwroot/bbs.ist4102.cloud/vendor/fof/sitemap/views/url.blade.php ENDPATH**/ ?>