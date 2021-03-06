<?php

/**
 * Implements hook_features_export_options().
 */
function block_class_features_export_options() {
  $query = db_select('block', 'b');
  $query->addExpression("CONCAT(b.module, ':', b.delta)");
  $query->condition('b.css_class', '', '<>');
  $blocks = $query->execute()->fetchAllKeyed(0, 0);

  natcasesort($blocks);
  return $blocks;
}

/**
 * Implements hook_features_export().
 */
function block_class_features_export($data, &$export, $module_name = '') {
  $pipe = array();

  $export['dependencies']['features'] = 'features';
  $export['dependencies']['block_class'] = 'block_class';

  foreach ($data as $component) {
    $export['features']['block_class'][$component] = $component;
  }

  return $pipe;
}

/**
 * Implements hook_features_export_render().
 */
function block_class_features_export_render($module, $data) {
  $query = db_select('block', 'b');
  $query->addExpression("CONCAT(b.module, ':', b.delta)", 'id');
  $query->addField('b', 'css_class');
  $classes = $query->execute()->fetchAllKeyed(1, 0);

  $code = array();
  foreach ($data as $id) {
    if (isset($classes[$id])) {
      list($module, $delta) = explode(':', $id);
      $css_classes = $classes[$id];
      $code[$id] = compact('module', 'delta', 'css_classes');
    }
  }

  $code = "  return ". features_var_export($code, '  ') .";";

  return array('block_class_features_default_class' => $code);
}

/**
 * Implements hook_features_revert().
 */
function block_class_features_revert($module) {
  block_class_features_rebuild($module);
}

/**
 * Implements hook_features_rebuild().
 */
function block_class_features_rebuild($module) {
  $blocks = module_invoke($module, 'block_class_features_default_class');
  if ($blocks) {
    foreach($blocks as $block) {
      $update = array('css_class' => '');
      if (!empty($block['css_classes'])) {
        $update['css_class'] = $block['css_classes'];
      }
      db_update('block')->fields($update)->condition('module', $block['module'])->condition('delta', $block['delta'])->execute();
    }
  }
}
