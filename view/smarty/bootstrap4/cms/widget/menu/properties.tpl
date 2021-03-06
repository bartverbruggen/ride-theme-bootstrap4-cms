{url id="cms.node.content.region" parameters=["locale" => $locale, "site" => $site->getId(), "revision" => $node->getRevision(), "node" => $node->getId(), "region" => $region] var="referer"}
<form id="{$form->getId()}" action="{$app.url.request}" method="POST" role="form">
    <ul class="nav nav-tabs mb-2">
        <li class="nav-item"><a class="nav-link active" href="#widget" data-toggle="tab">{translate key="widget.menu"}</a></li>
        <li class="nav-item"><a class="nav-link" href="#view" data-toggle="tab">{translate key="title.view"}</a></li>
    </ul>

    <div class="tab-content">
        <div id="view" class="tab-pane">
            {call formRow form=$form row="template"}
            {call formRow form=$form row="title-show"}
            {call formRow form=$form row="title"}
        </div>

        <div id="widget" class="tab-pane active">
            {call formRows form=$form row="type"}
            {call formRows form=$form row="parent"}
            {call formRows form=$form row="pages" class="form-selectize"}
            {call formRows form=$form}
        </div>
    </div>

    {call formActions referer=$referer}
</form>
