<?php
/**
 * /lib/shortcodes.php
 *
 * @package Relevanssi
 * @author  Mikko Saari
 * @license https://wordpress.org/about/gpl/ GNU General Public License
 * @see     https://www.relevanssi.com/
 */

add_shortcode( 'search', 'relevanssi_shortcode' );
add_shortcode( 'noindex', 'relevanssi_noindex_shortcode' );
add_shortcode( 'searchform', 'relevanssi_search_form' );

/**
 * Creates a link to search results.
 *
 * Using this is generally not a brilliant idea, actually. Google doesn't like if you
 * create links to internal search results.
 *
 * Usage: [search term='tomato']tomatoes[/search] would create a link like this:
 * <a href="/?s=tomato">tomatoes</a>
 *
 * Set 'phrase' to something else than 'not' to make the search term a phrase.
 *
 * @global object $wpdb The WordPress database interface.
 *
 * @param array  $atts    The shortcode attributes. If 'term' is set, will use it as
 * the search term, otherwise the content word is used as the term.
 * @param string $content The content inside the shortcode tags.
 *
 * @return string A link to search results.
 */
function relevanssi_shortcode( $atts, $content ) {
	global $wpdb;

	$attributes = shortcode_atts( array(
		'term'   => false,
		'phrase' => 'not',
	), $atts);

	$term   = $attributes['term'];
	$phrase = $attributes['phrase'];

	if ( false !== $term ) {
		$term = rawurlencode( relevanssi_strtolower( $term ) );
	} else {
		$term = rawurlencode( strip_tags( relevanssi_strtolower( $content ) ) );
	}

	if ( 'not' !== $phrase ) {
		$term = '%22' . $term . '%22';
	}

	$link = get_bloginfo( 'url' ) . "/?s=$term";
	$pre  = "<a rel='nofollow' href='$link'>"; // rel='nofollow' for Google.
	$post = '</a>';

	return $pre . do_shortcode( $content ) . $post;
}

/**
 * Does nothing.
 *
 * In normal use, the [noindex] shortcode does nothing.
 *
 * @param array  $atts    The shortcode attributes. Not used.
 * @param string $content The content inside the shortcode tags.
 *
 * @return string The shortcode content.
 */
function relevanssi_noindex_shortcode( $atts, $content ) {
	return do_shortcode( $content );
}

/**
 * Returns nothing.
 *
 * During indexing, the [noindex] shortcode returns nothing.
 *
 * @param array  $atts    The shortcode attributes. Not used.
 * @param string $content The content inside the shortcode tags.
 *
 * @return string An empty string.
 */
function relevanssi_noindex_shortcode_indexing( $atts, $content ) {
	return '';
}

/**
 * Returns a search form.
 *
 * Returns a search form generated by get_search_form(). Any attributes passed to the
 * shortcode will be passed onto the search form, for example like this:
 *
 * [searchform post_types='post,product']
 *
 * This would add a
 *
 * <input type="hidden" name="post_types" value="post,product" />
 *
 * to the search form.
 *
 * @param array $atts The shortcode attributes.
 *
 * @return string A search form.
 */
function relevanssi_search_form( $atts ) {
	$form = get_search_form( false );
	if ( is_array( $atts ) ) {
		$additional_fields = array();
		foreach ( $atts as $key => $value ) {
			$key   = esc_attr( $key );
			$value = esc_attr( $value );

			$additional_fields[] = "<input type='hidden' name='$key' value='$value' />";
		}
		$form = str_replace( '</form>', implode( "\n", $additional_fields ) . '</form>', $form );
	}
	return $form;
}
