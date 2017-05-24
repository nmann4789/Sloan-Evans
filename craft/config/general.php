<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(
    '*'=>array(
        'cpTrigger' => 'admin',
    ),
    'www.sloan-evans.com' => array(
        'siteUrl' => 'www.sloan-evans.com',
        'environmentVariables' => array(),
        'sendPoweredByHeader' => false,
        'enableCsrfProtection' => false,
        'allowAutoUpdates' => true,
        'allowUppercaseInSlug' => false,
        'limitAutoSlugsToAscii' => true,
        'convertFilenamesToAscii' => true,
        'imageDriver' => 'imagick',
        'devMode' => false,
        'useCompressedJs' => true,
        'omitScriptNameInUrls' => true,
        'overridePhpSessionLocation' => false,
        'requireMatchingUserAgentForSession' => false,
        'userSessionDuration' => false,
        'extraAllowedFileExtensions' => 'psd, exe, dmg, zip, ps1, ps2',
        'maxUploadFileSize' => 21474836480,
    ),
    'sloan-craft.dev' => array(
        'siteUrl' => 'sloan-craft.dev',
        'environmentVariables' => array(),
        'env' => 'local',
        'sendPoweredByHeader' => false,
        'enableCsrfProtection' => false,
        'allowAutoUpdates' => true,
        'allowUppercaseInSlug' => false,
        'limitAutoSlugsToAscii' => true,
        'convertFilenamesToAscii' => true,
        'imageDriver' => 'imagick',
        'devMode' => true,
        'omitScriptNameInUrls' => true,
        'useCompressedJs' => true,
        'overridePhpSessionLocation' => false,
        'requireMatchingUserAgentForSession' => false,
        'extraAllowedFileExtensions' => 'psd, exe, dmg, zip, ps1, ps2',
    ),
);
