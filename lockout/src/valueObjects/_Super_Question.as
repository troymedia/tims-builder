/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Question.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import valueObjects.Response;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Question extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Response.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _QuestionEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_type : String;
    private var _internal_text : String;
    private var _internal_audio : String;
    private var _internal_cardinality : String;
    private var _internal_response : ArrayCollection;
    model_internal var _internal_response_leaf:valueObjects.Response;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Question()
    {
        _model = new _QuestionEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "text", model_internal::setterListenerText));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "audio", model_internal::setterListenerAudio));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cardinality", model_internal::setterListenerCardinality));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "response", model_internal::setterListenerResponse));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get text() : String
    {
        return _internal_text;
    }

    [Bindable(event="propertyChange")]
    public function get audio() : String
    {
        return _internal_audio;
    }

    [Bindable(event="propertyChange")]
    public function get cardinality() : String
    {
        return _internal_cardinality;
    }

    [Bindable(event="propertyChange")]
    public function get response() : ArrayCollection
    {
        return _internal_response;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set type(value:String) : void
    {
        var oldValue:String = _internal_type;
        if (oldValue !== value)
        {
            _internal_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "type", oldValue, _internal_type));
        }
    }

    public function set text(value:String) : void
    {
        var oldValue:String = _internal_text;
        if (oldValue !== value)
        {
            _internal_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "text", oldValue, _internal_text));
        }
    }

    public function set audio(value:String) : void
    {
        var oldValue:String = _internal_audio;
        if (oldValue !== value)
        {
            _internal_audio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "audio", oldValue, _internal_audio));
        }
    }

    public function set cardinality(value:String) : void
    {
        var oldValue:String = _internal_cardinality;
        if (oldValue !== value)
        {
            _internal_cardinality = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardinality", oldValue, _internal_cardinality));
        }
    }

    public function set response(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_response;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_response = value;
            }
            else if (value is Array)
            {
                _internal_response = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_response = null;
            }
            else
            {
                throw new Error("value of response must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "response", oldValue, _internal_response));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
    }

    model_internal function setterListenerText(value:flash.events.Event):void
    {
        _model.invalidateDependentOnText();
    }

    model_internal function setterListenerAudio(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAudio();
    }

    model_internal function setterListenerCardinality(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCardinality();
    }

    model_internal function setterListenerResponse(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerResponse);
            }
        }
        _model.invalidateDependentOnResponse();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */
    

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
        }
        if (!_model.textIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_textValidationFailureMessages);
        }
        if (!_model.audioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_audioValidationFailureMessages);
        }
        if (!_model.cardinalityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cardinalityValidationFailureMessages);
        }
        if (!_model.responseIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_responseValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _QuestionEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _QuestionEntityMetadata) : void
    {
        var oldValue : _QuestionEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfType : Array = null;
    model_internal var _doValidationLastValOfType : String;

    model_internal function _doValidationForType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfType != null && model_internal::_doValidationLastValOfType == value)
           return model_internal::_doValidationCacheOfType ;

        _model.model_internal::_typeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTypeAvailable && _internal_type == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "type is required"));
        }

        model_internal::_doValidationCacheOfType = validationFailures;
        model_internal::_doValidationLastValOfType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfText : Array = null;
    model_internal var _doValidationLastValOfText : String;

    model_internal function _doValidationForText(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfText != null && model_internal::_doValidationLastValOfText == value)
           return model_internal::_doValidationCacheOfText ;

        _model.model_internal::_textIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTextAvailable && _internal_text == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "text is required"));
        }

        model_internal::_doValidationCacheOfText = validationFailures;
        model_internal::_doValidationLastValOfText = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAudio : Array = null;
    model_internal var _doValidationLastValOfAudio : String;

    model_internal function _doValidationForAudio(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAudio != null && model_internal::_doValidationLastValOfAudio == value)
           return model_internal::_doValidationCacheOfAudio ;

        _model.model_internal::_audioIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAudioAvailable && _internal_audio == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "audio is required"));
        }

        model_internal::_doValidationCacheOfAudio = validationFailures;
        model_internal::_doValidationLastValOfAudio = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCardinality : Array = null;
    model_internal var _doValidationLastValOfCardinality : String;

    model_internal function _doValidationForCardinality(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCardinality != null && model_internal::_doValidationLastValOfCardinality == value)
           return model_internal::_doValidationCacheOfCardinality ;

        _model.model_internal::_cardinalityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCardinalityAvailable && _internal_cardinality == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cardinality is required"));
        }

        model_internal::_doValidationCacheOfCardinality = validationFailures;
        model_internal::_doValidationLastValOfCardinality = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfResponse : Array = null;
    model_internal var _doValidationLastValOfResponse : ArrayCollection;

    model_internal function _doValidationForResponse(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfResponse != null && model_internal::_doValidationLastValOfResponse == value)
           return model_internal::_doValidationCacheOfResponse ;

        _model.model_internal::_responseIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isResponseAvailable && _internal_response == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "response is required"));
        }

        model_internal::_doValidationCacheOfResponse = validationFailures;
        model_internal::_doValidationLastValOfResponse = value;

        return validationFailures;
    }
    

}

}
