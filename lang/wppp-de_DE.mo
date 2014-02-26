��    A      $  Y   ,      �  �  �  E      `  g  n    �  ;   �  $   0     U  F   i  6   �  J   �     2     P     W     g     z  	   �     �     �  &   �     �  c   �     H     c  _   �  t   �  *   V     �  I   �     �  !   �  %     %   @  E   f  
   �     �     �  �   �  c   �  y     C   �     �     �     �  %        A     E  :   V  6   �     �     �     �     �       #        ;     O     `     o  W   {     �  3   �          .  �  M  �  #  y  �  �  P"  �  �$  g  �'  B   )*  (   l*  &   �*  d   �*  4   !+  i   V+  -   �+  	   �+     �+     ,     #,  	   /,  !   9,     [,  >   g,  	   �,  n   �,     -  !   ?-  �   a-  �   .  0   �.  $   �.  O   �.     >/  "   O/  (   r/  &   �/  s   �/  
   60     A0     W0  �   s0  m   X1  u   �1  n   <2     �2     �2  !   �2  +   �2     $3     (3  Q   93  V   �3     �3     �3      �3     4     14  (   G4     p4     �4     �4     �4  x   �4     <5  7   U5     �5  #   �5     '          &   !   7   ,   -      8      *       3      	   <       2   :   +   6                               ;             A      =   @         $   ?           #                       (            0                            /   1                 %   
   4   )       9                  .   5   >          "               <p><strong>Disable backend translation while maintaining frontend translations.</strong></p><p>Speed up the backend by disabling dashboard-translations. Useful if you don't mind using an english backend.</p><p><em>AJAX requests on backend pages will still be translated, as I haven't figured out how to distinguish requests originating backend pages and requests from frontend pages.</em></p> <p><strong>Dynamic loading of translation files, only loading and translating used strings.</strong></p><p>Improves performance and reduces memory consumption. The default WordPress <em>MO</em> implementation loads the complete MO files (e.g. when loaded via <code>load_textdomain</code>) into memory. As a result translation of individual strings is quite fast, but loading times and memory consumption are high. Most of the time only a few strings from a mo file are required within a single page request. Activating translation almost doubles execution time in a typical WordPress installation.</p><p>WPPP uses MO-Dynamic, a complete rewrite of the <em>MO</em> implementation, to speed up translations. .mo files are only loaded if needed. On installations with many translated plugins this alone can dramatically reduce execution time. It doesn't load the complete translations into memory, only required ones. This on demand translation is more expensive than translations on fully loaded .mo files but the performance gain by not loading and parsing the complete file outweighs this.</p> <p><strong>Just in time localization</strong></p><p>Just in time localization of scripts. By default WordPress localizes all default scripts at each request. Enabling this option will translate localization string only if needed. This might improve performance even if WordPress is not translated, but has the biggest impact when using MO-Dynamic.</p><p><em>As for now only implemented for WordPress version 3.8.1 because of differences in wp_default_scripts (which gets overridden by this feature) between versions.</em></p> <p><strong>Use of native gettext if available</strong></p><p>There is probably no faster way for translations than using the native gettext implementation. This requires the <code>php_gettext</code> extension to be installed on the server. This implementation used is based on Bernd Holzmuellers <a href="http://oss.tiggerswelt.net/wordpress/3.3.1/">Translate_GetText_Native</a> implementation.</p><p>For now WPPP only checks if the gettext extension is available, which might not suffice to use native gettext. Further checks will follow.</p><p><em>Native gettext overrides MO-Dynamic if both are enabled!</em></p> <p>WP Performance Pack is intended to be a collection of performance optimizations for WordPress which don't need patching of core files. As of now it features options to improve performance of translated WordPress installations.</p><h4>Optimal settings</h4><ul><li>Use native gettext if available (for details on native gettext support activate <em>Debug Panel</em>).</li><li>MO-Dynamic should always work and is faster than default WordPress translations, but slower than native gettext.</li><li>Enable JIT localize if available.</li></ul> Activate to translate the Dashboard into the blog language. All translation settings turned off. Allow user override Allow users to reactive backend translation in their profile settings. As for now only available for WordPress version 3.8.1! Backend translation disabled (per user override via user profile allowed). Backend translation disabled. Custom Custom settings Dashboard language Debug Panel Debugging Disable backend translation Disabled Disables translation of backend texts. Enabled Enables debugging, requires <a href="http://wordpress.org/plugins/debug-bar/">Debug Bar</a> Plugin. Fast WordPress translation Fastest WordPress translation Fastest translation settings. If any problems occur after activating, switch to stable setting. Gettext extension is <b>available</b>. (For further details on native gettext support activate <em>Debug Panel</em>) Gettext extension is <b>not available</b>! Improve translation performance JIT localization of scripts is only available for WordPress versions %s . JIT localize JIT script localization activated JIT script localization not available Just in time localization of scripts. Loads translations on demand. Use if native gettext is not available. MO-Dynamic MO-Dynamic activated. MO-Dynamic caching activated. MO-Dynamic caching requires a persisten object cache to be effective. Different <a href="http://wordpress.org/plugins/search.php?q=object+cache">object cache plugins</a> are available for Wordpress. Native Gettext support requires the <a href="http://www.php.net/gettext">php_gettext</a> extension. Native Gettext support requires the language dir <code>wp-content/languages</code> to exists and to be writeable for php. Native Gettext test failed. Activate debugging for additional info. Native gettext Native gettext activated. Native gettext not available. No persistent object cache installed. Off Performance Pack Safe settings that should work with any WordPress install. Select your own settings. Customize via advanced view. Speed Stable Switch to advanced view Switch to simple view Translate Dashboard Translation improvements turned off Translation related Use JIT localize Use MO-Dynamic Use caching Use caching of translation. Only effective if any persistent object cache is installed. Use native gettext Use native gettext implementation for translations. WP Performance Pack WP Performance Pack - Settings Project-Id-Version: WP Performance Pack
POT-Creation-Date: 2014-02-25 16:17+0100
PO-Revision-Date: 2014-02-25 23:28+0100
Last-Translator: Björn Ahrens <bjoern@ahrens.net>
Language-Team:  <bjoern@ahrens.net>
Language: de_DE
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.4
X-Poedit-KeywordsList: __:1,2t;_e:1,2t
X-Poedit-Basepath: .
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-SearchPath-0: ..
 <p><strong>Backend-Übersetzung deaktivieren, Frontend-Überstzung bleibt erhalten.</strong></p><p>Durch das Abschalten der Übersetzung von Texten im Backen kann dieses erheblich beschleunigt werden, zumindest wenn man keine Probleme mit einem englischen Backend hat.</p><p><em>Bei AJAX-Requests werden trotzdem auch im Backend Texte übersetzt, da nicht zwischen Requests vom Backend und Frontend unterschieden werden kann.</em></p> <p><strong>Laden und Übersetzen von Texten nur be Bedarf.</strong></p><p>Verbessert Geschwindigtkeit und Speicherverbrauch. Die Standard-MO-Implementierung von WordPress lädt immer die kompletten Übersetzungsdateien (.mo) in den Speicher, egal ob diese benötigt werden, oder nicht. So ist zwar das Übersetzen einzelner Texte schnell, aber das Laden der Daten benötigt sehr viel Zeit und Speicher. Eine normale WordPress-Installation mit aktivierter Übersetzung ist nur gut halb so schnell wie ohne.</p><p>MO-Dynamic ist eine komplette Neuimplementierung der MO-Klasse. Übersetzungsdateien werden nur bei Bedarf geladen und es werden nur benötigte Texte übersetzt. Das Übersetzen einzelner Strings dauert zwar länger, das deutlich schnellere Laden wiegt dies aber mehr als auf. Weiterhin wird der Speicherverbrauch deutlich gesenkt, was ebenfalls die Performance verbessert.</p> <p><strong>Just-In-Time Übersetzung von Skripten</strong></p><p>WordPress führt für viele Standard-Skripte (Javascript) bei jedem Seitenaufruf Übersetzungen durch, auch dann, wenn die Skripte für den Aufruf gar nicht benötigt werden. Wird diese Option aktiviert, werden die Übersetzungen nur für benötigte Skripte und auch erst beim Einfügen dieser ausgeführt. Dies führt zu weniger Übersetzungen, was vor allem bei Verwendung von MO-.Dynamic einen Geschwindigkeitsvorteil bringen kann.</p><p><em>Vorerst nur für WordPress Version 3.8.1 verfügbar; wegen Unterschieden in <code>wp_default_scripts</code> zwischen den Versionen.</em></p> <p><strong>Natives gettext vewrwenden, wenn verfügbar.</strong></p><p>Die schnellste Methode zum Übersetzen von Texten (auf .po/.mo Basis) ist die Verwendung der System-eigenen (nativen) Gettext-Implementierung. Dies benötigt die PHP-Erweiterung <code>php_gettext</code>. Die vorhandene Implementierung basiert auf Bernd Holzmüllers <a href="http://oss.tiggerswelt.net/wordpress/3.3.1/">Translate_GetText_Native</a> Implementierung.</p><p>Im Moment überprüft WPPP nur das Vorhandensein der Gettext-Erweiterung, was nicht unbedingt ausreichend ist, damit das native Gettext funktioniert. Weitere Überprüfungen sind in Planung</p><p><em>Die native Gettext-Implementierung hat Vorrang vor MO-Dynamic, wenn beides aktiviert ist.</em></p> <p>WP Performance Pack ist eine Sammlung von Optimierungen für WordPress, für die die WordPress-Dateien nicht verändert werden müssen. Derzeit umfasst WPPP Funktionen zum Beschelunigen von übersetzten WordPress-Blogs.</p><h4>Optimale Einstellungen</h4><ul><li>Natives Gettext ist die schnellste Methode zum Übersetzen (für Details zur Gettext-Unterstützung das <em>Debug Panel</em> aktivieren).</li><li>MO-Dynamic sollte immer funktionieren und ist schneller als die Standard-Implementierung von WordPress, aber langsamer als natives Gettext.</li><li>Wenn verfügbar JIT-Übersetzungen aktivieren.</li></ul> Wenn aktiviert, wird das Dashboard in die Blog-Sprache übersetzt. Alle Übersetzungs-Optionen deaktiviert. Überschreiben durch Benutzer erlauben Benutzern erlauben das Übersetzen des Backends über ihre Profileinstellungen wieder zu aktivieren. Vorerst nur für WordPRess Version 3.8.1 verfügbar! Übersetzung von Back-End-Texten deaktiviert (kann von Benutzern in deren Profil wieder aktiviert werden) Übersetzung von Back-End-Texten deaktiviert. Angepasst Angepasste Einstellungen Dashbaord sprache Debug Panel Debugging Backend Übersetzung deaktivieren Deaktiviert Deaktiviert das Übersetzen von Texten im Backend (Dashboard). Aktiviert Aktiviert das Debugging, benötigt das <a href="http://wordpress.org/plugins/debug-bar/">Debug Bar</a> Plugin. Schnelle WordPress Übersetzung Schnellste WordPress Übersetzung Einstellungen für die größte Beschleunigung übersetzter WordPress-Installationen. Sollten mit dieser Option Probleme auftraten wählen Sie statt dessen die Einstellung "Stabil". Gettext-Erweiterung ist <b>verfügbar</b>. (für genauere Details zur Gettext-Unterstüzung das <em>Debug Panel</em> aktivieren) Gettext-Erweiterung ist <b>nicht verfügbar</b>! WordPress Übersetzung beschleunigen JIT-Script-Übersetzung ist nur für WordPress in den Versionen "%s" verfügbar JIT Übersetzung JIT-Script-Übersetzung aktiviert. JIT-Script-Übersetzung nicht verfügbar Just-In-Time Übersetzung von Skripten Übersetzungen werden erst bei bedarf geladen. Alternative, wenn keine native gettext Unterstützung vorhanden ist. MO-Dynamic MO-Dynamic aktiviert. MO-Dynamic-Cache aktiviert. Damit das MO-Dynamic-Caching Vorteile bringt, muss ein persistenter Object-Cache installiert sein. Diverse <a href="http://wordpress.org/plugins/search.php?q=object+cache">Object-Cache-Plugins</a> sind für WordPress verfügbar. Native Gettext-Unterstützung erfordert die <a href="http://www.php.net/gettext">php_gettext</a> Erweiterung. Native Gettext-Unterstützung benötigt Schreibrechte für das Sprachverzeichnicht <code>wp-content/languages</code>. Test der nativen Gettext-Unterstützung  fehlgeschlagen. Aktivieren Sie das Debugging für mehr Informationen. Natives gettext Natives Gettext aktiviert. Natives Gettext nicht verfügbar. Kein persistenter Objekt-Cache installiert. Aus Performance Pack Sichere Einstellungen die mit jeder WordPress-Installation funktionieren sollten. Eigene, angepasste Einstellungen. Anpassung ist über die erweiterte Ansicht möglich. Schnell Stabil Zur erweiterten Ansicht wechseln Zur einfachen Ansicht wechseln Dashboard übersetzen Übersetzungs-Verbesserungen deaktiviert Übersetzungsbezogen JIT Übersetzung benutzen MO-Dynamic benutzen Cache verwenden Cache für Übersetzungen verwenden. Dies ist nur dann effektiv, wenn ein beliebiges ObjectCache-Plugin installiert ist. Natives gettext benutzen Native Gettext-Implementierung zum Übersetzen benutzen WP Performance Pack WP Performance Pack - Einstellungen 