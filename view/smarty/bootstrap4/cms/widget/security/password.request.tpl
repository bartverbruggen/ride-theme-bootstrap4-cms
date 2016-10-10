{* widget: password; action: request; translation: template.password.request *}
{include file="base/form.prototype"}

<form id="{$form->getId()}" class="form-horizontal" action="{$app.url.request}" method="POST" role="form">
    <fieldset>
        {call formRows form=$form}

        <div class="form-group">
            <div class="col-lg-12">
                <input type="submit" class="btn btn-default" value="{translate key="button.submit"}" />
            </div>
        </div>
    </fieldset>
</form>
