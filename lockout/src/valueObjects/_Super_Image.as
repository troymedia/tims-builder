/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Image.as.
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
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Image extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ImageEntityMetadata;
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
    private var _internal_source : String;
    private var _internal_audio : String;
    private var _internal_video : String;
    private var _internal_pool : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Image()
    {
        _model = new _ImageEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "source", model_internal::setterListenerSource));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "audio", model_internal::setterListenerAudio));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "video", model_internal::setterListenerVideo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "pool", model_internal::setterListenerPool));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get source() : String
    {
        return _internal_source;
    }

    [Bindable(event="propertyChange")]
    public function get audio() : String
    {
        return _internal_audio;
    }

    [Bindable(event="propertyChange")]
    public function get video() : String
    {
        return _internal_video;
    }

    [Bindable(event="propertyChange")]
    public function get pool() : String
    {
        return _internal_pool;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set source(value:String) : void
    {
        var oldValue:String = _internal_source;
        if (oldValue !== value)
        {
            _internal_source = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "source", oldValue, _internal_source));
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

    public function set video(value:String) : void
    {
        var oldValue:String = _internal_video;
        if (oldValue !== value)
        {
            _internal_video = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "video", oldValue, _internal_video));
        }
    }

    public function set pool(value:String) : void
    {
        var oldValue:String = _internal_pool;
        if (oldValue !== value)
        {
            _internal_pool = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pool", oldValue, _internal_pool));
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

    model_internal function setterListenerSource(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSource();
    }

    model_internal function setterListenerAudio(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAudio();
    }

    model_internal function setterListenerVideo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVideo();
    }

    model_internal function setterListenerPool(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPool();
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
        if (!_model.sourceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sourceValidationFailureMessages);
        }
        if (!_model.audioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_audioValidationFailureMessages);
        }
        if (!_model.videoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_videoValidationFailureMessages);
        }
        if (!_model.poolIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_poolValidationFailureMessages);
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
    public function get _model() : _ImageEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ImageEntityMetadata) : void
    {
        var oldValue : _ImageEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfSource : Array = null;
    model_internal var _doValidationLastValOfSource : String;

    model_internal function _doValidationForSource(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSource != null && model_internal::_doValidationLastValOfSource == value)
           return model_internal::_doValidationCacheOfSource ;

        _model.model_internal::_sourceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSourceAvailable && _internal_source == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "source is required"));
        }

        model_internal::_doValidationCacheOfSource = validationFailures;
        model_internal::_doValidationLastValOfSource = value;

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
    
    model_internal var _doValidationCacheOfVideo : Array = null;
    model_internal var _doValidationLastValOfVideo : String;

    model_internal function _doValidationForVideo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVideo != null && model_internal::_doValidationLastValOfVideo == value)
           return model_internal::_doValidationCacheOfVideo ;

        _model.model_internal::_videoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVideoAvailable && _internal_video == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "video is required"));
        }

        model_internal::_doValidationCacheOfVideo = validationFailures;
        model_internal::_doValidationLastValOfVideo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPool : Array = null;
    model_internal var _doValidationLastValOfPool : String;

    model_internal function _doValidationForPool(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPool != null && model_internal::_doValidationLastValOfPool == value)
           return model_internal::_doValidationCacheOfPool ;

        _model.model_internal::_poolIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPoolAvailable && _internal_pool == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "pool is required"));
        }

        model_internal::_doValidationCacheOfPool = validationFailures;
        model_internal::_doValidationLastValOfPool = value;

        return validationFailures;
    }
    

}

}
