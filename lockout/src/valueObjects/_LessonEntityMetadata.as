
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
import valueObjects.IncorrectFeedback;
import valueObjects.Lesson;
import valueObjects.QuestionPool;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LessonEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id", "incorrectFeedback", "questionPool", "lesson");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id", "incorrectFeedback", "questionPool", "lesson");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id", "incorrectFeedback", "questionPool", "lesson");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id", "incorrectFeedback", "questionPool", "lesson");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("id", "incorrectFeedback", "questionPool", "lesson");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("questionPool");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Lesson";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _incorrectFeedbackIsValid:Boolean;
    model_internal var _incorrectFeedbackValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _incorrectFeedbackIsValidCacheInitialized:Boolean = false;
    model_internal var _incorrectFeedbackValidationFailureMessages:Array;
    
    model_internal var _questionPoolIsValid:Boolean;
    model_internal var _questionPoolValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _questionPoolIsValidCacheInitialized:Boolean = false;
    model_internal var _questionPoolValidationFailureMessages:Array;
    
    model_internal var _lessonIsValid:Boolean;
    model_internal var _lessonValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _lessonIsValidCacheInitialized:Boolean = false;
    model_internal var _lessonValidationFailureMessages:Array;

    model_internal var _instance:_Super_Lesson;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LessonEntityMetadata(value : _Super_Lesson)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["incorrectFeedback"] = new Array();
            model_internal::dependentsOnMap["questionPool"] = new Array();
            model_internal::dependentsOnMap["lesson"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["questionPool"] = "valueObjects.QuestionPool";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["incorrectFeedback"] = "valueObjects.IncorrectFeedback";
        model_internal::propertyTypeMap["questionPool"] = "ArrayCollection";
        model_internal::propertyTypeMap["lesson"] = "valueObjects.Lesson";

        model_internal::_instance = value;
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_incorrectFeedbackValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIncorrectFeedback);
        model_internal::_incorrectFeedbackValidator.required = true;
        model_internal::_incorrectFeedbackValidator.requiredFieldError = "incorrectFeedback is required";
        //model_internal::_incorrectFeedbackValidator.source = model_internal::_instance;
        //model_internal::_incorrectFeedbackValidator.property = "incorrectFeedback";
        model_internal::_questionPoolValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForQuestionPool);
        model_internal::_questionPoolValidator.required = true;
        model_internal::_questionPoolValidator.requiredFieldError = "questionPool is required";
        //model_internal::_questionPoolValidator.source = model_internal::_instance;
        //model_internal::_questionPoolValidator.property = "questionPool";
        model_internal::_lessonValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLesson);
        model_internal::_lessonValidator.required = true;
        model_internal::_lessonValidator.requiredFieldError = "lesson is required";
        //model_internal::_lessonValidator.source = model_internal::_instance;
        //model_internal::_lessonValidator.property = "lesson";
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
            throw new Error(propertyName + " is not a data property of entity Lesson");
            
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
            throw new Error(propertyName + " is not a collection property of entity Lesson");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Lesson");

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
            throw new Error(propertyName + " does not exist for entity Lesson");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Lesson");
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
            throw new Error(propertyName + " does not exist for entity Lesson");
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
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIncorrectFeedbackAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQuestionPoolAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLessonAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnIncorrectFeedback():void
    {
        if (model_internal::_incorrectFeedbackIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIncorrectFeedback = null;
            model_internal::calculateIncorrectFeedbackIsValid();
        }
    }
    public function invalidateDependentOnQuestionPool():void
    {
        if (model_internal::_questionPoolIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfQuestionPool = null;
            model_internal::calculateQuestionPoolIsValid();
        }
    }
    public function invalidateDependentOnLesson():void
    {
        if (model_internal::_lessonIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLesson = null;
            model_internal::calculateLessonIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

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
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get incorrectFeedbackStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get incorrectFeedbackValidator() : StyleValidator
    {
        return model_internal::_incorrectFeedbackValidator;
    }

    model_internal function set _incorrectFeedbackIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_incorrectFeedbackIsValid;         
        if (oldValue !== value)
        {
            model_internal::_incorrectFeedbackIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incorrectFeedbackIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get incorrectFeedbackIsValid():Boolean
    {
        if (!model_internal::_incorrectFeedbackIsValidCacheInitialized)
        {
            model_internal::calculateIncorrectFeedbackIsValid();
        }

        return model_internal::_incorrectFeedbackIsValid;
    }

    model_internal function calculateIncorrectFeedbackIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_incorrectFeedbackValidator.validate(model_internal::_instance.incorrectFeedback)
        model_internal::_incorrectFeedbackIsValid_der = (valRes.results == null);
        model_internal::_incorrectFeedbackIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::incorrectFeedbackValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::incorrectFeedbackValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get incorrectFeedbackValidationFailureMessages():Array
    {
        if (model_internal::_incorrectFeedbackValidationFailureMessages == null)
            model_internal::calculateIncorrectFeedbackIsValid();

        return _incorrectFeedbackValidationFailureMessages;
    }

    model_internal function set incorrectFeedbackValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_incorrectFeedbackValidationFailureMessages;

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
            model_internal::_incorrectFeedbackValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incorrectFeedbackValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get questionPoolStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get questionPoolValidator() : StyleValidator
    {
        return model_internal::_questionPoolValidator;
    }

    model_internal function set _questionPoolIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_questionPoolIsValid;         
        if (oldValue !== value)
        {
            model_internal::_questionPoolIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "questionPoolIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get questionPoolIsValid():Boolean
    {
        if (!model_internal::_questionPoolIsValidCacheInitialized)
        {
            model_internal::calculateQuestionPoolIsValid();
        }

        return model_internal::_questionPoolIsValid;
    }

    model_internal function calculateQuestionPoolIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_questionPoolValidator.validate(model_internal::_instance.questionPool)
        model_internal::_questionPoolIsValid_der = (valRes.results == null);
        model_internal::_questionPoolIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::questionPoolValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::questionPoolValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get questionPoolValidationFailureMessages():Array
    {
        if (model_internal::_questionPoolValidationFailureMessages == null)
            model_internal::calculateQuestionPoolIsValid();

        return _questionPoolValidationFailureMessages;
    }

    model_internal function set questionPoolValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_questionPoolValidationFailureMessages;

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
            model_internal::_questionPoolValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "questionPoolValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get lessonStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get lessonValidator() : StyleValidator
    {
        return model_internal::_lessonValidator;
    }

    model_internal function set _lessonIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_lessonIsValid;         
        if (oldValue !== value)
        {
            model_internal::_lessonIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lessonIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get lessonIsValid():Boolean
    {
        if (!model_internal::_lessonIsValidCacheInitialized)
        {
            model_internal::calculateLessonIsValid();
        }

        return model_internal::_lessonIsValid;
    }

    model_internal function calculateLessonIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_lessonValidator.validate(model_internal::_instance.lesson)
        model_internal::_lessonIsValid_der = (valRes.results == null);
        model_internal::_lessonIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::lessonValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::lessonValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get lessonValidationFailureMessages():Array
    {
        if (model_internal::_lessonValidationFailureMessages == null)
            model_internal::calculateLessonIsValid();

        return _lessonValidationFailureMessages;
    }

    model_internal function set lessonValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_lessonValidationFailureMessages;

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
            model_internal::_lessonValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lessonValidationFailureMessages", oldValue, value));
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
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("incorrectFeedback"):
            {
                return incorrectFeedbackValidationFailureMessages;
            }
            case("questionPool"):
            {
                return questionPoolValidationFailureMessages;
            }
            case("lesson"):
            {
                return lessonValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
