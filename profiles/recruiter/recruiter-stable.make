; Recruiter drush make build file for drupal.org packaging.
core = 7.54

api = 2

; Modules

projects[acl][version] = "1.1"

projects[addressfield][version] = 1.2

projects[admin_menu][version] = 3.0-rc5

projects[autocomplete_deluxe][version] = "2.2"

projects[better_formats][version] = "1.0-beta1"

projects[ctools][version] = 1.12
; Term URL transformation fails when term includes a dash https://www.drupal.org/node/2320779#comment-11059807
projects[ctools][patch][] = https://www.drupal.org/files/issues/ctools-term-dashes-2320779-7.patch

projects[colorbox][version] = 2.12

projects[content_access][version] = "1.2-beta2"
; Node Access bug if core patch is applied http://drupal.org/node/1097248#comment-6613538
projects[content_access][patch][] = "http://drupal.org/files/1097248-content-access-node-grants-24.patch"

projects[context_admin][version] = "1.2"

projects[content_taxonomy][version] = 1.0-rc1

projects[context][version] = "3.7"

projects[date][version] = 2.9

projects[diff][version] = 3.3

projects[email][version] = "1.3"

projects[entity][version] = 1.8

projects[entityreference][version] = "1.2"

projects[facetapi][version] = 1.5

projects[facetapi_pretty_paths][version] = "1.0"

