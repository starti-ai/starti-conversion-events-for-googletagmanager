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
    "thumbnail": "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiByeD0iOCIgZmlsbD0iIzY0NjZGMSIvPgo8dGV4dCB4PSIzMiIgeT0iNDAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIyNCIgZm9udC13ZWlnaHQ9ImJvbGQiIGZpbGw9IndoaXRlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIj5TPC90ZXh0Pgo8L3N2Zz4="
  },
  "description": "Capture client-side conversion events and send them to Starti's Conversion Events API using the Starti Pixel SDK.",
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
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Your Starti Advertiser ID (required). You can find this in your Starti dashboard."
      },
      {
        "type": "TEXT",
        "name": "pixelId",
        "displayName": "Pixel ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Your Starti Pixel ID. You can find this in your Starti dashboard."
      },
      {
        "type": "TEXT",
        "name": "accountId",
        "displayName": "Account ID (Optional)",
        "simpleValueType": true,
        "help": "Your Starti Account ID for advanced tracking."
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
            "value": "pageview",
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
            "value": "sign_up",
            "displayValue": "Sign Up"
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
            "value": "custom",
            "displayValue": "Custom Event"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "pageview",
        "help": "Select the type of conversion event to track."
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
        ],
        "help": "Enter your custom event name."
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
        "simpleValueType": true,
        "help": "Unique identifier for the order/transaction."
      },
      {
        "type": "TEXT",
        "name": "orderValue",
        "displayName": "Order Value",
        "simpleValueType": true,
        "help": "Total value of the order."
      },
      {
        "type": "TEXT",
        "name": "currency",
        "displayName": "Currency",
        "simpleValueType": true,
        "defaultValue": "USD",
        "help": "Currency code (e.g., USD, EUR, CNY)."
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
        "help": "Variable containing an array of product/item objects. Supports GA4 ecommerce format."
      },
      {
        "type": "GROUP",
        "name": "itemFieldMappings",
        "displayName": "Item Field Mappings",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "itemIdField",
            "displayName": "Item ID Field",
            "simpleValueType": true,
            "defaultValue": "item_id",
            "help": "Field name for item ID in your items array."
          },
          {
            "type": "TEXT",
            "name": "itemNameField",
            "displayName": "Item Name Field",
            "simpleValueType": true,
            "defaultValue": "item_name",
            "help": "Field name for item name in your items array."
          },
          {
            "type": "TEXT",
            "name": "itemPriceField",
            "displayName": "Item Price Field",
            "simpleValueType": true,
            "defaultValue": "price",
            "help": "Field name for item price in your items array."
          },
          {
            "type": "TEXT",
            "name": "itemQuantityField",
            "displayName": "Item Quantity Field",
            "simpleValueType": true,
            "defaultValue": "quantity",
            "help": "Field name for item quantity in your items array."
          },
          {
            "type": "TEXT",
            "name": "itemCategoryField",
            "displayName": "Item Category Field",
            "simpleValueType": true,
            "defaultValue": "item_category",
            "help": "Field name for item category in your items array."
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "userGroup",
    "displayName": "User Data",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "deviceId",
        "displayName": "Device ID",
        "simpleValueType": true,
        "help": "Unique identifier for the device/browser. Used to track anonymous users before login. Can be auto-generated or passed from dataLayer."
      },
      {
        "type": "TEXT",
        "name": "userId",
        "displayName": "User ID",
        "simpleValueType": true,
        "help": "Unique identifier for the user."
      },
      {
        "type": "TEXT",
        "name": "userEmail",
        "displayName": "User Email (Hashed)",
        "simpleValueType": true,
        "help": "SHA256 hashed email address for user matching."
      },
      {
        "type": "TEXT",
        "name": "userPhone",
        "displayName": "User Phone (Hashed)",
        "simpleValueType": true,
        "help": "SHA256 hashed phone number for user matching."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "customFieldsGroup",
    "displayName": "Custom Fields",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "customField1",
        "displayName": "Custom Field 1 (cd1)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "customField2",
        "displayName": "Custom Field 2 (cd2)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "customField3",
        "displayName": "Custom Field 3 (cd3)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "customField4",
        "displayName": "Custom Field 4 (cd4)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "customField5",
        "displayName": "Custom Field 5 (cd5)",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "customParamsGroup",
    "displayName": "Additional Parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "customParams",
        "displayName": "Custom Parameters",
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
        "help": "Add any additional custom parameters to send with the event."
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
        "name": "enableDebug",
        "checkboxText": "Enable Debug Mode",
        "simpleValueType": true,
        "help": "Enable detailed logging in browser console for troubleshooting."
      },
      {
        "type": "CHECKBOX",
        "name": "enableCookieSync",
        "checkboxText": "Enable Cookie Synchronization",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Allow Starti to synchronize cookies for better user identification."
      },
      {
        "type": "TEXT",
        "name": "impressionId",
        "displayName": "Impression ID (Attribution Override)",
        "simpleValueType": true,
        "help": "Override attribution with a specific impression ID."
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

// Starti Pixel SDK URL
const STARTI_SDK_URL = 'https://cdn.starti.ai/js/starti-pixel.min.js';
const STARTI_FUNCTION_NAME = 'startiPixel';
const STARTI_LAYER_NAME = 'startiPixelLayer';

// Log helper for debug mode
const debugLog = function(message, obj) {
  if (data.enableDebug) {
    log('[Starti Pixel]', message, obj);
  }
};

// Build the event object
const buildEventObject = function() {
  const eventName = data.eventType === 'custom' ? data.customEventName : data.eventType;

  const eventObj = {
    event: eventName,
    pixel_id: data.pixelId,
    advid: data.advid
  };

  // Add account ID if provided
  if (data.accountId) {
    eventObj.account_id = data.accountId;
  }

  // Add page URL
  eventObj.page_url = getUrl();

  // Add order details if provided
  if (data.orderId) {
    eventObj.order_id = data.orderId;
  }
  if (data.orderValue) {
    eventObj.value = data.orderValue;
  }
  if (data.currency) {
    eventObj.currency = data.currency;
  }

  // Add device ID if provided
  if (data.deviceId) {
    eventObj.device_id = data.deviceId;
  }

  // Add user data if provided
  if (data.userId) {
    eventObj.user_id = data.userId;
  }
  if (data.userEmail) {
    eventObj.em = data.userEmail;
  }
  if (data.userPhone) {
    eventObj.ph = data.userPhone;
  }

  // Add items/products if provided
  if (data.items && getType(data.items) === 'array') {
    eventObj.items = mapItems(data.items);
  }

  // Add custom fields
  if (data.customField1) eventObj.cd1 = data.customField1;
  if (data.customField2) eventObj.cd2 = data.customField2;
  if (data.customField3) eventObj.cd3 = data.customField3;
  if (data.customField4) eventObj.cd4 = data.customField4;
  if (data.customField5) eventObj.cd5 = data.customField5;

  // Add impression ID for attribution override
  if (data.impressionId) {
    eventObj.impression_id = data.impressionId;
  }

  // Add cookie sync setting
  eventObj.cookie_sync = data.enableCookieSync !== false;

  // Add custom parameters
  if (data.customParams && data.customParams.length > 0) {
    const customParamsMap = makeTableMap(data.customParams, 'paramName', 'paramValue');
    for (const key in customParamsMap) {
      if (customParamsMap.hasOwnProperty(key) && !eventObj.hasOwnProperty(key)) {
        eventObj[key] = customParamsMap[key];
      }
    }
  }

  return eventObj;
};

// Build the init object for the SDK queue
const buildInitObject = function() {
  const initObj = {
    pixel_id: data.pixelId,
    advid: data.advid,
    debug: data.enableDebug,
    cookie_sync: data.enableCookieSync !== false
  };

  if (data.accountId) {
    initObj.account_id = data.accountId;
  }

  return initObj;
};

// Map items array using field mappings
const mapItems = function(items) {
  const mappedItems = [];
  const idField = data.itemIdField || 'item_id';
  const nameField = data.itemNameField || 'item_name';
  const priceField = data.itemPriceField || 'price';
  const quantityField = data.itemQuantityField || 'quantity';
  const categoryField = data.itemCategoryField || 'item_category';

  for (let i = 0; i < items.length; i++) {
    const item = items[i];
    const mappedItem = {};

    if (item[idField]) mappedItem.id = item[idField];
    if (item[nameField]) mappedItem.name = item[nameField];
    if (item[priceField]) mappedItem.price = item[priceField];
    if (item[quantityField]) mappedItem.qty = item[quantityField];
    if (item[categoryField]) mappedItem.category = item[categoryField];

    mappedItems.push(mappedItem);
  }

  return mappedItems;
};

// Check whether the queue already exists on the page
const isQueuePresent = function() {
  const queue = copyFromWindow(STARTI_LAYER_NAME);
  return getType(queue) === 'array';
};

const queueAlreadyPresent = isQueuePresent();
const startiPixel = createArgumentsQueue(STARTI_FUNCTION_NAME, STARTI_LAYER_NAME);

if (!queueAlreadyPresent) {
  if (!queryPermission('inject_script', STARTI_SDK_URL)) {
    log('[Starti Pixel] Error: Permission denied for script injection');
    data.gtmOnFailure();
    return;
  }

  debugLog('Injecting Starti Pixel SDK from:', STARTI_SDK_URL);
  startiPixel('init', buildInitObject());
  injectScript(
    STARTI_SDK_URL,
    function() {
      debugLog('Starti Pixel SDK loaded successfully');
    },
    function() {
      log('[Starti Pixel] Error: Failed to load Starti Pixel SDK');
    },
    STARTI_SDK_URL
  );
}

const eventObj = buildEventObject();
debugLog('Queueing event:', eventObj);
startiPixel('track', eventObj);
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
                    "string": "startiPixel"
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
                    "string": "startiPixelLayer"
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
                "string": "https://cdn.starti.ai/js/starti-pixel.min.js"
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
- name: Basic pageview event
  code: |-
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
      return function() {};
    });

    mock('getUrl', function() {
      return 'https://example.com/test-page';
    });

    const mockData = {
      advid: 'STARTI_TEST_ADVID',
      pixelId: 'STARTI_TEST_PIXEL',
      eventType: 'pageview',
      enableDebug: true,
      enableCookieSync: true
    };

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
- name: Purchase event with order details
  code: |-
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
      return function() {};
    });

    mock('getUrl', function() {
      return 'https://example.com/test-page';
    });

    const mockData = {
      advid: 'STARTI_TEST_ADVID',
      pixelId: 'STARTI_TEST_PIXEL',
      eventType: 'purchase',
      orderId: 'ORDER123',
      orderValue: '99.99',
      currency: 'USD',
      enableDebug: true
    };

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
- name: Custom event
  code: |-
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
      return function() {};
    });

    mock('getUrl', function() {
      return 'https://example.com/test-page';
    });

    const mockData = {
      advid: 'STARTI_TEST_ADVID',
      pixelId: 'STARTI_TEST_PIXEL',
      eventType: 'custom',
      customEventName: 'newsletter_signup',
      enableDebug: true
    };

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
- name: Event with user data
  code: |-
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
      return function() {};
    });

    mock('getUrl', function() {
      return 'https://example.com/test-page';
    });

    const mockData = {
      advid: 'STARTI_TEST_ADVID',
      pixelId: 'STARTI_TEST_PIXEL',
      eventType: 'lead',
      userId: 'user123',
      userEmail: 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3',
      enableDebug: true
    };

    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
