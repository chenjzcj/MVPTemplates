<?xml version="1.0"?>
<globals>
   
<global id="hasNoActionBar" type="boolean" value="false" />
<global id="parentActivityClass" value="" />
<global id="simpleLayoutName" value="${layoutName}" />
<global id="excludeMenu" type="boolean" value="true" />
<global id="generateActivityTitle" type="boolean" value="false" />

<global id="userName" type="string" value="Felix.Zhong" /> 


<!-- mvp各层生成的类所在的包名-->
<global id="mvpViewPackage" type="string" value="view" />   
<global id="mvpContractPackage" type="string" value="contract" />   
<global id="mvpPresenterPackage" type="string" value="presenter" />   
<global id="mvpModelPackage" type="string" value="model" />   

<!-- mvp的ui类型区分判断-->   
<#if mvpSuperActivity == 'activity'>
    <global id="mvpSuperClass" type="string" value="BaseActivity"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view"/>
<#elseif mvpSuperActivity == 'fragment_activity'>
    <global id="mvpSuperClass" type="string" value="BaseFragmentActivity"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view.support"/>
<#elseif mvpSuperActivity == 'appCompat_activity'>
    <global id="mvpSuperClass" type="string" value="BaseAppCompatActivity"/>
    <global id="mvpSuperClassPackage" type="string" value="${mvpLibraryPackageName}.view.support"/>
<#else>
	  <global id="mvpSuperClass" type="string" value="BaseActivity"/>
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

<#include "../common/common_globals.xml.ftl" />

</globals>
