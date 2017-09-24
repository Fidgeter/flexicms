<li class="menu-item-<?= $item->id ?>" data-id="<?= $item->id ?>">
    <i class="write icon"></i>
    <input type="text" value="<?= $item->name ?>" onchange="menu.updateItem(<?= $item->id ?>, 'name', this)">
    <i class="linkify icon"></i>
    <input type="text" value="<?= $item->link ?>" onchange="menu.updateItem(<?= $item->id ?>, 'link', this)">
    <div class="menu-item-event">
        <button class="button-remove" onclick="menu.removeItem(<?= $item->id ?>)">
            <i class="remove circle icon"></i>
        </button>
        <i class="move icon"></i>
    </div>
</li>
