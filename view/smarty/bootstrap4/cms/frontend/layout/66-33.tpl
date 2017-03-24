{function name="layout_66_33" section=null widgets=null}
    {$breakpoint = $app.cms.node->getSectionGridBreakpoint($region, $section, 'md')}
    <div class="row section section-{$section} section-{$region}-{$section} {$style}">
        {call layout_block region=$region section=$section block="1" style="col-`$breakpoint`-8"}
        {call layout_block region=$region section=$section block="2" style="col-`$breakpoint`-4"}
    </div>
{/function}
