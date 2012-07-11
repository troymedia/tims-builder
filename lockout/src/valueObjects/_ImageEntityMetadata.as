
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
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ImageEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("source", "audio", "video", "pool");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("source", "audio", "video", "pool");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("source", "audio", "video", "pool");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("source", "audio", "video", "pool");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("source", "audio", "video", "pool");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Image";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _sourceIsValid:Boolean;
    model_internal var _sourceValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sourceIsValidCacheInitialized:Boolean = false;
    model_internal var _sourceValidationFailureMessages:Array;
    
    model_internal var _audioIsValid:Boolean;
    model_internal var _audioValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _audioIsValidCacheInitialized:Boolean = false;
    model_internal var _audioValidationFailureMessages:Array;
    
    model_internal var _videoIsValid:Boolean;
    model_internal var _videoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _videoIsValidCacheInitialized:Boolean = false;
    model_internal var _videoValidationFailureMessages:Array;
    
    model_internal var _poolIsValid:Boolean;
    model_internal var _poolValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _poolIsValidCacheInitialized:Boolean = false;
    model_internal var _poolValidationFailureMessages:Array;

    model_internal var _instance:_Super_Image;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ImageEntityMetadata(value : _Super_Image)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["source"] = new Array();
            model_internal::dependentsOnMap["audio"] = new Array();
            model_internal::dependentsOnMap["video"] = new Array();
            model_internal::dependentsOnMap["pool"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["source"] = "String";
        model_internal::propertyTypeMap["audio"] = "String";
        model_internal::propertyTypeMap["video"] = "String";
        model_internal::propertyTypeMap["pool"] = "String";

        model_internal::_instance = value;
        model_internal::_sourceValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSource);
        model_internal::_sourceValidator.required = true;
        model_internal::_sourceValidator.requiredFieldError = "source is required";
        //model_internal::_sourceValidator.source = model_internal::_instance;
        //model_internal::_sourceValidator.property = "source";
        model_internal::_audioValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAudio);
        model_internal::_audioValidator.required = true;
        model_internal::_audioValidator.requiredFieldError = "audio is required";
        //model_internal::_audioValidator.source = model_internal::_instance;
        //model_internal::_audioValidator.property = "audio";
        model_internal::_videoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVideo);
        model_internal::_videoValidator.required = true;
        model_internal::_videoValidator.requiredFieldError = "video is required";
        //model_internal::_videoValidator.source = model_internal::_instance;
        //model_internal::_videoValidator.property = "video";
        model_internal::_poolValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPool);
        model_internal::_poolValidator.required = true;
        model_internal::_poolValidator.requiredFieldError = "pool is required";
        //model_internal::_poolValidator.source = model_internal::_instance;
        //model_internal::_poolValidator.property = "pool";
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
            throw new Error(propertyName + " is not a data property of entity Image");
            
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
            throw new Error(propertyName + " is not a collection property of entity Image");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Image");

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
            throw new Error(propertyName + " does not exist for entity Image");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Image");
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
            throw new Error(propertyName + " does not exist for entity Image");
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
    public function get isSourceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAudioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVideoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPoolAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnSource():void
    {
        if (model_internal::_sourceIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSource = null;
            model_internal::calculateSourceIsValid();
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
    public function invalidateDependentOnVideo():void
    {
        if (model_internal::_videoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVideo = null;
            model_internal::calculateVideoIsValid();
        }
    }
    public function invalidateDependentOnPool():void
    {
        if (model_internal::_poolIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPool = null;
            model_internal::calculatePoolIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get sourceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sourceValidator() : StyleValidator
    {
        return model_internal::_sourceValidator;
    }

    model_internal function set _sourceIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sourceIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sourceIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourceIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sourceIsValid():Boolean
    {
        if (!model_internal::_sourceIsValidCacheInitialized)
        {
            model_internal::calculateSourceIsValid();
        }

        return model_internal::_sourceIsValid;
    }

    model_internal function calculateSourceIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sourceValidator.validate(model_internal::_instance.source)
        model_internal::_sourceIsValid_der = (valRes.results == null);
        model_internal::_sourceIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sourceValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sourceValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sourceValidationFailureMessages():Array
    {
        if (model_internal::_sourceValidationFailureMessages == null)
            model_internal::calculateSourceIsValid();

        return _sourceValidationFailureMessages;
    }

    model_internal function set sourceValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sourceValidationFailureMessages;

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
            model_internal::_sourceValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourceValidationFailureMessages", oldValue, value));
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
    public function get videoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get videoValidator() : StyleValidator
    {
        return model_internal::_videoValidator;
    }

    model_internal function set _videoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_videoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_videoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "videoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get videoIsValid():Boolean
    {
        if (!model_internal::_videoIsValidCacheInitialized)
        {
            model_internal::calculateVideoIsValid();
        }

        return model_internal::_videoIsValid;
    }

    model_internal function calculateVideoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_videoValidator.validate(model_internal::_instance.video)
        model_internal::_videoIsValid_der = (valRes.results == null);
        model_internal::_videoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::videoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::videoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get videoValidationFailureMessages():Array
    {
        if (model_internal::_videoValidationFailureMessages == null)
            model_internal::calculateVideoIsValid();

        return _videoValidationFailureMessages;
    }

    model_internal function set videoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_videoValidationFailureMessages;

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
            model_internal::_videoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "videoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get poolStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get poolValidator() : StyleValidator
    {
        return model_internal::_poolValidator;
    }

    model_internal function set _poolIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_poolIsValid;         
        if (oldValue !== value)
        {
            model_internal::_poolIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "poolIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get poolIsValid():Boolean
    {
        if (!model_internal::_poolIsValidCacheInitialized)
        {
            model_internal::calculatePoolIsValid();
        }

        return model_internal::_poolIsValid;
    }

    model_internal function calculatePoolIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_poolValidator.validate(model_internal::_instance.pool)
        model_internal::_poolIsValid_der = (valRes.results == null);
        model_internal::_poolIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::poolValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::poolValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get poolValidationFailureMessages():Array
    {
        if (model_internal::_poolValidationFailureMessages == null)
            model_internal::calculatePoolIsValid();

        return _poolValidationFailureMessages;
    }

    model_internal function set poolValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_poolValidationFailureMessages;

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
            model_internal::_poolValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "poolValidationFailureMessages", oldValue, value));
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
            case("source"):
            {
                return sourceValidationFailureMessages;
            }
            case("audio"):
            {
                return audioValidationFailureMessages;
            }
            case("video"):
            {
                return videoValidationFailureMessages;
            }
            case("pool"):
            {
                return poolValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
