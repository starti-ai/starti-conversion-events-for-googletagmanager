___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Starti Conversion Events Pixel",
  "brand": {
    "id": "brand_starti",
    "displayName": "Starti",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAZUlEQVR42u3QQREAAAQAMGGd/hKQw9ljBRZZPZ+FAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQcN8Cgb2ihmOoOaAAAAAASUVORK5CYII="
  },
  "description": "Load the Starti Pixel SDK and send web events using the Starti v1.0.0 event schema.",
  "categories": [
    "ANALYTICS",
    "CONVERSIONS",
    "MARKETING"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "accountGroup",
    "displayName": "Account Configuration",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "advid",
        "displayName": "Advertiser ID",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Starti Advertiser ID."
      },
      {
        "type": "TEXT",
        "name": "pixelId",
        "displayName": "Pixel ID",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Starti Pixel ID."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "eventGroup",
    "displayName": "Event Configuration",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "eventType",
        "displayName": "Event Type",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "page_view",
            "displayValue": "Page View"
          },
          {
            "value": "purchase",
            "displayValue": "Purchase"
          },
          {
            "value": "add_to_cart",
            "displayValue": "Add to Cart"
          },
          {
            "value": "view_item",
            "displayValue": "View Item"
          },
          {
            "value": "begin_checkout",
            "displayValue": "Begin Checkout"
          },
          {
            "value": "register",
            "displayValue": "Register"
          },
          {
            "value": "login",
            "displayValue": "Login"
          },
          {
            "value": "search",
            "displayValue": "Search"
          },
          {
            "value": "lead",
            "displayValue": "Lead"
          },
          {
            "value": "identify",
            "displayValue": "Identify User"
          },
          {
            "value": "custom",
            "displayValue": "Custom Event"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "page_view",
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "customEventName",
        "displayName": "Custom Event Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "custom",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "orderGroup",
    "displayName": "Order Details",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "orderId",
        "displayName": "Order ID",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "orderValue",
        "displayName": "Order Value",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "currency",
        "displayName": "Currency",
        "simpleValueType": true,
        "defaultValue": "USD",
        "help": "ISO 4217 currency code, for example USD."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "itemsGroup",
    "displayName": "Items / Products",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "items",
        "displayName": "Items Array",
        "simpleValueType": true,
        "help": "Variable that returns an array of product items. GA4 ecommerce.items is supported by default."
      },
      {
        "type": "GROUP",
        "name": "itemFieldMappings",
        "displayName": "Item Field Mappings",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "itemCodeField",
            "displayName": "Item Code Field",
            "simpleValueType": true,
            "defaultValue": "item_id"
          },
          {
            "type": "TEXT",
            "name": "itemNameField",
            "displayName": "Item Name Field",
            "simpleValueType": true,
            "defaultValue": "item_name"
          },
          {
            "type": "TEXT",
            "name": "itemQuantityField",
            "displayName": "Quantity Field",
            "simpleValueType": true,
            "defaultValue": "quantity"
          },
          {
            "type": "TEXT",
            "name": "itemPriceField",
            "displayName": "Price Field",
            "simpleValueType": true,
            "defaultValue": "price"
          },
          {
            "type": "TEXT",
            "name": "itemCategoryField",
            "displayName": "Category Field",
            "simpleValueType": true,
            "defaultValue": "item_category"
          },
          {
            "type": "TEXT",
            "name": "itemBrandField",
            "displayName": "Brand Field",
            "simpleValueType": true,
            "defaultValue": "item_brand"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "userGroup",
    "displayName": "User",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "userId",
        "displayName": "User ID",
        "simpleValueType": true,
        "help": "Logged-in user ID. If provided, SDK sends it as uid."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "startiCustomGroup",
    "displayName": "Starti Custom Fields (ST1-ST10)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "st1",
        "displayName": "ST1",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st2",
        "displayName": "ST2",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st3",
        "displayName": "ST3",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st4",
        "displayName": "ST4",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st5",
        "displayName": "ST5",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st6",
        "displayName": "ST6",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st7",
        "displayName": "ST7",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st8",
        "displayName": "ST8",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st9",
        "displayName": "ST9",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "st10",
        "displayName": "ST10",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "customDataGroup",
    "displayName": "Custom Data",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "customParams",
        "displayName": "Custom Data Parameters",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Parameter Name",
            "name": "paramName",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Parameter Value",
            "name": "paramValue",
            "type": "TEXT"
          }
        ],
        "help": "Additional event parameters. These are sent under cd."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedGroup",
    "displayName": "Advanced Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "enableSession",
        "checkboxText": "Enable session_id",
        "simpleValueType": true,
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "enableDebug",
        "checkboxText": "Enable Debug Mode",
        "simpleValueType": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const injectScript = require('injectScript');
