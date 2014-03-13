<?php
/**
 * Don't generate intermediate images on upload, but on first access.
 * Image creation is done via serve-dynamic-images.php.
 * Based on Dynamic Image Resizer (http://ottopress.com) by Otto42 (http://ottodestruct.com).
 *
 * @author Bj�rn Ahrens
 * @package WP Performance Pack
 * @since 1.1
 */

class WPPP_Dynamic_Images {

	private $dynimg_image_sizes = NULL;

	function __construct () {
		add_action ('init', array( $this, 'init' ) );
	}

	public static function deactivate () {
		flush_rewrite_rules();
	}

	function init () {
		$path = substr( plugins_url( 'serve-dynamic-images.php', __FILE__ ), strlen( site_url() ) + 1 ); // cut wp-content including trailing slash

		add_rewrite_rule( '(.*)-([0-9]+)x([0-9]+)(c)?\.((?i)jpeg|jpg|png|gif)' , $path, 'top' );
		add_filter ( 'mod_rewrite_rules', array ( $this, 'mod_rewrite_rules' ) );

		add_filter( 'intermediate_image_sizes_advanced', array ( $this, 'dynimg_image_sizes_advanced' ) );
		add_filter( 'wp_generate_attachment_metadata', array ( $this, 'dynimg_generate_metadata' ) );
	}

	function mod_rewrite_rules ( $rules ) {
		$lines = explode( "\n", $rules );
		$rules = '';
		for ($i = 0, $max = count($lines); $i<$max; $i++ ) {
			if ( strpos( $lines[$i], 'serve-image.php' ) !== false ){
				// extend rewrite rule by conditionals, so if the requested file exist it gets served directly
				$rules .= "RewriteCond %{REQUEST_FILENAME} !-f \n";
			}
			$rules .= $lines[$i] . "\n";
		}
		return $rules;
	}

	// prevent WP from generating resized images on upload
	function dynimg_image_sizes_advanced( $sizes ) {
		// save the sizes to a global, because the next function needs them to lie to WP about what sizes were generated
		$this->dynimg_image_sizes = $sizes;

		// force WP to not create intermediate images by telling it there are no sizes
		return array();
	}

	// trick WP into thinking images were generated anyway
	function dynimg_generate_metadata( $meta ) {
		foreach ( $this->dynimg_image_sizes as $sizename => $size ) {
			// figure out what size WP would make this:
			$newsize = image_resize_dimensions( $meta['width'], $meta['height'], $size['width'], $size['height'], $size['crop'] );

			if ($newsize) {
				$info = pathinfo( $meta['file'] );
				$ext = $info['extension'];
				$name = wp_basename($meta['file'], ".$ext");

				$suffix = "{$newsize[4]}x{$newsize[5]}";
				/*if ( $size['crop'] ) {
					$suffix .='c';
				}*/

				// build the fake meta entry for the size in question
				$resized = array(
					'file' => "{$name}-{$suffix}.{$ext}",
					'width' => $newsize[4],
					'height' => $newsize[5],
				);

				$meta['sizes'][$sizename] = $resized;
			}
		}

		return $meta;
	}
}

?>