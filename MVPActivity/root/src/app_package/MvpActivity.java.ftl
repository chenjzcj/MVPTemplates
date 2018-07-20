package ${packageName}.${mvpViewPackage};

import android.os.Bundle;
import ${mvpSuperClassPackage}.${mvpSuperClass};
import ${packageName}.${mvpContractPackage}.${contractClass};
import ${packageName}.${mvpPresenterPackage}.${presenterClass};


/**
 * Created by ${userName} on ${.now}
 */
public class ${activityClass} extends ${mvpSuperClass}<${contractClass}.Presenter, ${contractClass}.View> implements ${contractClass}.View{

    @Override
    public ${contractClass}.Presenter createPresenter() {
      <#if !hasMode>
			  return new ${presenterClass}();
			<#else>
				return new ${presenterClass}();
			</#if>
    }

    @Override
    public ${contractClass}.View getUiImplement() {
        return this;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
