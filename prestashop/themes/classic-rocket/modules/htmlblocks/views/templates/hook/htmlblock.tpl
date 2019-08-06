{foreach $htmlBlocks as $htmlBlock}
    <div class="custom-text card">
        <div class="card-body">
            {$htmlBlock.content nofilter}
        </div>
    </div>
{/foreach}
