<?xml version="1.0"?>
<globals>
	
<#assign useSupport=(minApiLevel lt 23)>
<global id="useSupport" type="boolean" value="${useSupport?string}" />
<global id="SupportPackage" value="${useSupport?string('.support.v4','')}" />   
<global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
<global id="resOut" value="${resDir}" />
<global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />

    
<global id="userName" type="string" value="Felix.Zhong" /> 


<!-- mvp各层生成的类所在的包名-->
<global id="mvpViewPackage" type="string" value="view" />   
<global id="mvpContractPackage" type="string" value="contract" />   
<global id="mvpPresenterPackage" type="string" value="presenter" />   
<global id="mvpModelPackage" type="string" value="model" />   
<global id="mvpViewFragmentPackage" type="string" value="fragment" />

<!-- mvp的ui类型区分判断-->   
<#if mvpSuperFragment == 'fragment'>
    <global id="mvpSuperClass" type="string" value="BaseFragment"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view"/>
<#elseif mvpSuperFragment == 'fragment_v4'>
    <global id="mvpSuperClass" type="string" value="BaseFragment"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view.support"/>
<#elseif mvpSuperFragment == 'dialog_fragment'>
    <global id="mvpSuperClass" type="string" value="BaseDialogFragment"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view"/>
<#elseif mvpSuperFragment == 'dialog_fragment_v4'>
    <global id="mvpSuperClass" type="string" value="BaseDialogFragment"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view.support"/>
<#else>
	  <global id="mvpSuperClass" type="string" value="BaseFragment"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view"/>
</#if>

<!-- mvp框架基类名称与所在的包名-->
<global id="mvpSuperPresenter" type="string" value="IPresenter" /> 
<global id="mvpSuperPresenterPackage" type="string" value="${mvpLibraryPackageName}.presenter" />  
<global id="mvpSuperView" type="string" value="Ui" />   
<global id="mvpSuperViewPackage" type="string" value="${mvpLibraryPackageName}.view" />  

<global id="mvpBasePresenter" type="string" value="BasePresenter" /> 
<global id="mvpBaseModelPresenter" type="string" value="BaseModelPresenter" /> 
<global id="mvpBasePresenterPackage" type="string" value="${mvpLibraryPackageName}.presenter" />  

<global id="mvpSuperModel" type="string" value="Model" /> 
<global id="mvpSuperModelPackage" type="string" value="${mvpLibraryPackageName}.model" />  


</globals>