projects[features][version] = "1.0"
; Fixes import of menu links of disabled modules (http://drupal.org/node/1241108)
projects[features][patch][] = "http://drupal.org/files/1241108-d7-1.patch"
; Remove mtime from .info export (added by Drupal 7.33) https://www.drupal.org/node/2381739
projects[features][patch][] = https://www.drupal.org/files/issues/features-mtime-1x-2381739-14.patch

projects[field_collection][version] = 1.0-beta12
; EntityFieldQueryException: Unknown field when deleting fields http://drupal.org/node/1866032
projects[field_collection][patch][] = "http://drupal.org/files/fieldcol-1866032-7.patch"
; Notice: Undefined index: revision_id in field_collection_field_get_entity() https://www.drupal.org/node/1822844
projects[field_collection][patch][] = https://www.drupal.org/files/issues/notice_undefined-1822844-39.patch
; Replace confusing empty 'Too many items.' page with Access Denied page https://www.drupal.org/node/2841004
projects[field_collection][patch][] = https://www.drupal.org/files/issues/fc-too-many-items-2841004-4.patch

projects[field_permissions][version] = "1.0"

projects[flag][version] = 3.9

projects[i18n][version] = 1.14

projects[link][version] = 1.4
; Allow any TLD because site admins can never keep up with ICANN https://www.drupal.org/node/2747561
projects[link][patch][] = https://www.drupal.org/files/issues/validate_url-2299657-46.patch
; Change external links as little as possible https://www.drupal.org/node/1914072#comment-11618049
projects[link][patch][] = https://www.drupal.org/files/issues/link-external-1914072-22.patch
; mailto: link with subject parameter and upper case letter does not validate https://www.drupal.org/node/2813057
projects[link][patch][] = https://www.drupal.org/files/issues/link-mailto-2813057-2.patch

projects[message][version] = 1.12
; Message translations http://drupal.org/node/1479026
projects[message][patch][] = http://drupal.org/files/message-i18n-1479026-9.patch

projects[migrate][version] = 2.8
; PHP7 Uniform Variable Syntax https://www.drupal.org/node/2654222
projects[migrate][patch][] = https://www.drupal.org/files/issues/migrate-php7-uniform-variable-syntax.patch

projects[migrate_extras][version] = "2.5"

projects[panels][version] = 3.8

projects[pathauto][version] = "1.2"

projects[pm_existing_pages][version] = "1.4"

projects[profile2][version] = "1.3"
; Add ctools relationship
projects[profile2][patch][] = "http://drupal.org/files/1011370-profile2-ctools.patch"

projects[recruiter_features][version] = 1.3

projects[roleassign][version] = 1.1

projects[role_export][version] = "1.0"

projects[rules][version] = 2.9
; Add a Rules Condition: entity has required fields set https://drupal.org/node/2111559
projects[rules][patch][] = https://drupal.org/files/issues/rules-entity-required-fields-2111559-3.patch
; Remove "Cache rebuild lock hit" watchdog spam message https://www.drupal.org/node/2406863
projects[rules][patch][] = https://www.drupal.org/files/issues/rules-remove-cache-rebuild-log-2406863-21.patch

projects[rules_autotag][version] = 1.4

projects[rules_link][version] = "1.1"

projects[search_api][version] = 1.20

projects[search_api_saved_searches][version] = "1.5"
; Access key isn't always generated for saved searches https://www.drupal.org/node/2717101
projects[search_api_saved_searches][patch][] = https://www.drupal.org/files/issues/access_key_generation-2717101-1.patch

projects[search_api_solr][version] = 1.11
; Add the solr 6 config to search api solr.
projects[search_api_solr][patch][] = https://www.drupal.org/files/issues/2711685-support-solr6-search-api-solr-4.patch
; Invalid argument supplied for foreach() for NULL tags on old filter query objects https://www.drupal.org/node/2837745
projects[search_api_solr][patch][] = https://www.drupal.org/files/issues/sapi-solr-2837745-2.patch

projects[search_api_db][version] = "1.2"

projects[strongarm][version] = "2.0"

projects[synonyms][version] = "1.1"

projects[taxonomy_csv][version] = "5.10"

projects[taxonomy_formatter][version] = "1.4"
; Fix empty labels http://drupal.org/node/1352050#comment-7028512
projects[taxonomy_formatter][patch][] = "http://drupal.org/files/taxonomy_formatter-label-on-empty-1352050-9.patch"

projects[taxonomy_manager][version] = "1.0"

projects[term_level][version] = "1.x-dev"
projects[term_level][patch][] = "http://www.drupal.org/files/issues/term_level-views_relation-2513768-3.patch"

projects[token][version] = 1.7

projects[variable][version] = "2.5"

projects[views][version] = 3.15
; Remove filter_xss_admin() from result rewriting because views editors are already trusted admins
projects[views][patch][] = https://www.drupal.org/files/issues/views-no-alter-text-filter-2529948-1.patch
; Undefined index: uid in views_handler_field->get_value() (line 375 of views_handler_field.inc) https://www.drupal.org/node/1609088#comment-10479252
projects[views][patch][] = https://www.drupal.org/files/issues/views-username-notice-1609088-45.patch

projects[views_bulk_operations][version] = "3.2"

; Update to 2.4 once that gets released.
projects[wysiwyg][version] = 2.x-dev

projects[wysiwyg_linebreaks][version] = 1.8

;  -  Libraries  -

; Also add the colorbox library.
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.6.3.zip"
libraries[colorbox][download][type] = "get"

; CKEditor
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.7/ckeditor_4.4.7_standard.zip"


;  - Recruiter Cloudy base theme -

projects[block_class][version] = 2.3
; Features support http://drupal.org/node/1230234
projects[block_class][patch][] = https://www.drupal.org/files/issues/block_class-features-support-1230234-42.patch

projects[omega][type] = theme
projects[omega][version] = "4.4"
;Managed File on form settings https://www.drupal.org/node/2186031
projects[omega][patch][] = "https://www.drupal.org/files/issues/omega-form-state-file-references-2186031-8.patch"
;Do not blow out the scripts data inside omega_element_info_alter https://www.drupal.org/node/2492461
projects[omega][patch][] = "https://www.drupal.org/files/issues/omega-2492461-1-smarter-element-info-alter.patch"
;Modules are listed as missing themes in Drupal 7.50, triggers user warnings https://www.drupal.org/node/2762793
projects[omega][patch][] = "https://www.drupal.org/files/issues/omega-modules-listed-as-missing-themes-2762793-13.patch"

projects[cloudy][type] = theme
projects[cloudy][version] = 1.5

