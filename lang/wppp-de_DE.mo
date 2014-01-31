��          �   %   �      P  �  Q  E  �       g  .
  �   �  6   �     �     �  &   �       O     *   [     �  %   �  E   �  
   �     
          *     >     O     ^  3   q     �     �  �  �  �  �  y  8  �  �  �  =  �   #  4     !   ;     ]  >   i  	   �  Y   �  0        =  &   N  s   u  
   �     �               *     D     X  7   q     �  #   �                                                                                                  
                       	    <p><strong>Disable backend translation while maintaining frontend translations.</strong></p><p>Speed up the backend by disabling dashboard-translations. Useful if you don't mind using an english backend.</p><p><em>AJAX requests on backend pages will still be translated, as I haven't figured out how to distinguish requests originating backend pages and requests from frontend pages.</em></p> <p><strong>Dynamic loading of translation files, only loading and translating used strings.</strong></p><p>Improves performance and reduces memory consumption. The default WordPress <em>MO</em> implementation loads the complete MO files (e.g. when loaded via <code>load_textdomain</code>) into memory. As a result translation of individual strings is quite fast, but loading times and memory consumption are high. Most of the time only a few strings from a mo file are required within a single page request. Activating translation almost doubles execution time in a typical WordPress installation.</p><p>WPPP uses MO-Dynamic, a complete rewrite of the <em>MO</em> implementation, to speed up translations. .mo files are only loaded if needed. On installations with many translated plugins this alone can dramatically reduce execution time. It doesn't load the complete translations into memory, only required ones. This on demand translation is more expensive than translations on fully loaded .mo files but the performance gain by not loading and parsing the complete file outweighs this.</p> <p><strong>Just in time localization</strong></p><p>Just in time localization of scripts. By default WordPress localizes all default scripts at each request. Enabling this option will translate localization string only if needed. This might improve performance even if WordPress is not translated, but has the biggest impact when using MO-Dynamic.</p><p><em>As for now only implemented for WordPress version 3.8.1 because of differences in wp_default_scripts (which gets overridden by this feature) between versions.</em></p> <p><strong>Use of native gettext if available</strong></p><p>There is probably no faster way for translations than using the native gettext implementation. This requires the <code>php_gettext</code> extension to be installed on the server. This implementation used is based on Bernd Holzmuellers <a href="http://oss.tiggerswelt.net/wordpress/3.3.1/">Translate_GetText_Native</a> implementation.</p><p>For now WPPP only checks if the gettext extension is available, which might not suffice to use native gettext. Further checks will follow.</p><p><em>Native gettext overrides MO-Dynamic if both are enabled!</em></p> <p>WP Performance Pack is intended to be a collection of performance optimizations for WordPress which don't need patching of core files. As of now it features options to improve performance of translated WordPress installations.</p> As for now only available for WordPress version 3.8.1! Disable backend translation Disabled Disables translation of backend texts. Enabled Gettext extension is <b>available</b>. (But this doesn't means it will work...) Gettext extension is <b>not available</b>! JIT localize Just in time localization of scripts. Loads translations on demand. Use if native gettext is not available. MO-Dynamic Native gettext Performance Pack Translation related Use JIT localize Use MO-Dynamic Use native gettext Use native gettext implementation for translations. WP Performance Pack WP Performance Pack - Settings Project-Id-Version: WP Performance Pack
POT-Creation-Date: 2014-01-31 16:46+0100
PO-Revision-Date: 2014-01-31 16:53+0100
Last-Translator: Björn Ahrens <bjoern@ahrens.net>
Language-Team:  <bjoern@ahrens.net>
Language: English
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.5.7
X-Poedit-KeywordsList: __:1,2t;_e:1,2t
X-Poedit-Basepath: .
X-Poedit-SearchPath-0: ..
 <p><strong>Backend-Übersetzung deaktivieren, Frontend-Überstzung bleibt erhalten.</strong></p><p>Durch das Abschalten der Übersetzung von Texten im Backen kann dieses erheblich beschleunigt werden, zumindest wenn man keine Probleme mit einem englischen Backend hat.</p><p><em>Bei AJAX-Requests werden trotzdem auch im Backend Texte übersetzt, da nicht zwischen Requests vom Backend und Frontend unterschieden werden kann.</em></p> <p><strong>Laden und Übersetzen von Texten nur be Bedarf.</strong></p><p>Verbessert Geschwindigtkeit und Speicherverbrauch. Die Standard-MO-Implementierung von WordPress lädt immer die kompletten Übersetzungsdateien (.mo) in den Speicher, egal ob diese benötigt werden, oder nicht. So ist zwar das Übersetzen einzelner Texte schnell, aber das Laden der Daten benötigt sehr viel Zeit und Speicher. Eine normale WordPress-Installation mit aktivierter Übersetzung ist nur gut halb so schnell wie ohne.</p><p>MO-Dynamic ist eine komplette Neuimplementierung der MO-Klasse. Übersetzungsdateien werden nur bei Bedarf geladen und es werden nur benötigte Texte übersetzt. Das Übersetzen einzelner Strings dauert zwar länger, das deutlich schnellere Laden wiegt dies aber mehr als auf. Weiterhin wird der Speicherverbrauch deutlich gesenkt, was ebenfalls die Performance verbessert.</p> <p><strong>Just-In-Time Übersetzung von Skripten</strong></p><p>WordPress führt für viele Standard-Skripte (Javascript) bei jedem Seitenaufruf Übersetzungen durch, auch dann, wenn die Skripte für den Aufruf gar nicht benötigt werden. Wird diese Option aktiviert, werden die Übersetzungen nur für benötigte Skripte und auch erst beim Einfügen dieser ausgeführt. Dies führt zu weniger Übersetzungen, was vor allem bei Verwendung von MO-.Dynamic einen Geschwindigkeitsvorteil bringen kann.</p><p><em>Vorerst nur für WordPress Version 3.8.1 verfügbar; wegen Unterschieden in <code>wp_default_scripts</code> zwischen den Versionen.</em></p> <p><strong>Natives gettext vewrwenden, wenn verfügbar.</strong></p><p>Die schnellste Methode zum Übersetzen von Texten (auf .po/.mo Basis) ist die Verwendung der System-eigenen (nativen) Gettext-Implementierung. Dies benötigt die PHP-Erweiterung <code>php_gettext</code>. Die vorhandene Implementierung basiert auf Bernd Holzmüllers <a href="http://oss.tiggerswelt.net/wordpress/3.3.1/">Translate_GetText_Native</a> Implementierung.</p><p>Im Moment überprüft WPPP nur das Vorhandensein der Gettext-Erweiterung, was nicht unbedingt ausreichend ist, damit das native Gettext funktioniert. Weitere Überprüfungen sind in Planung</p><p><em>Die native Gettext-Implementierung hat Vorrang vor MO-Dynamic, wenn beides aktiviert ist.</em></p> <p>WP Performance Pack ist eine Sammlung von Optimierungen für WordPress, für die die WordPress-Dateien nicht verändert werden müssen. Derzeit umfasst WPPP Funktionen zum Beschelunigen von übersetzten WordPress-Blogs.</p> Vorerst nur für WordPRess Version 3.8.1 verfügbar! Backend Übersetzung deaktivieren Deaktiviert Deaktiviert das Übersetzen von Texten im Backend (Dashboard). Aktiviert Gettext-Erweiterung ist <b>verfügbar</b>. (Was nicht bedeutet, dass sie funktioniert...) Gettext-Erweiterung ist <b>nicht verfügbar</b>! JIT Übersetzung Just-In-Time Übersetzung von Skripten Übersetzungen werden erst bei bedarf geladen. Alternative, wenn keine native gettext Unterstützung vorhanden ist. MO-Dynamic Natives gettext Performance Pack Übersetzungsbezogen JIT Übersetzung benutzen MO-Dynamic benutzen Natives gettext benutzen Native Gettext-Implementierung zum Übersetzen benutzen WP Performance Pack WP Performance Pack - Einstellungen 