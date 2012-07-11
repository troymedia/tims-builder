
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
import valueObjects.Response;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _QuestionEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("type", "text", "audio", "cardinality", "response");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("type", "text", "audio", "cardinality", "response");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("type", "text", "audio", "cardinality", "response");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("type", "text", "audio", "cardinality", "response");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("type", "text", "audio", "cardinality", "response");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("response");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Question";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _typeIsValid:Boolean;
    model_internal var _typeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _typeIsValidCacheInitialized:Boolean = false;
    model_internal var _typeValidationFailureMessages:Array;
    
    model_internal var _textIsValid:Boolean;
    model_internal var _textValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _textIsValidCacheInitialized:Boolean = false;
    model_internal var _textValidationFailureMessages:Array;
    
    model_internal var _audioIsValid:Boolean;
    model_internal var _audioValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _audioIsValidCacheInitialized:Boolean = false;
    model_internal var _audioValidationFailureMessages:Array;
    
    model_internal var _cardinalityIsValid:Boolean;
    model_internal var _cardinalityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cardinalityIsValidCacheInitialized:Boolean = false;
    model_internal var _cardinalityValidationFailureMessages:Array;
    
    model_internal var _responseIsValid:Boolean;
    model_internal var _responseValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _responseIsValidCacheInitialized:Boolean = false;
    model_internal var _responseValidationFailureMessages:Array;

    model_internal var _instance:_Super_Question;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _QuestionEntityMetadata(value : _Super_Question)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["type"] = new Array();
            model_internal::dependentsOnMap["text"] = new Array();
            model_internal::dependentsOnMap["audio"] = new Array();
            model_internal::dependentsOnMap["cardinality"] = new Array();
            model_internal::dependentsOnMap["response"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["response"] = "valueObjects.Response";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["type"] = "String";
        model_internal::propertyTypeMap["text"] = "String";
        model_internal::propertyTypeMap["audio"] = "String";
        model_internal::propertyTypeMap["cardinality"] = "String";
        model_internal::propertyTypeMap["response"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_typeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForType);
        model_internal::_typeValidator.required = true;
        model_internal::_typeValidator.requiredFieldError = "type is required";
        //model_internal::_typeValidator.source = model_internal::_instance;
        //model_internal::_typeValidator.property = "type";
        model_internal::_textValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForText);
        model_internal::_textValidator.required = true;
        model_internal::_textValidator.requiredFieldError = "text is required";
        //model_internal::_textValidator.source = model_internal::_instance;
        //model_internal::_textValidator.property = "text";
        model_internal::_audioValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAudio);
        model_internal::_audioValidator.required = true;
        model_internal::_audioValidator.requiredFieldError = "audio is required";
        //model_internal::_audioValidator.source = model_internal::_instance;
        //model_internal::_audioValidator.property = "audio";
        model_internal::_cardinalityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCardinality);
        model_internal::_cardinalityValidator.required = true;
        model_internal::_cardinalityValidator.requiredFieldError = "cardinality is required";
        //model_internal::_cardinalityValidator.source = model_internal::_instance;
        //model_internal::_cardinalityValidator.property = "cardinality";
        model_internal::_responseValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForResponse);
        model_internal::_responseValidator.required = true;
        model_internal::_responseValidator.requiredFieldError = "response is required";
        //model_internal::_responseValidator.source = model_internal::_instance;
        //model_internal::_responseValidator.property = "response";
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
            throw new Error(propertyName + " is not a data property of entity Question");
            
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
            throw new Error(propertyName + " is not a collection property of entity Question");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Question");

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
            throw new Error(propertyName + " does not exist for entity Question");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Question");
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
            throw new Error(propertyName + " does not exist for entity Question");
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
    public function get isTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTextAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAudioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCardinalityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isResponseAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnType():void
    {
        if (model_internal::_typeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfType = null;
            model_internal::calculateTypeIsValid();
        }
    }
    public function invalidateDependentOnText():void
    {
        if (model_internal::_textIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfText = null;
            model_internal::calculateTextIsValid();
        }
    }
    public function invalidateDependentOnAudio():void
    {
        if (model_internal::_audioIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAudio = null;
            model_internal::calculateAudioIsValid();
        }
    }
    public function invalidateDependentOnCardinality():void
    {
        if (model_internal::_cardinalityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCardinality = null;
            model_internal::calculateCardinalityIsValid();
        }
    }
    public function invalidateDependentOnResponse():void
    {
        if (model_internal::_responseIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfResponse = null;
            model_internal::calculateResponseIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get typeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get typeValidator() : StyleValidator
    {
        return model_internal::_typeValidator;
    }

    model_internal function set _typeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_typeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_typeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get typeIsValid():Boolean
    {
        if (!model_internal::_typeIsValidCacheInitialized)
        {
            model_internal::calculateTypeIsValid();
        }

        return model_internal::_typeIsValid;
    }

    model_internal function calculateTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_typeValidator.validate(model_internal::_instance.type)
        model_internal::_typeIsValid_der = (valRes.results == null);
        model_internal::_typeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::typeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::typeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get typeValidationFailureMessages():Array
    {
        if (model_internal::_typeValidationFailureMessages == null)
            model_internal::calculateTypeIsValid();

        return _typeValidationFailureMessages;
    }

    model_internal function set typeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_typeValidationFailureMessages;

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
            model_internal::_typeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get textStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get textValidator() : StyleValidator
    {
        return model_internal::_textValidator;
    }

    model_internal function set _textIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_textIsValid;         
        if (oldValue !== value)
        {
            model_internal::_textIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get textIsValid():Boolean
    {
        if (!model_internal::_textIsValidCacheInitialized)
        {
            model_internal::calculateTextIsValid();
        }

        return model_internal::_textIsValid;
    }

    model_internal function calculateTextIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_textValidator.validate(model_internal::_instance.text)
        model_internal::_textIsValid_der = (valRes.results == null);
        model_internal::_textIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::textValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::textValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get textValidationFailureMessages():Array
    {
        if (model_internal::_textValidationFailureMessages == null)
            model_internal::calculateTextIsValid();

        return _textValidationFailureMessages;
    }

    model_internal function set textValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_textValidationFailureMessages;

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
            model_internal::_textValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get audioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get audioValidator() : StyleValidator
    {
        return model_internal::_audioValidator;
    }

    model_internal function set _audioIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_audioIsValid;         
        if (oldValue !== value)
        {
            model_internal::_audioIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "audioIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get audioIsValid():Boolean
    {
        if (!model_internal::_audioIsValidCacheInitialized)
        {
            model_internal::calculateAudioIsValid();
        }

        return model_internal::_audioIsValid;
    }

    model_internal function calculateAudioIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_audioValidator.validate(model_internal::_instance.audio)
        model_internal::_audioIsValid_der = (valRes.results == null);
        model_internal::_audioIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::audioValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::audioValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get audioValidationFailureMessages():Array
    {
        if (model_internal::_audioValidationFailureMessages == null)
            model_internal::calculateAudioIsValid();

        return _audioValidationFailureMessages;
    }

    model_internal function set audioValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_audioValidationFailureMessages;

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
            model_internal::_audioValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "audioValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cardinalityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cardinalityValidator() : StyleValidator
    {
        return model_internal::_cardinalityValidator;
    }

    model_internal function set _cardinalityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cardinalityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cardinalityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardinalityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cardinalityIsValid():Boolean
    {
        if (!model_internal::_cardinalityIsValidCacheInitialized)
        {
            model_internal::calculateCardinalityIsValid();
        }

        return model_internal::_cardinalityIsValid;
    }

    model_internal function calculateCardinalityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cardinalityValidator.validate(model_internal::_instance.cardinality)
        model_internal::_cardinalityIsValid_der = (valRes.results == null);
        model_internal::_cardinalityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cardinalityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cardinalityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cardinalityValidationFailureMessages():Array
    {
        if (model_internal::_cardinalityValidationFailureMessages == null)
            model_internal::calculateCardinalityIsValid();

        return _cardinalityValidationFailureMessages;
    }

    model_internal function set cardinalityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cardinalityValidationFailureMessages;

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
            model_internal::_cardinalityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardinalityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get responseStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get responseValidator() : StyleValidator
    {
        return model_internal::_responseValidator;
    }

    model_internal function set _responseIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_responseIsValid;         
        if (oldValue !== value)
        {
            model_internal::_responseIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "responseIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get responseIsValid():Boolean
    {
        if (!model_internal::_responseIsValidCacheInitialized)
        {
            model_internal::calculateResponseIsValid();
        }

        return model_internal::_responseIsValid;
    }

    model_internal function calculateResponseIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_responseValidator.validate(model_internal::_instance.response)
        model_internal::_responseIsValid_der = (valRes.results == null);
        model_internal::_responseIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::responseValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::responseValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get responseValidationFailureMessages():Array
    {
        if (model_internal::_responseValidationFailureMessages == null)
            model_internal::calculateResponseIsValid();

        return _responseValidationFailureMessages;
    }

    model_internal function set responseValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_responseValidationFailureMessages;

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
            model_internal::_responseValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "responseValidationFailureMessages", oldValue, value));
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
            case("type"):
            {
                return typeValidationFailureMessages;
            }
            case("text"):
            {
                return textValidationFailureMessages;
            }
            case("audio"):
            {
                return audioValidationFailureMessages;
            }
            case("cardinality"):
            {
                return cardinalityValidationFailureMessages;
            }
            case("response"):
            {
                return responseValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
