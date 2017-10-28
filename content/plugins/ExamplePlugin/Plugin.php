<?php
namespace Plugin\ExamplePlugin;

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
            'name'        => 'Plugin Demo',
            'description' => 'Demonstration plugin.',
            'author'      => 'Artem Melnik',
            'version'      => '1.0',
            'site'	=> 'https://vk.com/dev_start',
            'icon'        => 'icon-leaf'
        ];
    }

    public function init()
    {
    }
}