const createArgumentsQueue = require('createArgumentsQueue');
const copyFromWindow = require('copyFromWindow');
const queryPermission = require('queryPermission');
const getUrl = require('getUrl');
const makeTableMap = require('makeTableMap');
const getType = require('getType');

const STARTI_SDK_URL = 'https://cdn.starti.ai/js/starti-pixel-v1.0.0.min.js';
const STARTI_FUNCTION_NAME = 'starti';
const STARTI_LAYER_NAME = 'startiQueue';

const debugLog = function(message, value) {
  if (data.enableDebug) {
    log('[Starti]', message, value);
  }
};

const hasValue = function(value) {
  return value !== undefined && value !== null && value !== '';
};

const isQueuePresent = function() {
  const queue = copyFromWindow(STARTI_LAYER_NAME);
  return getType(queue) === 'array';
};

const getEventName = function() {
  return data.eventType === 'custom' ? data.customEventName : data.eventType;
};

const isIdentifyAction = function() {
  return data.eventType === 'identify';
};

const buildInitObject = function() {
  return {
    adv_id: data.advid,
    pixel_id: data.pixelId,
    debug: data.enableDebug === true,
    session: data.enableSession !== false
  };
};

const mapItems = function(items) {
  if (getType(items) !== 'array') {
    return undefined;
  }

  const mappedItems = [];
  const itemCodeField = data.itemCodeField || 'item_id';
  const itemNameField = data.itemNameField || 'item_name';
  const quantityField = data.itemQuantityField || 'quantity';
  const priceField = data.itemPriceField || 'price';
  const categoryField = data.itemCategoryField || 'item_category';
  const brandField = data.itemBrandField || 'item_brand';

  for (let i = 0; i < items.length; i++) {
    const source = items[i];
    const mapped = {};

    if (hasValue(source[itemCodeField])) mapped.item_code = source[itemCodeField];
    if (hasValue(source[itemNameField])) mapped.item_name = source[itemNameField];
    if (hasValue(source[quantityField])) mapped.quantity = source[quantityField];
    if (hasValue(source[priceField])) mapped.price = source[priceField];
    if (hasValue(source[categoryField])) mapped.category = source[categoryField];
    if (hasValue(source[brandField])) mapped.brand = source[brandField];

    if (
      hasValue(mapped.item_code) ||
      hasValue(mapped.item_name) ||
      hasValue(mapped.quantity) ||
      hasValue(mapped.price) ||
      hasValue(mapped.category) ||
      hasValue(mapped.brand)
    ) {
      mappedItems.push(mapped);
    }
  }

  return mappedItems.length ? mappedItems : undefined;
};

const buildStartiCustom = function() {
  const startiCustom = {};
  if (hasValue(data.st1)) startiCustom.st1 = data.st1;
  if (hasValue(data.st2)) startiCustom.st2 = data.st2;
  if (hasValue(data.st3)) startiCustom.st3 = data.st3;
  if (hasValue(data.st4)) startiCustom.st4 = data.st4;
  if (hasValue(data.st5)) startiCustom.st5 = data.st5;
  if (hasValue(data.st6)) startiCustom.st6 = data.st6;
  if (hasValue(data.st7)) startiCustom.st7 = data.st7;
  if (hasValue(data.st8)) startiCustom.st8 = data.st8;
  if (hasValue(data.st9)) startiCustom.st9 = data.st9;
  if (hasValue(data.st10)) startiCustom.st10 = data.st10;
  return startiCustom;
};

const buildCustomData = function() {
  const customData = {};
  if (data.customParams && data.customParams.length > 0) {
    const tableMap = makeTableMap(data.customParams, 'paramName', 'paramValue');
    for (const key in tableMap) {
      if (tableMap.hasOwnProperty(key) && hasValue(key) && hasValue(tableMap[key])) {
        customData[key] = tableMap[key];
      }
    }
  }
  return customData;
};

