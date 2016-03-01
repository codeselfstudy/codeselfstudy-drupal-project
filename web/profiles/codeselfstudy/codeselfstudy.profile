<?php
/**
 * @file
 * Enables modules and site configuration for the CodeSelfStudy site installation.
 *
 *       .^~^.
 *      { 0,0 }
 *      /\.../\
 *     ///...\\\
 *   ----"---"----
 *      C O D E
 *      S E L F
 *     S T U D Y
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function codeselftudy_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My site');
  $form['#submit'][] = 'standard_form_install_configure_submit';
}

/**
 * Submission handler to sync the contact.form.feedback recipient.
 */
function codeselfstudy_form_install_configure_submit($form, FormStateInterface $form_state) {
  $site_mail = $form_state->getValue('site_mail');
  ContactForm::load('feedback')->setRecipients([$site_mail])->trustData()->save();
}

/**
 * Implements function hook_modules_installed().
 */
function codeselfstudy_modules_installed($modules) {
  if (in_array('system', $modules)) {
    file_save_data(date(DATE_ISO8601), 'private://codeselfstudy/drupal-installed', $replace = FILE_EXISTS_RENAME);
  }
}