- name: Permission denied fails the tag
  code: |-
    mock('copyFromWindow', function(key) {
      return undefined;
    });

    mock('queryPermission', function(permission, url) {
      return false;
    });

    mock('createArgumentsQueue', function(fnName, arrayName) {
      return function() {};
    });

    mock('getUrl', function() {
      return 'https://example.com/test-page';
    });

    const mockData = {
      advid: 'STARTI_TEST_ADVID',
      pixelId: 'STARTI_TEST_PIXEL',
      eventType: 'pageview'
    };

    runCode(mockData);
    assertApi('gtmOnFailure').wasCalled();
- name: Existing queue skips reinjection
  code: |-
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
      return function() {};
    });

    mock('getUrl', function() {
      return 'https://example.com/test-page';
    });

    const mockData = {
      advid: 'STARTI_TEST_ADVID',
      pixelId: 'STARTI_TEST_PIXEL',
      eventType: 'pageview'
    };

    runCode(mockData);
    assertThat(injectCount).isEqualTo(0);
    assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Starti Conversion Events Pixel Template
========================================

This template allows you to easily implement Starti's conversion tracking
pixel in Google Tag Manager without writing any JavaScript code.

Changelog:
- v1.0.0: Initial release
  - Standard and custom conversion event support
  - GA4 ecommerce item mapping
  - Optional user matching fields and custom parameters