const buildEventObject = function() {
  const eventObj = {
    event_name: getEventName(),
    page_url: getUrl()
  };

  if (hasValue(data.userId)) eventObj.user_id = data.userId;
  if (hasValue(data.orderId)) eventObj.order_id = data.orderId;
  if (hasValue(data.orderValue)) eventObj.value = data.orderValue;

  const items = mapItems(data.items);
  if (items) eventObj.items = items;

  if (
    hasValue(data.currency) &&
    (hasValue(data.orderId) || hasValue(data.orderValue) || items)
  ) {
    eventObj.currency = data.currency;
  }

  const startiCustom = buildStartiCustom();
  if (
    hasValue(startiCustom.st1) ||
    hasValue(startiCustom.st2) ||
    hasValue(startiCustom.st3) ||
    hasValue(startiCustom.st4) ||
    hasValue(startiCustom.st5) ||
    hasValue(startiCustom.st6) ||
    hasValue(startiCustom.st7) ||
    hasValue(startiCustom.st8) ||
    hasValue(startiCustom.st9) ||
    hasValue(startiCustom.st10)
  ) {
    eventObj.starti_custom = startiCustom;
  }

  const customData = buildCustomData();
  let customDataHasValue = false;
  for (const customKey in customData) {
    if (customData.hasOwnProperty(customKey)) {
      customDataHasValue = true;
    }
  }
  if (customDataHasValue) {
    eventObj.custom_data = customData;
  }

  return eventObj;
};

const buildIdentifyObject = function() {
  const identifyObj = {};
  if (hasValue(data.userId)) {
    identifyObj.user_id = data.userId;
  }
  return identifyObj;
};

const queueAlreadyPresent = isQueuePresent();
const starti = createArgumentsQueue(STARTI_FUNCTION_NAME, STARTI_LAYER_NAME);

if (!queueAlreadyPresent) {
  if (!queryPermission('inject_script', STARTI_SDK_URL)) {
    log('[Starti] Permission denied for SDK injection');
    data.gtmOnFailure();
    return;
  }

  const initObj = buildInitObject();
  debugLog('Queueing init:', initObj);
  starti('init', initObj);

  injectScript(
    STARTI_SDK_URL,
    function() {
      debugLog('Starti SDK loaded:', STARTI_SDK_URL);
    },
    function() {
      log('[Starti] Failed to load Starti SDK');
    },
    STARTI_SDK_URL
  );
}

const eventName = getEventName();
if (isIdentifyAction()) {
  const identifyObj = buildIdentifyObject();
  debugLog('Queueing identify:', identifyObj);
  starti('identify', identifyObj);
} else {
  const eventObj = buildEventObject();
  debugLog('Queueing event:', eventObj);
  starti('track', eventName, eventObj);
}
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "starti"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "startiQueue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://cdn.starti.ai/js/starti-pixel-v1.0.0.min.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Basic page_view queues init and track
  code: |-
    const calls = [];
    let injectedUrl = '';

    mock('copyFromWindow', function(key) {
      return undefined;
    });

    mock('queryPermission', function(permission, url) {
      return true;
    });

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      injectedUrl = url;
      onSuccess();
    });

    mock('createArgumentsQueue', function(fnName, arrayName) {
      return function(command, arg1, arg2) {
        calls.push({ command: command, arg1: arg1, arg2: arg2 });
      };
    });

    mock('getUrl', function() {
      return 'https://example.com/page';
    });

    const mockData = {
      advid: 'adv_001',
      pixelId: 'px_001',
      eventType: 'page_view',
      enableSession: true,
      enableDebug: true
    };

    runCode(mockData);

    assertThat(injectedUrl).isEqualTo('https://cdn.starti.ai/js/starti-pixel-v1.0.0.min.js');
    assertThat(calls[0].command).isEqualTo('init');
    assertThat(calls[0].arg1.adv_id).isEqualTo('adv_001');
    assertThat(calls[0].arg1.pixel_id).isEqualTo('px_001');
    assertThat(calls[0].arg1.endpoint).isEqualTo(undefined);
    assertThat(calls[1].command).isEqualTo('track');
    assertThat(calls[1].arg1).isEqualTo('page_view');
    assertThat(calls[1].arg2.page_url).isEqualTo('https://example.com/page');
    assertApi('gtmOnSuccess').wasCalled();

