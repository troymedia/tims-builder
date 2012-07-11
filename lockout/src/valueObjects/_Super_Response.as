/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Response.as.
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
public class _Super_Response extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ResponseEntityMetadata;
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
    private var _internal_text : String;
    private var _internal_correct : String;
    private var _internal_randomize : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Response()
    {
        _model = new _ResponseEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "text", model_internal::setterListenerText));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "correct", model_internal::setterListenerCorrect));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "randomize", model_internal::setterListenerRandomize));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get text() : String
    {
        return _internal_text;
    }

    [Bindable(event="propertyChange")]
    public function get correct() : String
    {
        return _internal_correct;
    }

    [Bindable(event="propertyChange")]
    public function get randomize() : String
    {
        return _internal_randomize;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set text(value:String) : void
    {
        var oldValue:String = _internal_text;
        if (oldValue !== value)
        {
            _internal_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "text", oldValue, _internal_text));
        }
    }

    public function set correct(value:String) : void
    {
        var oldValue:String = _internal_correct;
        if (oldValue !== value)
        {
            _internal_correct = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correct", oldValue, _internal_correct));
        }
    }

    public function set randomize(value:String) : void
    {
        var oldValue:String = _internal_randomize;
        if (oldValue !== value)
        {
            _internal_randomize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "randomize", oldValue, _internal_randomize));
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

    model_internal function setterListenerText(value:flash.events.Event):void
    {
        _model.invalidateDependentOnText();
    }

    model_internal function setterListenerCorrect(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCorrect();
    }

    model_internal function setterListenerRandomize(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRandomize();
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
        if (!_model.textIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_textValidationFailureMessages);
        }
        if (!_model.correctIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_correctValidationFailureMessages);
        }
        if (!_model.randomizeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_randomizeValidationFailureMessages);
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
    public function get _model() : _ResponseEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ResponseEntityMetadata) : void
    {
        var oldValue : _ResponseEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfCorrect : Array = null;
    model_internal var _doValidationLastValOfCorrect : String;

    model_internal function _doValidationForCorrect(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCorrect != null && model_internal::_doValidationLastValOfCorrect == value)
           return model_internal::_doValidationCacheOfCorrect ;

        _model.model_internal::_correctIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCorrectAvailable && _internal_correct == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "correct is required"));
        }

        model_internal::_doValidationCacheOfCorrect = validationFailures;
        model_internal::_doValidationLastValOfCorrect = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRandomize : Array = null;
    model_internal var _doValidationLastValOfRandomize : String;

    model_internal function _doValidationForRandomize(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRandomize != null && model_internal::_doValidationLastValOfRandomize == value)
           return model_internal::_doValidationCacheOfRandomize ;

        _model.model_internal::_randomizeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRandomizeAvailable && _internal_randomize == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "randomize is required"));
        }

        model_internal::_doValidationCacheOfRandomize = validationFailures;
        model_internal::_doValidationLastValOfRandomize = value;

        return validationFailures;
    }
    

}

}
