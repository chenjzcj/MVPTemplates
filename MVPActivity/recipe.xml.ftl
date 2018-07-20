<?xml version="1.0"?>
<recipe>
    <#include "mvp_manifest.xml.ftl" />

<#if generateLayout>
    <#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpViewPackage}/${activityClass}.java" />

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

    <open file="${escapeXmlAttribute(srcOut)}/${mvpViewPackage}/${activityClass}.java" />    

</recipe>