- name: Purchase maps order items st fields and custom data
  code: |-
    const calls = [];

    mock('copyFromWindow', function(key) {
      return undefined;
    });

    mock('queryPermission', function(permission, url) {
      return true;
    });

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    mock('createArgumentsQueue', function(fnName, arrayName) {
      return function(command, arg1, arg2) {
        calls.push({ command: command, arg1: arg1, arg2: arg2 });
      };
    });

    mock('getUrl', function() {
      return 'https://example.com/checkout/success';
    });

    const mockData = {
      advid: 'adv_001',
      pixelId: 'px_001',
      eventType: 'purchase',
      orderId: 'ORDER-1001',
      orderValue: '129.99',
      currency: 'USD',
      userId: 'user_123',
      items: [
        {
          item_id: 'SKU-001',
          item_name: 'Product Name',
          quantity: 1,
          price: '129.99',
          item_category: 'Shoes',
          item_brand: 'Starti'
        }
      ],
      st1: 'gold',
      customParams: [
        {
          paramName: 'membership_level',
          paramValue: 'gold'
        }
      ]
    };

    runCode(mockData);

    const eventObj = calls[1].arg2;
    assertThat(calls[1].arg1).isEqualTo('purchase');
    assertThat(eventObj.order_id).isEqualTo('ORDER-1001');
    assertThat(eventObj.value).isEqualTo('129.99');
    assertThat(eventObj.currency).isEqualTo('USD');
    assertThat(eventObj.user_id).isEqualTo('user_123');
    assertThat(eventObj.items[0].item_code).isEqualTo('SKU-001');
    assertThat(eventObj.items[0].brand).isEqualTo('Starti');
    assertThat(eventObj.starti_custom.st1).isEqualTo('gold');
    assertThat(eventObj.custom_data.membership_level).isEqualTo('gold');
    assertApi('gtmOnSuccess').wasCalled();

- name: Identify user queues identify without track
  code: |-
    const calls = [];

    mock('copyFromWindow', function(key) {
      return undefined;
    });

    mock('queryPermission', function(permission, url) {
      return true;
    });

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      onSuccess();
    });

    mock('createArgumentsQueue', function(fnName, arrayName) {
      return function(command, arg1, arg2) {
        calls.push({ command: command, arg1: arg1, arg2: arg2 });
      };
    });

    mock('getUrl', function() {
      return 'https://example.com/page';
    });

    const mockData = {
      advid: 'adv_001',
      pixelId: 'px_001',
      eventType: 'identify',
      userId: 'user_123'
    };

    runCode(mockData);

    assertThat(calls[0].command).isEqualTo('init');
    assertThat(calls[1].command).isEqualTo('identify');
    assertThat(calls[1].arg1.user_id).isEqualTo('user_123');
    assertThat(calls[1].arg2).isEqualTo(undefined);
    assertApi('gtmOnSuccess').wasCalled();

- name: Existing queue skips SDK injection and only tracks
  code: |-
    const calls = [];
    let injectCount = 0;

    mock('copyFromWindow', function(key) {
      return [];
    });

    mock('queryPermission', function(permission, url) {
      return true;
    });

    mock('injectScript', function(url, onSuccess, onFailure, cacheToken) {
      injectCount++;
    });

    mock('createArgumentsQueue', function(fnName, arrayName) {
      return function(command, arg1, arg2) {
        calls.push({ command: command, arg1: arg1, arg2: arg2 });
      };
    });

    mock('getUrl', function() {
      return 'https://example.com/page';
    });

    const mockData = {
      advid: 'adv_001',
      pixelId: 'px_001',
      eventType: 'login'
    };

    runCode(mockData);

    assertThat(injectCount).isEqualTo(0);
    assertThat(calls.length).isEqualTo(1);
    assertThat(calls[0].command).isEqualTo('track');
    assertThat(calls[0].arg1).isEqualTo('login');
    assertApi('gtmOnSuccess').wasCalled();

- name: Permission denied fails tag before queueing event
  code: |-
    const calls = [];

    mock('copyFromWindow', function(key) {
      return undefined;
    });

    mock('queryPermission', function(permission, url) {
      return false;
    });

    mock('createArgumentsQueue', function(fnName, arrayName) {
      return function(command, arg1, arg2) {
        calls.push({ command: command, arg1: arg1, arg2: arg2 });
      };
    });

    mock('getUrl', function() {
      return 'https://example.com/page';
    });

    const mockData = {
      advid: 'adv_001',
      pixelId: 'px_001',
      eventType: 'page_view'
    };

    runCode(mockData);

    assertThat(calls.length).isEqualTo(0);
    assertApi('gtmOnFailure').wasCalled();


___NOTES___

Starti Conversion Events Pixel Template
==========================

This template loads the Starti Pixel SDK and queues Starti v1.0.0 web events.

Changelog:
- v1.0.0: New Starti unified web event schema.
