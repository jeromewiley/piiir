; Drupal core make file.

api = 2
core = 7.x

; Not specifying a drupal core version will use the latest stable release.
projects[drupal][version] = 7.54

; CORE PATCHES

; user_role_grant_permissions() throws PDOException when used for a disabled module's permission or with non-existent permissions
; http://drupal.org/node/737816#comment-6978566
; (fixes integrity constraint violation when adding permissions, see http://drupal.org/node/1063204)
projects[drupal][patch][] = http://drupal.org/files/drupal-7.x-fix_pdoexception_grant_permissions-737816-26-do-not-test.patch

; Add handling for query parameters in shortcut links https://www.drupal.org/node/614498#comment-10308353
projects[drupal][patch][] = https://www.drupal.org/files/issues/allow-shortcut-query-parameters-614498-26.patch

; drupal_random_bytes() doesn't actually return cryptographically secure random bytes https://www.drupal.org/node/2550519
projects[drupal][patch][] = https://www.drupal.org/files/issues/random_bytes-2550519-D7-144.patch

; Add file_exists() to _locale_parse_js_file() to prevent PHP warning https://www.drupal.org/node/1803330
projects[drupal][patch][] = https://www.drupal.org/files/locale-D7_locale_check_file_exists-1803330-1_0.patch

; User mail token PHP notices for anonymous https://www.drupal.org/node/2828455
projects[drupal][patch][] = https://www.drupal.org/files/issues/user-mail-token-2828455-2.patch
