{extends file="cms/backend/index"}

{block name="head_title" prepend}{$node->getName($locale)} | {/block}

{block name="taskbar_panels" append}
    {if !$site->isAutoPublish()}
        {include file="helper/cms/taskbar"}

        {url id="cms.node.varnish" parameters=["locale" => $locale, "site" => $site->getId(), "revision" => "%revision%", "node" => $node->getId()] var="url"}
        {call taskbarPanelPublish url=$url revision=$node->getRevision() revisions=$site->getRevisions()}
    {/if}

    {url id="cms.node.varnish" parameters=["locale" => "%locale%", "site" => $site->getId(), "revision" => $node->getRevision(), "node" => $node->getId()] var="url"}
    {call taskbarPanelLocales url=$url locale=$locale locales=$locales}
{/block}

{block name="content_title" append}
    {include "helper/cms/titlebar"
        node=$node
        subtitle="title.node.varnish"|translate
        breadcrumbUrl=$app.url.request
        breadcrumbLabel="label.node.action.varnish"|translate
        action="seo"
    }
{/block}

{block name="content_body" append}
    <p>{translate key="label.node.action.varnish.intro"}</p>

    {include file="helper/form.prototype"}

    <form id="{$form->getId()}" action="{$app.url.request}" method="POST" role="form">
        <div class="form-group">
            <p>{translate key="label.confirm.varnish.clear" node=$node->getName($locale)}</p>
        </div>

        {call formWidget form=$form row="recursive"}

        {call formRows form=$form}
        {call formActions referer=$referer submit="button.cache.clear"}
    </form>
{/block}
