<?php

/**
 * @return WP_Query
 */
function getSlidersByType($type) {
    return new WP_Query([ 'sliders_category' => $type ]);
}
