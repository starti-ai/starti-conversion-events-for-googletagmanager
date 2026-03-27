# Starti Conversion Events Pixel for Google Tag Manager

This repository contains the Starti web tag template for Google Tag Manager Community Template Gallery submission.

The template injects the hosted Starti Pixel SDK, initializes it with account identifiers, and sends client-side conversion events from the browser to Starti.

## Repository Contents

- `template.tpl`: GTM web tag template source
- `metadata.yaml`: Community Template Gallery metadata
- `LICENSE`: repository license

## Supported Capabilities

The template supports:

- Standard conversion events:
  - `pageview`
  - `purchase`
  - `add_to_cart`
  - `view_item`
  - `begin_checkout`
  - `sign_up`
  - `login`
  - `search`
  - `lead`
- Custom event names
- Optional account identifier
- Optional order details
- Optional ecommerce item arrays
- Optional user matching fields such as `device_id`, `user_id`, hashed email, and hashed phone
- Optional custom fields `cd1` through `cd5`
- Optional additional custom parameters
- Optional impression ID override
- Optional browser debug logging

## Before You Start

You should have:

- A Google Tag Manager web container
- A Starti Advertiser ID
- A Starti Pixel ID
- A production-hosted Starti Pixel SDK URL referenced by the template
- Website or data layer access so that event data can be exposed to GTM variables

## Installation

1. Open your Google Tag Manager web container.
2. Go to `Templates`.
3. Import `template.tpl`.
4. Create a new tag and choose `Starti Conversion Events Pixel`.

## Template Configuration

Each tag created from this template should be configured with:

- `Advertiser ID`
- `Pixel ID`
- `Event Type`

Optional fields include:

- `Account ID`
- `Order ID`
- `Order Value`
- `Currency`
- `Items Array`
- `Device ID`
- `User ID`
- `User Email (Hashed)`
- `User Phone (Hashed)`
- `Custom Field 1 (cd1)` to `Custom Field 5 (cd5)`
- `Custom Parameters`
- `Impression ID`
- `Enable Debug Mode`
- `Enable Cookie Synchronization`

If `Event Type` is set to `Custom Event`, you must also set:

- `Custom Event Name`

## Suggested GTM Variables

Use GTM variables to map website or data layer values into the template fields.

| Suggested GTM variable | GTM variable type | Typical value source | Template field |
| --- | --- | --- | --- |
| `Starti Advertiser ID` | Constant | Starti advertiser ID | `Advertiser ID` |
| `Starti Pixel ID` | Constant | Starti pixel ID | `Pixel ID` |
| `DLV - deviceId` | Data Layer Variable | `deviceId` or `device_id` | `Device ID` |
| `DLV - userId` | Data Layer Variable | `userId` or `user_id` | `User ID` |
| `DLV - transaction_id` | Data Layer Variable | `transaction_id` | `Order ID` |
| `DLV - value` | Data Layer Variable | `value` | `Order Value` |
| `DLV - currency` | Data Layer Variable | `currency` | `Currency` |
| `DLV - ecommerce.items` | Data Layer Variable | `ecommerce.items` | `Items Array` |
| `DLV - userEmailHash` | Data Layer Variable | hashed email field | `User Email (Hashed)` |
| `DLV - userPhoneHash` | Data Layer Variable | hashed phone field | `User Phone (Hashed)` |

The GTM variable label can be any name you prefer. The `Data Layer Variable Name` must exactly match the key pushed by the website.

## Event and Trigger Model

This template uses a fixed event-type model.

- The website pushes a GTM event through `dataLayer.push({ event: '...' })`
- A GTM trigger listens for that event name
- A GTM tag created from this template fires on that trigger
- The tag configuration determines the final Starti event name sent by the SDK

Because of this model, the GTM trigger event name and the final Starti event name do not have to be identical.

Example:

- Website event: `purchase_complete`
- GTM trigger: custom event `purchase_complete`
- Template `Event Type`: `Purchase`
- Final Starti event: `purchase`

In practice, one Starti event is typically implemented with one GTM tag and one GTM trigger.

## Recommended Tag Setup

### Page View Tag

