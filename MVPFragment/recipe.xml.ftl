<?xml version="1.0"?>
<recipe>

<#if includeLayout>
        <instantiate from="root/res/layout/fragment_main.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

</#if>
    <instantiate from="root/src/app_package/MvpFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpViewPackage}/${mvpViewFragmentPackage}/${fragmentClass}.java" />

    <instantiate from="root/src/app_package/MvpContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpContractPackage}/${contractClass}.java" />

<#if !hasMode>
    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpPresenterPackage}/${presenterClass}.java" />
<#else>
	   <instantiate from="root/src/app_package/MvpModelPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpPresenterPackage}/${presenterClass}.java" />

     <instantiate from="root/src/app_package/MvpModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpModelPackage}/${modelClass}.java" />

     <instantiate from="root/src/app_package/MvpRepository.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpModelPackage}/${repositoryClass}.java" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${mvpViewPackage}/${mvpViewFragmentPackage}/${fragmentClass}.java" />

</recipe>
