<!--  This file isn't used, see epiqo.tpl.php in the epiqo layout -->

<div id="page" class="page">
  <header id="header" class="header" role="banner">
    <div id="topbar" class="topbar">
      <?php if ($site_name || $site_slogan || $logo): ?>
        <?php if ($logo): ?>
        <a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" rel="home" class="logo"></a>
        <?php endif; ?>

        <?php if ($site_name || $site_slogan): ?>
        <hgroup class="name-and-slogan">
          <?php if ($site_name): ?>
          <h1 class="site-name">
            <a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" rel="home"><span><?php print $site_name; ?></span></a>
          </h1>
          <?php endif; ?>

          <?php if ($site_slogan): ?>
          <h2 class="site-slogan"><?php print $site_slogan; ?></h2>
          <?php endif; ?>
        </hgroup>
        <?php endif; ?>
      <?php endif; ?>
    </div>

    <?php if ($navigation = render($page['navigation'])): ?>
      <div class="l-region--navigation-container">
        <div id="navigation" class="navigation">
          <?php print $navigation; ?>
        </div>
      </div>
    <?php endif; ?>
  </header>

  <div id="main-wrapper" class="main-wrapper">
    <?php if ($banner = drupal_render($page['banner'])): ?>
    <div class="banner">
      <?php print $banner; ?>
    </div>
    <?php endif; ?>

    <?php if ($search = render($page['search'])): ?>
    <div class="search">
      <?php print $search; ?>
    </div>
    <?php endif; ?>

    <div id="main" class="main" role="main">
      <div id="main-content" class="main-content">
        <?php print render($page['preface']); ?>

        <?php if ($featured = render($page['featured'])): ?>
          <div id="featured">
            <?php print $featured; ?>
          </div>
        <?php endif; ?>

        <?php if ($help = render($page['help'])): ?>
        <div id="help">
          <?php print $help; ?>
        </div>
        <?php endif; ?>

        <a id="main-content-anchor"></a>
        <?php print render($title_prefix); ?>
        <?php if ($title): ?>
        <h1 class="title" id="page-title"><?php print $title; ?></h1>
        <?php endif; ?>
        <?php print render($title_suffix); ?>
        <?php print $messages; ?>
        <?php print render($tabs); ?>
        <?php if ($action_links): ?>
        <ul class="action-links"><?php print render($action_links); ?></ul>
        <?php endif; ?>

        <?php print render($page['content']); ?>

        <?php print render($page['postscript']); ?>
      </div>

      <?php if ($sidebar_first = drupal_render($page['sidebar_first'])): ?>
      <div id="sidebar-first" class="sidebar-first">
        <?php print $sidebar_first; ?>
      </div>
      <?php endif; ?>

      <?php if ($sidebar_second = drupal_render($page['sidebar_second'])): ?>
      <div id="sidebar-second" class="sidebar-second">
        <?php print $sidebar_second; ?>
      </div>
      <?php endif; ?>
    </div>
  </div>

  <?php if ($page['footer'] || $page['footer_second']): ?>
  <div id="footer" class="footer">

    <?php if ($footer = render($page['footer'])): ?>
      <?php print $footer; ?>
    <?php endif; ?>

    <?php if ($footer_second = render($page['footer_second'])): ?>
      <?php print $footer_second; ?>
    <?php endif; ?>

  </div>
  <?php endif; ?>

</div>
