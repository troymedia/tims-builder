
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import valueObjects.CorrectResponse;
import valueObjects.IncorrectResponse;
import valueObjects.Question;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _QuestionPoolEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("number", "correctResponse", "incorrectResponse", "question");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("number", "correctResponse", "incorrectResponse", "question");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("number", "correctResponse", "incorrectResponse", "question");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("number", "correctResponse", "incorrectResponse", "question");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("number", "correctResponse", "incorrectResponse", "question");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("question");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "QuestionPool";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _numberIsValid:Boolean;
    model_internal var _numberValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numberIsValidCacheInitialized:Boolean = false;
    model_internal var _numberValidationFailureMessages:Array;
    
    model_internal var _correctResponseIsValid:Boolean;
    model_internal var _correctResponseValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _correctResponseIsValidCacheInitialized:Boolean = false;
    model_internal var _correctResponseValidationFailureMessages:Array;
    
    model_internal var _incorrectResponseIsValid:Boolean;
    model_internal var _incorrectResponseValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _incorrectResponseIsValidCacheInitialized:Boolean = false;
    model_internal var _incorrectResponseValidationFailureMessages:Array;
    
    model_internal var _questionIsValid:Boolean;
    model_internal var _questionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _questionIsValidCacheInitialized:Boolean = false;
    model_internal var _questionValidationFailureMessages:Array;

    model_internal var _instance:_Super_QuestionPool;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _QuestionPoolEntityMetadata(value : _Super_QuestionPool)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["number"] = new Array();
            model_internal::dependentsOnMap["correctResponse"] = new Array();
            model_internal::dependentsOnMap["incorrectResponse"] = new Array();
            model_internal::dependentsOnMap["question"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["question"] = "valueObjects.Question";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["number"] = "String";
        model_internal::propertyTypeMap["correctResponse"] = "valueObjects.CorrectResponse";
        model_internal::propertyTypeMap["incorrectResponse"] = "valueObjects.IncorrectResponse";
        model_internal::propertyTypeMap["question"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_numberValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumber);
        model_internal::_numberValidator.required = true;
        model_internal::_numberValidator.requiredFieldError = "number is required";
        //model_internal::_numberValidator.source = model_internal::_instance;
        //model_internal::_numberValidator.property = "number";
        model_internal::_correctResponseValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCorrectResponse);
        model_internal::_correctResponseValidator.required = true;
        model_internal::_correctResponseValidator.requiredFieldError = "correctResponse is required";
        //model_internal::_correctResponseValidator.source = model_internal::_instance;
        //model_internal::_correctResponseValidator.property = "correctResponse";
        model_internal::_incorrectResponseValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIncorrectResponse);
        model_internal::_incorrectResponseValidator.required = true;
        model_internal::_incorrectResponseValidator.requiredFieldError = "incorrectResponse is required";
        //model_internal::_incorrectResponseValidator.source = model_internal::_instance;
        //model_internal::_incorrectResponseValidator.property = "incorrectResponse";
        model_internal::_questionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForQuestion);
        model_internal::_questionValidator.required = true;
        model_internal::_questionValidator.requiredFieldError = "question is required";
        //model_internal::_questionValidator.source = model_internal::_instance;
        //model_internal::_questionValidator.property = "question";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity QuestionPool");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity QuestionPool");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of QuestionPool");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity QuestionPool");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity QuestionPool");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity QuestionPool");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isNumberAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCorrectResponseAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIncorrectResponseAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQuestionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnNumber():void
    {
        if (model_internal::_numberIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNumber = null;
            model_internal::calculateNumberIsValid();
        }
    }
    public function invalidateDependentOnCorrectResponse():void
    {
        if (model_internal::_correctResponseIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCorrectResponse = null;
            model_internal::calculateCorrectResponseIsValid();
        }
    }
    public function invalidateDependentOnIncorrectResponse():void
    {
        if (model_internal::_incorrectResponseIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIncorrectResponse = null;
            model_internal::calculateIncorrectResponseIsValid();
        }
    }
    public function invalidateDependentOnQuestion():void
    {
        if (model_internal::_questionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfQuestion = null;
            model_internal::calculateQuestionIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get numberStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get numberValidator() : StyleValidator
    {
        return model_internal::_numberValidator;
    }

    model_internal function set _numberIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_numberIsValid;         
        if (oldValue !== value)
        {
            model_internal::_numberIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numberIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get numberIsValid():Boolean
    {
        if (!model_internal::_numberIsValidCacheInitialized)
        {
            model_internal::calculateNumberIsValid();
        }

        return model_internal::_numberIsValid;
    }

    model_internal function calculateNumberIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_numberValidator.validate(model_internal::_instance.number)
        model_internal::_numberIsValid_der = (valRes.results == null);
        model_internal::_numberIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::numberValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::numberValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get numberValidationFailureMessages():Array
    {
        if (model_internal::_numberValidationFailureMessages == null)
            model_internal::calculateNumberIsValid();

        return _numberValidationFailureMessages;
    }

    model_internal function set numberValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_numberValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_numberValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numberValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get correctResponseStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get correctResponseValidator() : StyleValidator
    {
        return model_internal::_correctResponseValidator;
    }

    model_internal function set _correctResponseIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_correctResponseIsValid;         
        if (oldValue !== value)
        {
            model_internal::_correctResponseIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correctResponseIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get correctResponseIsValid():Boolean
    {
        if (!model_internal::_correctResponseIsValidCacheInitialized)
        {
            model_internal::calculateCorrectResponseIsValid();
        }

        return model_internal::_correctResponseIsValid;
    }

    model_internal function calculateCorrectResponseIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_correctResponseValidator.validate(model_internal::_instance.correctResponse)
        model_internal::_correctResponseIsValid_der = (valRes.results == null);
        model_internal::_correctResponseIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::correctResponseValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::correctResponseValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get correctResponseValidationFailureMessages():Array
    {
        if (model_internal::_correctResponseValidationFailureMessages == null)
            model_internal::calculateCorrectResponseIsValid();

        return _correctResponseValidationFailureMessages;
    }

    model_internal function set correctResponseValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_correctResponseValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_correctResponseValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correctResponseValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get incorrectResponseStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get incorrectResponseValidator() : StyleValidator
    {
        return model_internal::_incorrectResponseValidator;
    }

    model_internal function set _incorrectResponseIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_incorrectResponseIsValid;         
        if (oldValue !== value)
        {
            model_internal::_incorrectResponseIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incorrectResponseIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get incorrectResponseIsValid():Boolean
    {
        if (!model_internal::_incorrectResponseIsValidCacheInitialized)
        {
            model_internal::calculateIncorrectResponseIsValid();
        }

        return model_internal::_incorrectResponseIsValid;
    }

    model_internal function calculateIncorrectResponseIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_incorrectResponseValidator.validate(model_internal::_instance.incorrectResponse)
        model_internal::_incorrectResponseIsValid_der = (valRes.results == null);
        model_internal::_incorrectResponseIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::incorrectResponseValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::incorrectResponseValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get incorrectResponseValidationFailureMessages():Array
    {
        if (model_internal::_incorrectResponseValidationFailureMessages == null)
            model_internal::calculateIncorrectResponseIsValid();

        return _incorrectResponseValidationFailureMessages;
    }

    model_internal function set incorrectResponseValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_incorrectResponseValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_incorrectResponseValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incorrectResponseValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get questionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get questionValidator() : StyleValidator
    {
        return model_internal::_questionValidator;
    }

    model_internal function set _questionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_questionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_questionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "questionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get questionIsValid():Boolean
    {
        if (!model_internal::_questionIsValidCacheInitialized)
        {
            model_internal::calculateQuestionIsValid();
        }

        return model_internal::_questionIsValid;
    }

    model_internal function calculateQuestionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_questionValidator.validate(model_internal::_instance.question)
        model_internal::_questionIsValid_der = (valRes.results == null);
        model_internal::_questionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::questionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::questionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get questionValidationFailureMessages():Array
    {
        if (model_internal::_questionValidationFailureMessages == null)
            model_internal::calculateQuestionIsValid();

        return _questionValidationFailureMessages;
    }

    model_internal function set questionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_questionValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_questionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "questionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("number"):
            {
                return numberValidationFailureMessages;
            }
            case("correctResponse"):
            {
                return correctResponseValidationFailureMessages;
            }
            case("incorrectResponse"):
            {
                return incorrectResponseValidationFailureMessages;
            }
            case("question"):
            {
                return questionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
