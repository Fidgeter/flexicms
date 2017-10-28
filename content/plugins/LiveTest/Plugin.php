<?php
namespace Plugin\LiveTest;

/**
 * Class Plugin
 * @package Content\Plugins\ExamplePlugin
 */
class Plugin extends \Engine\Plugin
{
    /**
     * @return array
     */
    public function details()
    {
        return [
            'name'        => 'Live Test Demo',
            'description' => 'Demonstration plugin.',
            'author'      => 'Artem Melnik',
            'version'      => '1.1',
            'site'	=> 'https://vk.com/dev_start',
            'icon'        => 'icon-leaf'
        ];
    }

    public function init()
    {
    }
}
