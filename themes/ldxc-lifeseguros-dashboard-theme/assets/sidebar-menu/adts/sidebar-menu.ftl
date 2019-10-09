<#assign items = entries />
<#assign itemsCount = items?size />

<#if items?has_content>

    <ul class="nav">

        <#list items as item>

            <#assign pageIcon = item.getLayout().getExpandoBridge().getAttribute("page-icon")!""/>

            <li class="nav-item <#if item.isSelected()>active</#if>"> 
                <a class="nav-link" href="${item.getURL()}">
                    <i class="material-icons">${pageIcon}</i>
                    <p>${item.getName()}</p>
                </a>
            </li>

        </#list>

    </ul>

</#if>
