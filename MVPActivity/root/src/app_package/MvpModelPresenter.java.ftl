package ${packageName}.${mvpPresenterPackage};

import ${packageName}.${mvpContractPackage}.${contractClass};
import ${packageName}.${mvpModelPackage}.${modelClass};
import ${packageName}.${mvpModelPackage}.${repositoryClass};
import ${mvpBasePresenterPackage}.${mvpBaseModelPresenter};

/**
 * Created by ${userName} on ${.now}
 */
public class ${presenterClass} extends ${mvpBaseModelPresenter}<${contractClass}.View,${modelClass}> implements ${contractClass}.Presenter,${modelClass}.Callback{

   @Override
    public ${modelClass} createModel() {
        return new ${repositoryClass}(this);
    }
}