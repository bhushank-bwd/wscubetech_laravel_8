<?php

if (!function_exists('ep')) {
    function ep($data, $exitControll = true)
    {
        echo '<pre>';
        print_r($data);
        if($exitControll){
            die;
        }
    }
}
?>