package ${packageName}.${mvpViewPackage}.${mvpViewFragmentPackage};

import ${mvpSuperClassPackage}.${mvpSuperClass};
import ${packageName}.${mvpContractPackage}.${contractClass};
import ${packageName}.${mvpPresenterPackage}.${presenterClass};
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/**
 * Created by ${userName} on ${.now}
 */
public class ${fragmentClass} extends ${mvpSuperClass}<${contractClass}.Presenter, ${contractClass}.View> implements ${contractClass}.View{

    @Override
    public ${contractClass}.Presenter createPresenter() {
			  return new ${presenterClass}();
    }

    @Override
    public ${contractClass}.View getUiImplement() {
        return this;
    }
    
<#if includeFactory>
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;
</#if> 

<#if includeFactory>
    public static ${fragmentClass} newInstance(String param1, String param2) {
        ${fragmentClass} fragment = new ${fragmentClass}();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }
</#if>


    public ${fragmentClass}() {
       
    }    
<#if includeFactory>
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }
</#if>    
      @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
<#if includeLayout>
        // Inflate the layout for this fragment
         return inflater.inflate(R.layout.${fragmentName}, container, false);
<#else>
        return null;
</#if>
    }

}
