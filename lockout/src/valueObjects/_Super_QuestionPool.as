/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - QuestionPool.as.
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
import valueObjects.CorrectResponse;
import valueObjects.IncorrectResponse;
import valueObjects.Question;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_QuestionPool extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.CorrectResponse.initRemoteClassAliasSingleChild();
        valueObjects.IncorrectResponse.initRemoteClassAliasSingleChild();
        valueObjects.Question.initRemoteClassAliasSingleChild();
        valueObjects.Response.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _QuestionPoolEntityMetadata;
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
    private var _internal_number : String;
    private var _internal_correctResponse : valueObjects.CorrectResponse;
    private var _internal_incorrectResponse : valueObjects.IncorrectResponse;
    private var _internal_question : ArrayCollection;
    model_internal var _internal_question_leaf:valueObjects.Question;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_QuestionPool()
    {
        _model = new _QuestionPoolEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "number", model_internal::setterListenerNumber));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "correctResponse", model_internal::setterListenerCorrectResponse));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "incorrectResponse", model_internal::setterListenerIncorrectResponse));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "question", model_internal::setterListenerQuestion));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get number() : String
    {
        return _internal_number;
    }

    [Bindable(event="propertyChange")]
    public function get correctResponse() : valueObjects.CorrectResponse
    {
        return _internal_correctResponse;
    }

    [Bindable(event="propertyChange")]
    public function get incorrectResponse() : valueObjects.IncorrectResponse
    {
        return _internal_incorrectResponse;
    }

    [Bindable(event="propertyChange")]
    public function get question() : ArrayCollection
    {
        return _internal_question;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set number(value:String) : void
    {
        var oldValue:String = _internal_number;
        if (oldValue !== value)
        {
            _internal_number = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "number", oldValue, _internal_number));
        }
    }

    public function set correctResponse(value:valueObjects.CorrectResponse) : void
    {
        var oldValue:valueObjects.CorrectResponse = _internal_correctResponse;
        if (oldValue !== value)
        {
            _internal_correctResponse = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correctResponse", oldValue, _internal_correctResponse));
        }
    }

    public function set incorrectResponse(value:valueObjects.IncorrectResponse) : void
    {
        var oldValue:valueObjects.IncorrectResponse = _internal_incorrectResponse;
        if (oldValue !== value)
        {
            _internal_incorrectResponse = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incorrectResponse", oldValue, _internal_incorrectResponse));
        }
    }

    public function set question(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_question;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_question = value;
            }
            else if (value is Array)
            {
                _internal_question = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_question = null;
            }
            else
            {
                throw new Error("value of question must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "question", oldValue, _internal_question));
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

    model_internal function setterListenerNumber(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumber();
    }

    model_internal function setterListenerCorrectResponse(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCorrectResponse();
    }

    model_internal function setterListenerIncorrectResponse(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIncorrectResponse();
    }

    model_internal function setterListenerQuestion(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerQuestion);
            }
        }
        _model.invalidateDependentOnQuestion();
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
        if (!_model.numberIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numberValidationFailureMessages);
        }
        if (!_model.correctResponseIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_correctResponseValidationFailureMessages);
        }
        if (!_model.incorrectResponseIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_incorrectResponseValidationFailureMessages);
        }
        if (!_model.questionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_questionValidationFailureMessages);
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
    public function get _model() : _QuestionPoolEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _QuestionPoolEntityMetadata) : void
    {
        var oldValue : _QuestionPoolEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfNumber : Array = null;
    model_internal var _doValidationLastValOfNumber : String;

    model_internal function _doValidationForNumber(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNumber != null && model_internal::_doValidationLastValOfNumber == value)
           return model_internal::_doValidationCacheOfNumber ;

        _model.model_internal::_numberIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNumberAvailable && _internal_number == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "number is required"));
        }

        model_internal::_doValidationCacheOfNumber = validationFailures;
        model_internal::_doValidationLastValOfNumber = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCorrectResponse : Array = null;
    model_internal var _doValidationLastValOfCorrectResponse : valueObjects.CorrectResponse;

    model_internal function _doValidationForCorrectResponse(valueIn:Object):Array
    {
        var value : valueObjects.CorrectResponse = valueIn as valueObjects.CorrectResponse;

        if (model_internal::_doValidationCacheOfCorrectResponse != null && model_internal::_doValidationLastValOfCorrectResponse == value)
           return model_internal::_doValidationCacheOfCorrectResponse ;

        _model.model_internal::_correctResponseIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCorrectResponseAvailable && _internal_correctResponse == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "correctResponse is required"));
        }

        model_internal::_doValidationCacheOfCorrectResponse = validationFailures;
        model_internal::_doValidationLastValOfCorrectResponse = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIncorrectResponse : Array = null;
    model_internal var _doValidationLastValOfIncorrectResponse : valueObjects.IncorrectResponse;

    model_internal function _doValidationForIncorrectResponse(valueIn:Object):Array
    {
        var value : valueObjects.IncorrectResponse = valueIn as valueObjects.IncorrectResponse;

        if (model_internal::_doValidationCacheOfIncorrectResponse != null && model_internal::_doValidationLastValOfIncorrectResponse == value)
           return model_internal::_doValidationCacheOfIncorrectResponse ;

        _model.model_internal::_incorrectResponseIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIncorrectResponseAvailable && _internal_incorrectResponse == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "incorrectResponse is required"));
        }

        model_internal::_doValidationCacheOfIncorrectResponse = validationFailures;
        model_internal::_doValidationLastValOfIncorrectResponse = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfQuestion : Array = null;
    model_internal var _doValidationLastValOfQuestion : ArrayCollection;

    model_internal function _doValidationForQuestion(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfQuestion != null && model_internal::_doValidationLastValOfQuestion == value)
           return model_internal::_doValidationCacheOfQuestion ;

        _model.model_internal::_questionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isQuestionAvailable && _internal_question == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "question is required"));
        }

        model_internal::_doValidationCacheOfQuestion = validationFailures;
        model_internal::_doValidationLastValOfQuestion = value;

        return validationFailures;
    }
    

}

}
