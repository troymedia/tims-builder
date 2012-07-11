/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Lesson.as.
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
import valueObjects.IncorrectFeedback;
import valueObjects.Lesson;
import valueObjects.QuestionPool;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Lesson extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.IncorrectFeedback.initRemoteClassAliasSingleChild();
        valueObjects.Image.initRemoteClassAliasSingleChild();
        valueObjects.QuestionPool.initRemoteClassAliasSingleChild();
        valueObjects.CorrectResponse.initRemoteClassAliasSingleChild();
        valueObjects.IncorrectResponse.initRemoteClassAliasSingleChild();
        valueObjects.Question.initRemoteClassAliasSingleChild();
        valueObjects.Response.initRemoteClassAliasSingleChild();
        valueObjects.Lesson.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _LessonEntityMetadata;
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
    private var _internal_id : String;
    private var _internal_incorrectFeedback : valueObjects.IncorrectFeedback;
    private var _internal_questionPool : ArrayCollection;
    model_internal var _internal_questionPool_leaf:valueObjects.QuestionPool;
    private var _internal_lesson : valueObjects.Lesson;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Lesson()
    {
        _model = new _LessonEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "incorrectFeedback", model_internal::setterListenerIncorrectFeedback));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "questionPool", model_internal::setterListenerQuestionPool));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "lesson", model_internal::setterListenerLesson));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get incorrectFeedback() : valueObjects.IncorrectFeedback
    {
        return _internal_incorrectFeedback;
    }

    [Bindable(event="propertyChange")]
    public function get questionPool() : ArrayCollection
    {
        return _internal_questionPool;
    }

    [Bindable(event="propertyChange")]
    public function get lesson() : valueObjects.Lesson
    {
        return _internal_lesson;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set incorrectFeedback(value:valueObjects.IncorrectFeedback) : void
    {
        var oldValue:valueObjects.IncorrectFeedback = _internal_incorrectFeedback;
        if (oldValue !== value)
        {
            _internal_incorrectFeedback = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incorrectFeedback", oldValue, _internal_incorrectFeedback));
        }
    }

    public function set questionPool(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_questionPool;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_questionPool = value;
            }
            else if (value is Array)
            {
                _internal_questionPool = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_questionPool = null;
            }
            else
            {
                throw new Error("value of questionPool must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "questionPool", oldValue, _internal_questionPool));
        }
    }

    public function set lesson(value:valueObjects.Lesson) : void
    {
        var oldValue:valueObjects.Lesson = _internal_lesson;
        if (oldValue !== value)
        {
            _internal_lesson = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lesson", oldValue, _internal_lesson));
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

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerIncorrectFeedback(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIncorrectFeedback();
    }

    model_internal function setterListenerQuestionPool(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerQuestionPool);
            }
        }
        _model.invalidateDependentOnQuestionPool();
    }

    model_internal function setterListenerLesson(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLesson();
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
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.incorrectFeedbackIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_incorrectFeedbackValidationFailureMessages);
        }
        if (!_model.questionPoolIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_questionPoolValidationFailureMessages);
        }
        if (!_model.lessonIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_lessonValidationFailureMessages);
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
    public function get _model() : _LessonEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LessonEntityMetadata) : void
    {
        var oldValue : _LessonEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfId : Array = null;
    model_internal var _doValidationLastValOfId : String;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId != null && model_internal::_doValidationLastValOfId == value)
           return model_internal::_doValidationCacheOfId ;

        _model.model_internal::_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAvailable && _internal_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id is required"));
        }

        model_internal::_doValidationCacheOfId = validationFailures;
        model_internal::_doValidationLastValOfId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIncorrectFeedback : Array = null;
    model_internal var _doValidationLastValOfIncorrectFeedback : valueObjects.IncorrectFeedback;

    model_internal function _doValidationForIncorrectFeedback(valueIn:Object):Array
    {
        var value : valueObjects.IncorrectFeedback = valueIn as valueObjects.IncorrectFeedback;

        if (model_internal::_doValidationCacheOfIncorrectFeedback != null && model_internal::_doValidationLastValOfIncorrectFeedback == value)
           return model_internal::_doValidationCacheOfIncorrectFeedback ;

        _model.model_internal::_incorrectFeedbackIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIncorrectFeedbackAvailable && _internal_incorrectFeedback == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "incorrectFeedback is required"));
        }

        model_internal::_doValidationCacheOfIncorrectFeedback = validationFailures;
        model_internal::_doValidationLastValOfIncorrectFeedback = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfQuestionPool : Array = null;
    model_internal var _doValidationLastValOfQuestionPool : ArrayCollection;

    model_internal function _doValidationForQuestionPool(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfQuestionPool != null && model_internal::_doValidationLastValOfQuestionPool == value)
           return model_internal::_doValidationCacheOfQuestionPool ;

        _model.model_internal::_questionPoolIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isQuestionPoolAvailable && _internal_questionPool == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "questionPool is required"));
        }

        model_internal::_doValidationCacheOfQuestionPool = validationFailures;
        model_internal::_doValidationLastValOfQuestionPool = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLesson : Array = null;
    model_internal var _doValidationLastValOfLesson : valueObjects.Lesson;

    model_internal function _doValidationForLesson(valueIn:Object):Array
    {
        var value : valueObjects.Lesson = valueIn as valueObjects.Lesson;

        if (model_internal::_doValidationCacheOfLesson != null && model_internal::_doValidationLastValOfLesson == value)
           return model_internal::_doValidationCacheOfLesson ;

        _model.model_internal::_lessonIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLessonAvailable && _internal_lesson == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "lesson is required"));
        }

        model_internal::_doValidationCacheOfLesson = validationFailures;
        model_internal::_doValidationLastValOfLesson = value;

        return validationFailures;
    }
    

}

}
