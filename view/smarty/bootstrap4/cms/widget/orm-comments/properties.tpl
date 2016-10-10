{include file="base/form.prototype"}

<form id="{$form->getId()}" class="form-horizontal" action="{$app.url.request}" method="POST" role="form">
    <fieldset>
        <div class="tab">
            <div class="tabbable">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tabWidget" data-toggle="tab">{translate key="widget.orm.comments"}</a></li>
                    <li><a href="#tabView" data-toggle="tab">{translate key="title.view"}</a></li>
                </ul>
            </div>

            <div class="tab-content">
                <div id="tabWidget" class="tab-pane active">
                    {call formRow form=$form row="finish"}
                    {call formRow form=$form row="anonymous"}
                    {call formRow form=$form row="approval"}
                </div>

                <div id="tabView" class="tab-pane">
                    {call formRow form=$form row="template"}
                    {call formRow form=$form row="title"}
                </div>
            </div>
        </div>

        {call formRows form=$form}

        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <input type="submit" class="btn btn-default" value="{translate key="button.save"}" />
                <input type="submit" name="cancel" class="btn btn-link" value="{translate key="button.cancel"}" />
            </div>
        </div>
    </fieldset>
</form>