- `Event Type`: `Page View`
- Trigger: custom event such as `starti_pageview`
- Typical mapped fields:
  - `Device ID`
  - `User ID`

### Purchase Tag

- `Event Type`: `Purchase`
- Trigger: custom event such as `purchase_complete`
- Typical mapped fields:
  - `Order ID`
  - `Order Value`
  - `Currency`
  - `Items Array`
  - `Device ID`
  - `User ID`

### Lead Tag

- `Event Type`: `Lead`
- Trigger: custom event such as `lead_submit_success`
- Typical mapped fields:
  - `Device ID`
  - `User ID`
  - `User Email (Hashed)`
  - `User Phone (Hashed)`
  - `Custom Field 1 (cd1)` through `Custom Field 5 (cd5)` as needed

### Custom Event Tag

- `Event Type`: `Custom Event`
- `Custom Event Name`: your configured Starti custom event name
- Trigger: the website event that should fire that custom tag

## Example Website Events

### Page View Example

```javascript
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
  event: 'starti_pageview',
  deviceId: 'web-123456',
  userId: 'user-1001'
});
```

### Purchase Example

```javascript
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
  event: 'purchase_complete',
  deviceId: 'web-123456',
  userId: 'user-1001',
  transaction_id: 'ORDER-1001',
  value: '199.99',
  currency: 'USD',
  ecommerce: {
    items: [
      {
        item_id: 'SKU-001',
        item_name: 'Demo Product',
        price: '199.99',
        quantity: 1,
        item_category: 'Shoes'
      }
    ]
  }
});
```

### Lead Example

```javascript
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
  event: 'lead_submit_success',
  deviceId: 'web-123456',
  userId: 'user-1001',
  userEmailHash: 'SHA256_HASHED_EMAIL',
  userPhoneHash: 'SHA256_HASHED_PHONE',
  source_page: 'pricing'
});
```

### Custom Event Example

```javascript
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
  event: 'newsletter_signup',
  deviceId: 'web-123456',
  userId: 'user-1001'
});
```

## Ecommerce Item Mapping

The `Items Array` field expects a GTM variable that resolves to an array of item objects.

The template supports configurable item field mappings for:

- item ID
- item name
- item price
- item quantity
- item category

This allows the template to consume GA4-style ecommerce item arrays or similar custom schemas, as long as the correct item field names are configured in the tag.

## Custom Fields and Additional Parameters

### Mapping into `cd1` to `cd5`

If the website pushes:

```javascript
window.dataLayer.push({
  event: 'lead_submit_success',
  source_page: 'pricing'
});
```

Create a GTM Data Layer Variable with:

- `Data Layer Variable Name`: `source_page`

Then map that GTM variable into:

- `Custom Field 1 (cd1)`

The final payload sent by the template will contain:

```json
{
  "cd1": "pricing"
}
```

### Sending Additional Named Parameters

If you need to send a parameter under its own name instead of `cd1` to `cd5`, use the `Custom Parameters` table:

- `Parameter Name`: the target parameter name
- `Parameter Value`: the GTM variable that resolves to the value

Example:

- `Parameter Name`: `source_page`
- `Parameter Value`: `{{DLV - source_page}}`

## Identity Fields

The template does not generate `device_id` or `user_id`.

Recommended practice:

- `device_id` should come from the website's own anonymous device or browser identifier
- `user_id` should come from the website's authenticated user identity, when available

These values are usually exposed to GTM through data layer variables and mapped into the template.

## Debugging

If `Enable Debug Mode` is checked, the template writes diagnostic messages to the browser console while the tag runs.

Recommended validation steps:

1. Open GTM Preview mode.
2. Trigger the website event.
3. Confirm the expected GTM trigger fired.
4. Confirm the Starti tag fired.
5. Check the browser network panel for the SDK request and event request.

## Submission Notes

Before publishing this repository to the Community Template Gallery:

- Replace `metadata.yaml` homepage and documentation placeholders with real public URLs
- Make sure the SDK URL referenced by `template.tpl` is the production-hosted SDK
- Make sure `metadata.yaml` contains the correct release commit SHA
- Make sure the repository owner and git author identity match the final maintainer

## License

Refer to the `LICENSE` file in the root directory of this repository.
