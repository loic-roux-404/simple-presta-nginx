<div class="ld-page">
    <div class="ld-page-wrapper">
        {foreach $htmlBlocks as $htmlBlock}
            <div class="custom-text card bg-transparent border-0">
                <div class="card-body">
                    <div class="display-2 py-2">{$htmlBlock.title nofilter}</div>
                    {$htmlBlock.content nofilter}
                </div>
            </div>
        {/foreach}
    </div>
</div>