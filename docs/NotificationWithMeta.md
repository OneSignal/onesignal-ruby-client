# OneSignal::NotificationWithMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **included_segments** | **Array&lt;String&gt;** | The segment names you want to target. Users in these segments will receive a notification. This targeting parameter is only compatible with excluded_segments. Example: [\&quot;Active Users\&quot;, \&quot;Inactive Users\&quot;]  | [optional] |
| **excluded_segments** | **Array&lt;String&gt;** | Segment that will be excluded when sending. Users in these segments will not receive a notification, even if they were included in included_segments. This targeting parameter is only compatible with included_segments. Example: [\&quot;Active Users\&quot;, \&quot;Inactive Users\&quot;]  | [optional] |
| **last_session** | **String** | relation &#x3D; \&quot;&gt;\&quot; or \&quot;&lt;\&quot; hours_ago &#x3D; number of hours before or after the users last session. Example: \&quot;1.1\&quot;  | [optional] |
| **first_session** | **String** | relation &#x3D; \&quot;&gt;\&quot; or \&quot;&lt;\&quot; hours_ago &#x3D; number of hours before or after the users first session. Example: \&quot;1.1\&quot;  | [optional] |
| **session_count** | **String** | relation &#x3D; \&quot;&gt;\&quot;, \&quot;&lt;\&quot;, \&quot;&#x3D;\&quot; or \&quot;!&#x3D;\&quot; value &#x3D; number sessions. Example: \&quot;1\&quot;  | [optional] |
| **session_time** | **String** | relation &#x3D; \&quot;&gt;\&quot;, \&quot;&lt;\&quot;, \&quot;&#x3D;\&quot; or \&quot;!&#x3D;\&quot; value &#x3D; Time in seconds the user has been in your app. Example: \&quot;3600\&quot;  | [optional] |
| **amount_spent** | **String** | relation &#x3D; \&quot;&gt;\&quot;, \&quot;&lt;\&quot;, or \&quot;&#x3D;\&quot; value &#x3D; Amount in USD a user has spent on IAP (In App Purchases). Example: \&quot;0.99\&quot;  | [optional] |
| **bought_sku** | **String** | relation &#x3D; \&quot;&gt;\&quot;, \&quot;&lt;\&quot; or \&quot;&#x3D;\&quot; key &#x3D; SKU purchased in your app as an IAP (In App Purchases). Example: \&quot;com.domain.100coinpack\&quot; value &#x3D; value of SKU to compare to. Example: \&quot;0.99\&quot;  | [optional] |
| **tag** | **String** | relation &#x3D; \&quot;&gt;\&quot;, \&quot;&lt;\&quot;, \&quot;&#x3D;\&quot;, \&quot;!&#x3D;\&quot;, \&quot;exists\&quot;, \&quot;not_exists\&quot;, \&quot;time_elapsed_gt\&quot; (paid plan only) or \&quot;time_elapsed_lt\&quot; (paid plan only) See Time Operators key &#x3D; Tag key to compare. value &#x3D; Tag value to compare. Not required for \&quot;exists\&quot; or \&quot;not_exists\&quot;. Example: See Formatting Filters  | [optional] |
| **language** | **String** | relation &#x3D; \&quot;&#x3D;\&quot; or \&quot;!&#x3D;\&quot; value &#x3D; 2 character language code. Example: \&quot;en\&quot;. For a list of all language codes see Language &amp; Localization.  | [optional] |
| **app_version** | **String** | relation &#x3D; \&quot;&gt;\&quot;, \&quot;&lt;\&quot;, \&quot;&#x3D;\&quot; or \&quot;!&#x3D;\&quot; value &#x3D; app version. Example: \&quot;1.0.0\&quot;  | [optional] |
| **location** | **String** | radius &#x3D; in meters lat &#x3D; latitude long &#x3D; longitude  | [optional] |
| **email** | **String** | value &#x3D; email address Only for sending Push Notifications Use this for targeting push subscribers associated with an email set with all SDK setEmail methods To send emails to specific email addresses use include_email_tokens parameter  | [optional] |
| **country** | **String** | relation &#x3D; \&quot;&#x3D;\&quot; value &#x3D; 2-digit Country code Example: \&quot;field\&quot;: \&quot;country\&quot;, \&quot;relation\&quot;: \&quot;&#x3D;\&quot;, \&quot;value\&quot;, \&quot;US\&quot;  | [optional] |
| **include_player_ids** | **Array&lt;String&gt;** | Specific playerids to send your notification to. _Does not require API Auth Key. Do not combine with other targeting parameters. Not compatible with any other targeting parameters. Example: [\&quot;1dd608f2-c6a1-11e3-851d-000c2940e62c\&quot;] Limit of 2,000 entries per REST API call  | [optional] |
| **include_external_user_ids** | **Array&lt;String&gt;** | Target specific devices by custom user IDs assigned via API. Not compatible with any other targeting parameters Example: [\&quot;custom-id-assigned-by-api\&quot;] REQUIRED: REST API Key Authentication Limit of 2,000 entries per REST API call. Note: If targeting push, email, or sms subscribers with same ids, use with channel_for_external_user_ids to indicate you are sending a push or email or sms.  | [optional] |
| **include_email_tokens** | **Array&lt;String&gt;** | Recommended for Sending Emails - Target specific email addresses. If an email does not correspond to an existing user, a new user will be created. Example: nick@catfac.ts Limit of 2,000 entries per REST API call  | [optional] |
| **include_phone_numbers** | **Array&lt;String&gt;** | Recommended for Sending SMS - Target specific phone numbers. The phone number should be in the E.164 format. Phone number should be an existing subscriber on OneSignal. Refer our docs to learn how to add phone numbers to OneSignal. Example phone number: +1999999999 Limit of 2,000 entries per REST API call  | [optional] |
| **include_ios_tokens** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_player_ids or include_external_user_ids instead. Target using iOS device tokens. Warning: Only works with Production tokens. All non-alphanumeric characters must be removed from each token. If a token does not correspond to an existing user, a new user will be created. Example: ce777617da7f548fe7a9ab6febb56cf39fba6d38203... Limit of 2,000 entries per REST API call  | [optional] |
| **include_wp_wns_uris** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_player_ids or include_external_user_ids instead. Target using Windows URIs. If a token does not correspond to an existing user, a new user will be created. Example: http://s.notify.live.net/u/1/bn1/HmQAAACPaLDr-... Limit of 2,000 entries per REST API call  | [optional] |
| **include_amazon_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_player_ids or include_external_user_ids instead. Target using Amazon ADM registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: amzn1.adm-registration.v1.XpvSSUk0Rc3hTVVV... Limit of 2,000 entries per REST API call  | [optional] |
| **include_chrome_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_player_ids or include_external_user_ids instead. Target using Chrome App registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call  | [optional] |
| **include_chrome_web_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_player_ids or include_external_user_ids instead. Target using Chrome Web Push registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call  | [optional] |
| **include_android_reg_ids** | **Array&lt;String&gt;** | Not Recommended: Please consider using include_player_ids or include_external_user_ids instead. Target using Android device registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call  | [optional] |
| **id** | **String** |  | [optional] |
| **value** | **Integer** |  | [optional][readonly] |
| **aggregation** | **String** |  | [optional][readonly] |
| **is_ios** | **Boolean** | Indicates whether to send to all devices registered under your app&#39;s Apple iOS platform. | [optional][default to true] |
| **is_android** | **Boolean** | Indicates whether to send to all devices registered under your app&#39;s Google Android platform. | [optional] |
| **is_huawei** | **Boolean** | Indicates whether to send to all devices registered under your app&#39;s Huawei Android platform. | [optional] |
| **is_any_web** | **Boolean** | Indicates whether to send to all subscribed web browser users, including Chrome, Firefox, and Safari. You may use this instead as a combined flag instead of separately enabling isChromeWeb, isFirefox, and isSafari, though the three options are equivalent to this one.  | [optional] |
| **is_chrome_web** | **Boolean** | Indicates whether to send to all Google Chrome, Chrome on Android, and Mozilla Firefox users registered under your Chrome &amp; Firefox web push platform. | [optional] |
| **is_firefox** | **Boolean** | Indicates whether to send to all Mozilla Firefox desktop users registered under your Firefox web push platform. | [optional] |
| **is_safari** | **Boolean** | Does not support iOS Safari. Indicates whether to send to all Apple&#39;s Safari desktop users registered under your Safari web push platform. Read more iOS Safari | [optional] |
| **is_wp_wns** | **Boolean** | Indicates whether to send to all devices registered under your app&#39;s Windows platform. | [optional] |
| **is_adm** | **Boolean** | Indicates whether to send to all devices registered under your app&#39;s Amazon Fire platform. | [optional] |
| **is_chrome** | **Boolean** | This flag is not used for web push Please see isChromeWeb for sending to web push users. This flag only applies to Google Chrome Apps &amp; Extensions. Indicates whether to send to all devices registered under your app&#39;s Google Chrome Apps &amp; Extension platform.  | [optional] |
| **channel_for_external_user_ids** | **String** | Indicates if the message type when targeting with include_external_user_ids for cases where an email, sms, and/or push subscribers have the same external user id. Example: Use the string \&quot;push\&quot; to indicate you are sending a push notification or the string \&quot;email\&quot;for sending emails or \&quot;sms\&quot;for sending SMS.  | [optional] |
| **app_id** | **String** | Required: Your OneSignal Application ID, which can be found in Keys &amp; IDs. It is a UUID and looks similar to 8250eaf6-1a58-489e-b136-7c74a864b434.  |  |
| **external_id** | **String** | Correlation and idempotency key. A request received with this parameter will first look for another notification with the same external_id. If one exists, a notification will not be sent, and result of the previous operation will instead be returned. Therefore, if you plan on using this feature, it&#39;s important to use a good source of randomness to generate the UUID passed here. This key is only idempotent for 30 days. After 30 days, the notification could be removed from our system and a notification with the same external_id will be sent again.   See Idempotent Notification Requests for more details writeOnly: true  | [optional] |
| **contents** | [**StringMap**](StringMap.md) |  | [optional] |
| **headings** | [**StringMap**](StringMap.md) |  | [optional] |
| **subtitle** | [**StringMap**](StringMap.md) |  | [optional] |
| **data** | **Object** | Channel: Push Notifications Platform: Huawei A custom map of data that is passed back to your app. Same as using Additional Data within the dashboard. Can use up to 2048 bytes of data. Example: {\&quot;abc\&quot;: 123, \&quot;foo\&quot;: \&quot;bar\&quot;, \&quot;event_performed\&quot;: true, \&quot;amount\&quot;: 12.1}  | [optional] |
| **huawei_msg_type** | **String** | Channel: Push Notifications Platform: Huawei Use \&quot;data\&quot; or \&quot;message\&quot; depending on the type of notification you are sending. More details in Data &amp; Background Notifications.  | [optional] |
| **url** | **String** | Channel: Push Notifications Platform: All The URL to open in the browser when a user clicks on the notification. Note: iOS needs https or updated NSAppTransportSecurity in plist This field supports inline substitutions. Omit if including web_url or app_url Example: https://onesignal.com  | [optional] |
| **web_url** | **String** | Channel: Push Notifications Platform: All Browsers Same as url but only sent to web push platforms. Including Chrome, Firefox, Safari, Opera, etc. Example: https://onesignal.com  | [optional] |
| **app_url** | **String** | Channel: Push Notifications Platform: All Browsers Same as url but only sent to web push platforms. Including iOS, Android, macOS, Windows, ChromeApps, etc. Example: https://onesignal.com  | [optional] |
| **ios_attachments** | **Object** | Channel: Push Notifications Platform: iOS 10+ Adds media attachments to notifications. Set as JSON object, key as a media id of your choice and the value as a valid local filename or URL. User must press and hold on the notification to view. Do not set mutable_content to download attachments. The OneSignal SDK does this automatically Example: {\&quot;id1\&quot;: \&quot;https://domain.com/image.jpg\&quot;}  | [optional] |
| **template_id** | **String** | Channel: Push Notifications Platform: All Use a template you setup on our dashboard. The template_id is the UUID found in the URL when viewing a template on our dashboard. Example: be4a8044-bbd6-11e4-a581-000c2940e62c  | [optional] |
| **content_available** | **Boolean** | Channel: Push Notifications Platform: iOS Sending true wakes your app from background to run custom native code (Apple interprets this as content-available&#x3D;1). Note: Not applicable if the app is in the \&quot;force-quit\&quot; state (i.e app was swiped away). Omit the contents field to prevent displaying a visible notification.  | [optional] |
| **mutable_content** | **Boolean** | Channel: Push Notifications Platform: iOS 10+ Always defaults to true and cannot be turned off. Allows tracking of notification receives and changing of the notification content in your app before it is displayed. Triggers didReceive(_:withContentHandler:) on your UNNotificationServiceExtension.  | [optional] |
| **target_content_identifier** | **String** | Channel: Push Notifications Platform: iOS 13+ Use to target a specific experience in your App Clip, or to target your notification to a specific window in a multi-scene App.  | [optional] |
| **big_picture** | **String** | Channel: Push Notifications Platform: Android Picture to display in the expanded view. Can be a drawable resource name or a URL.  | [optional] |
| **huawei_big_picture** | **String** | Channel: Push Notifications Platform: Huawei Picture to display in the expanded view. Can be a drawable resource name or a URL.  | [optional] |
| **adm_big_picture** | **String** | Channel: Push Notifications Platform: Amazon Picture to display in the expanded view. Can be a drawable resource name or a URL.  | [optional] |
| **chrome_big_picture** | **String** | Channel: Push Notifications Platform: ChromeApp Large picture to display below the notification text. Must be a local URL.  | [optional] |
| **chrome_web_image** | **String** | Channel: Push Notifications Platform: Chrome 56+ Sets the web push notification&#39;s large image to be shown below the notification&#39;s title and text. Please see Web Push Notification Icons.  | [optional] |
| **buttons** | [**Array&lt;Button&gt;**](Button.md) | Channel: Push Notifications Platform: iOS 8.0+, Android 4.1+, and derivatives like Amazon Buttons to add to the notification. Icon only works for Android. Buttons show in reverse order of array position i.e. Last item in array shows as first button on device. Example: [{\&quot;id\&quot;: \&quot;id2\&quot;, \&quot;text\&quot;: \&quot;second button\&quot;, \&quot;icon\&quot;: \&quot;ic_menu_share\&quot;}, {\&quot;id\&quot;: \&quot;id1\&quot;, \&quot;text\&quot;: \&quot;first button\&quot;, \&quot;icon\&quot;: \&quot;ic_menu_send\&quot;}]  | [optional] |
| **web_buttons** | [**Array&lt;Button&gt;**](Button.md) | Channel: Push Notifications Platform: Chrome 48+ Add action buttons to the notification. The id field is required. Example: [{\&quot;id\&quot;: \&quot;like-button\&quot;, \&quot;text\&quot;: \&quot;Like\&quot;, \&quot;icon\&quot;: \&quot;http://i.imgur.com/N8SN8ZS.png\&quot;, \&quot;url\&quot;: \&quot;https://yoursite.com\&quot;}, {\&quot;id\&quot;: \&quot;read-more-button\&quot;, \&quot;text\&quot;: \&quot;Read more\&quot;, \&quot;icon\&quot;: \&quot;http://i.imgur.com/MIxJp1L.png\&quot;, \&quot;url\&quot;: \&quot;https://yoursite.com\&quot;}]  | [optional] |
| **ios_category** | **String** | Channel: Push Notifications Platform: iOS Category APS payload, use with registerUserNotificationSettings:categories in your Objective-C / Swift code. Example: calendar category which contains actions like accept and decline iOS 10+ This will trigger your UNNotificationContentExtension whose ID matches this category.  | [optional] |
| **android_channel_id** | **String** | Channel: Push Notifications Platform: Android The Android Oreo Notification Category to send the notification under. See the Category documentation on creating one and getting it&#39;s id.  | [optional] |
| **huawei_channel_id** | **String** | Channel: Push Notifications Platform: Huawei The Android Oreo Notification Category to send the notification under. See the Category documentation on creating one and getting it&#39;s id.  | [optional] |
| **existing_android_channel_id** | **String** | Channel: Push Notifications Platform: Android Use this if you have client side Android Oreo Channels you have already defined in your app with code.  | [optional] |
| **huawei_existing_channel_id** | **String** | Channel: Push Notifications Platform: Huawei Use this if you have client side Android Oreo Channels you have already defined in your app with code.  | [optional] |
| **android_background_layout** | [**NotificationAllOfAndroidBackgroundLayout**](NotificationAllOfAndroidBackgroundLayout.md) |  | [optional] |
| **small_icon** | **String** | Channel: Push Notifications Platform: Android Icon shown in the status bar and on the top left of the notification. If not set a bell icon will be used or ic_stat_onesignal_default if you have set this resource name. See: How to create small icons  | [optional] |
| **huawei_small_icon** | **String** | Channel: Push Notifications Platform: Huawei Icon shown in the status bar and on the top left of the notification. Use an Android resource path (E.g. /drawable/small_icon). Defaults to your app icon if not set.  | [optional] |
| **large_icon** | **String** | Channel: Push Notifications Platform: Android Can be a drawable resource name or a URL. See: How to create large icons  | [optional] |
| **huawei_large_icon** | **String** | Channel: Push Notifications Platform: Huawei Can be a drawable resource name or a URL. See: How to create large icons  | [optional] |
| **adm_small_icon** | **String** | Channel: Push Notifications Platform: Amazon If not set a bell icon will be used or ic_stat_onesignal_default if you have set this resource name. See: How to create small icons  | [optional] |
| **adm_large_icon** | **String** | Channel: Push Notifications Platform: Amazon If blank the small_icon is used. Can be a drawable resource name or a URL. See: How to create large icons  | [optional] |
| **chrome_web_icon** | **String** | Channel: Push Notifications Platform: Chrome Sets the web push notification&#39;s icon. An image URL linking to a valid image. Common image types are supported; GIF will not animate. We recommend 256x256 (at least 80x80) to display well on high DPI devices. Firefox will also use this icon, unless you specify firefox_icon.  | [optional] |
| **chrome_web_badge** | **String** | Channel: Push Notifications Platform: Chrome Sets the web push notification icon for Android devices in the notification shade. Please see Web Push Notification Badge.  | [optional] |
| **firefox_icon** | **String** | Channel: Push Notifications Platform: Firefox Not recommended Few people need to set Firefox-specific icons. We recommend setting chrome_web_icon instead, which Firefox will also use. Sets the web push notification&#39;s icon for Firefox. An image URL linking to a valid image. Common image types are supported; GIF will not animate. We recommend 256x256 (at least 80x80) to display well on high DPI devices.  | [optional] |
| **chrome_icon** | **String** | Channel: Push Notifications Platform: ChromeApp This flag is not used for web push For web push, please see chrome_web_icon instead. The local URL to an icon to use. If blank, the app icon will be used.  | [optional] |
| **ios_sound** | **String** | Channel: Push Notifications Platform: iOS Sound file that is included in your app to play instead of the default device notification sound. Pass nil to disable vibration and sound for the notification. Example: \&quot;notification.wav\&quot;  | [optional] |
| **android_sound** | **String** | Channel: Push Notifications Platform: Android &amp;#9888;&amp;#65039;Deprecated, this field doesn&#39;t work on Android 8 (Oreo) and newer devices! Please use Notification Categories / Channels noted above instead to support ALL versions of Android. Sound file that is included in your app to play instead of the default device notification sound. Pass nil to disable sound for the notification. NOTE: Leave off file extension for Android. Example: \&quot;notification\&quot;  | [optional] |
| **huawei_sound** | **String** | Channel: Push Notifications Platform: Huawei &amp;#9888;&amp;#65039;Deprecated, this field ONLY works on EMUI 5 (Android 7 based) and older devices. Please also set Notification Categories / Channels noted above to support EMUI 8 (Android 8 based) devices. Sound file that is included in your app to play instead of the default device notification sound. NOTE: Leave off file extension for and include the full path.  Example: \&quot;/res/raw/notification\&quot;  | [optional] |
| **adm_sound** | **String** | Channel: Push Notifications Platform: Amazon &amp;#9888;&amp;#65039;Deprecated, this field doesn&#39;t work on Android 8 (Oreo) and newer devices! Please use Notification Categories / Channels noted above instead to support ALL versions of Android. Sound file that is included in your app to play instead of the default device notification sound. Pass nil to disable sound for the notification. NOTE: Leave off file extension for Android. Example: \&quot;notification\&quot;  | [optional] |
| **wp_wns_sound** | **String** | Channel: Push Notifications Platform: Windows Sound file that is included in your app to play instead of the default device notification sound. Example: \&quot;notification.wav\&quot;  | [optional] |
| **android_led_color** | **String** | Channel: Push Notifications Platform: Android &amp;#9888;&amp;#65039;Deprecated, this field doesn&#39;t work on Android 8 (Oreo) and newer devices! Please use Notification Categories / Channels noted above instead to support ALL versions of Android. Sets the devices LED notification light if the device has one. ARGB Hex format. Example(Blue): \&quot;FF0000FF\&quot;  | [optional] |
| **huawei_led_color** | **String** | Channel: Push Notifications Platform: Huawei &amp;#9888;&amp;#65039;Deprecated, this field ONLY works on EMUI 5 (Android 7 based) and older devices. Please also set Notification Categories / Channels noted above to support EMUI 8 (Android 8 based) devices. Sets the devices LED notification light if the device has one. RGB Hex format. Example(Blue): \&quot;0000FF\&quot;  | [optional] |
| **android_accent_color** | **String** | Channel: Push Notifications Platform: Android Sets the background color of the notification circle to the left of the notification text. Only applies to apps targeting Android API level 21+ on Android 5.0+ devices. Example(Red): \&quot;FFFF0000\&quot;  | [optional] |
| **huawei_accent_color** | **String** | Channel: Push Notifications Platform: Huawei Accent Color used on Action Buttons and Group overflow count. Uses RGB Hex value (E.g. #9900FF). Defaults to device&#39;s theme color if not set.  | [optional] |
| **android_visibility** | **Integer** | Channel: Push Notifications Platform: Android 5.0_ &amp;#9888;&amp;#65039;Deprecated, this field doesn&#39;t work on Android 8 (Oreo) and newer devices! Please use Notification Categories / Channels noted above instead to support ALL versions of Android. 1 &#x3D; Public (default) (Shows the full message on the lock screen unless the user has disabled all notifications from showing on the lock screen. Please consider the user and mark private if the contents are.) 0 &#x3D; Private (Hides message contents on lock screen if the user set \&quot;Hide sensitive notification content\&quot; in the system settings) -1 &#x3D; Secret (Notification does not show on the lock screen at all)  | [optional] |
| **huawei_visibility** | **Integer** | Channel: Push Notifications Platform: Huawei &amp;#9888;&amp;#65039;Deprecated, this field ONLY works on EMUI 5 (Android 7 based) and older devices. Please also set Notification Categories / Channels noted above to support EMUI 8 (Android 8 based) devices. 1 &#x3D; Public (default) (Shows the full message on the lock screen unless the user has disabled all notifications from showing on the lock screen. Please consider the user and mark private if the contents are.) 0 &#x3D; Private (Hides message contents on lock screen if the user set \&quot;Hide sensitive notification content\&quot; in the system settings) -1 &#x3D; Secret (Notification does not show on the lock screen at all)  | [optional] |
| **ios_badge_type** | **String** | Channel: Push Notifications Platform: iOS Describes whether to set or increase/decrease your app&#39;s iOS badge count by the ios_badgeCount specified count. Can specify None, SetTo, or Increase. &#x60;None&#x60; leaves the count unaffected. &#x60;SetTo&#x60; directly sets the badge count to the number specified in ios_badgeCount. &#x60;Increase&#x60; adds the number specified in ios_badgeCount to the total. Use a negative number to decrease the badge count.  | [optional] |
| **ios_badge_count** | **Integer** | Channel: Push Notifications Platform: iOS Used with ios_badgeType, describes the value to set or amount to increase/decrease your app&#39;s iOS badge count by. You can use a negative number to decrease the badge count when used with an ios_badgeType of Increase.  | [optional] |
| **collapse_id** | **String** | Channel: Push Notifications Platform: iOS 10+, Android Only one notification with the same id will be shown on the device. Use the same id to update an existing notification instead of showing a new one. Limit of 64 characters.  | [optional] |
| **web_push_topic** | **String** | Channel: Push Notifications Platform: All Browsers Display multiple notifications at once with different topics.  | [optional] |
| **apns_alert** | **Object** | Channel: Push Notifications Platform: iOS 10+ iOS can localize push notification messages on the client using special parameters such as loc-key. When using the Create Notification endpoint, you must include these parameters inside of a field called apns_alert. Please see Apple&#39;s guide on localizing push notifications to learn more.  | [optional] |
| **send_after** | **Integer** | Unix timestamp indicating when notification delivery should begin. | [optional] |
| **delayed_option** | **String** | Channel: All Possible values are: timezone (Deliver at a specific time-of-day in each users own timezone) last-active Same as Intelligent Delivery . (Deliver at the same time of day as each user last used your app). If send_after is used, this takes effect after the send_after time has elapsed.  | [optional] |
| **delivery_time_of_day** | **String** | Channel: All Use with delayed_option&#x3D;timezone. Examples: \&quot;9:00AM\&quot; \&quot;21:45\&quot; \&quot;9:45:30\&quot;  | [optional] |
| **ttl** | **Integer** | Channel: Push Notifications Platform: iOS, Android, Chrome, Firefox, Safari, ChromeWeb Time To Live - In seconds. The notification will be expired if the device does not come back online within this time. The default is 259,200 seconds (3 days). Max value to set is 2419200 seconds (28 days).  | [optional] |
| **priority** | **Integer** | Channel: Push Notifications Platform: Android, Chrome, ChromeWeb Delivery priority through the push server (example GCM/FCM). Pass 10 for high priority or any other integer for normal priority. Defaults to normal priority for Android and high for iOS. For Android 6.0+ devices setting priority to high will wake the device out of doze mode.  | [optional] |
| **apns_push_type_override** | **String** | Channel: Push Notifications Platform: iOS valid values: voip Set the value to voip for sending VoIP Notifications This field maps to the APNS header apns-push-type. Note: alert and background are automatically set by OneSignal  | [optional] |
| **throttle_rate_per_minute** | **Integer** | number of push notifications sent per minute. Paid Feature Only. If throttling is not enabled for the app or the notification, and for free accounts, null is returned. Refer to Throttling for more details. | [optional] |
| **android_group** | **String** | Channel: Push Notifications Platform: Android Notifications with the same group will be stacked together using Android&#39;s Notification Grouping feature.  | [optional] |
| **android_group_message** | **String** | Channel: Push Notifications Platform: Android Note: This only works for Android 6 and older. Android 7+ allows full expansion of all message. Summary message to display when 2+ notifications are stacked together. Default is \&quot;# new messages\&quot;. Include $[notif_count] in your message and it will be replaced with the current number. Languages - The value of each key is the message that will be sent to users for that language. \&quot;en\&quot; (English) is required. The key of each hash is either a a 2 character language code or one of zh-Hans/zh-Hant for Simplified or Traditional Chinese. Read more: supported languages. Example: {\&quot;en\&quot;: \&quot;You have $[notif_count] new messages\&quot;}  | [optional] |
| **adm_group** | **String** | Channel: Push Notifications Platform: Amazon Notifications with the same group will be stacked together using Android&#39;s Notification Grouping feature.  | [optional] |
| **adm_group_message** | **Object** | Channel: Push Notifications Platform: Amazon Summary message to display when 2+ notifications are stacked together. Default is \&quot;# new messages\&quot;. Include $[notif_count] in your message and it will be replaced with the current number. \&quot;en\&quot; (English) is required. The key of each hash is either a a 2 character language code or one of zh-Hans/zh-Hant for Simplified or Traditional Chinese. The value of each key is the message that will be sent to users for that language. Example: {\&quot;en\&quot;: \&quot;You have $[notif_count] new messages\&quot;}  | [optional] |
| **thread_id** | **String** | Channel: Push Notifications Platform: iOS 12+ This parameter is supported in iOS 12 and above. It allows you to group related notifications together. If two notifications have the same thread-id, they will both be added to the same group.  | [optional] |
| **summary_arg** | **String** | Channel: Push Notifications Platform: iOS 12+ When using thread_id to create grouped notifications in iOS 12+, you can also control the summary. For example, a grouped notification can say \&quot;12 more notifications from John Doe\&quot;. The summary_arg lets you set the name of the person/thing the notifications are coming from, and will show up as \&quot;X more notifications from summary_arg\&quot;  | [optional] |
| **summary_arg_count** | **Integer** | Channel: Push Notifications Platform: iOS 12+ When using thread_id, you can also control the count of the number of notifications in the group. For example, if the group already has 12 notifications, and you send a new notification with summary_arg_count &#x3D; 2, the new total will be 14 and the summary will be \&quot;14 more notifications from summary_arg\&quot;  | [optional] |
| **email_subject** | **String** | Channel: Email Required.  The subject of the email.  | [optional] |
| **email_body** | **String** | Channel: Email Required unless template_id is set. HTML suported The body of the email you wish to send. Typically, customers include their own HTML templates here. Must include [unsubscribe_url] in an &lt;a&gt; tag somewhere in the email. Note: any malformed HTML content will be sent to users. Please double-check your HTML is valid.  | [optional] |
| **email_from_name** | **String** | Channel: Email The name the email is from. If not specified, will default to \&quot;from name\&quot; set in the OneSignal Dashboard Email Settings.  | [optional] |
| **email_from_address** | **String** | Channel: Email The email address the email is from. If not specified, will default to \&quot;from email\&quot; set in the OneSignal Dashboard Email Settings.  | [optional] |
| **sms_from** | **String** | Channel: SMS Phone Number used to send SMS. Should be a registered Twilio phone number in E.164 format.  | [optional] |
| **sms_media_urls** | **Array&lt;String&gt;** | Channel: SMS URLs for the media files to be attached to the SMS content. Limit: 10 media urls with a total max. size of 5MBs.  | [optional] |
| **successful** | **Integer** | Number of notifications that were successfully delivered. | [optional] |
| **failed** | **Integer** | Number of notifications that could not be delivered due to those devices being unsubscribed. | [optional] |
| **errored** | **Integer** | Number of notifications that could not be delivered due to an error. You can find more information by viewing the notification in the dashboard. | [optional] |
| **converted** | **Integer** | Number of users who have clicked / tapped on your notification. | [optional] |
| **received** | **Integer** | Confirmed Deliveries number of devices that received the push notification. Paid Feature Only. Free accounts will see 0. | [optional] |
| **outcomes** | [**Array&lt;OutcomeData&gt;**](OutcomeData.md) |  | [optional] |
| **remaining** | **Integer** | Number of notifications that have not been sent out yet. This can mean either our system is still processing the notification or you have delayed options set. | [optional] |
| **queued_at** | **Integer** | Unix timestamp indicating when the notification was created. | [optional] |
| **completed_at** | **Integer** | Unix timestamp indicating when notification delivery completed. The delivery duration from start to finish can be calculated with completed_at - send_after. | [optional] |
| **platform_delivery_stats** | [**PlatformDeliveryData**](PlatformDeliveryData.md) |  | [optional] |

## Example

```ruby
require 'onesignal'

instance = OneSignal::NotificationWithMeta.new(
  included_segments: null,
  excluded_segments: null,
  last_session: null,
  first_session: null,
  session_count: null,
  session_time: null,
  amount_spent: null,
  bought_sku: null,
  tag: null,
  language: null,
  app_version: null,
  location: null,
  email: null,
  country: null,
  include_player_ids: null,
  include_external_user_ids: null,
  include_email_tokens: null,
  include_phone_numbers: null,
  include_ios_tokens: null,
  include_wp_wns_uris: null,
  include_amazon_reg_ids: null,
  include_chrome_reg_ids: null,
  include_chrome_web_reg_ids: null,
  include_android_reg_ids: null,
  id: null,
  value: null,
  aggregation: null,
  is_ios: null,
  is_android: null,
  is_huawei: null,
  is_any_web: null,
  is_chrome_web: null,
  is_firefox: null,
  is_safari: null,
  is_wp_wns: null,
  is_adm: null,
  is_chrome: null,
  channel_for_external_user_ids: null,
  app_id: null,
  external_id: null,
  contents: null,
  headings: null,
  subtitle: null,
  data: null,
  huawei_msg_type: null,
  url: null,
  web_url: null,
  app_url: null,
  ios_attachments: null,
  template_id: null,
  content_available: null,
  mutable_content: null,
  target_content_identifier: null,
  big_picture: null,
  huawei_big_picture: null,
  adm_big_picture: null,
  chrome_big_picture: null,
  chrome_web_image: null,
  buttons: null,
  web_buttons: null,
  ios_category: null,
  android_channel_id: null,
  huawei_channel_id: null,
  existing_android_channel_id: null,
  huawei_existing_channel_id: null,
  android_background_layout: null,
  small_icon: null,
  huawei_small_icon: null,
  large_icon: null,
  huawei_large_icon: null,
  adm_small_icon: null,
  adm_large_icon: null,
  chrome_web_icon: null,
  chrome_web_badge: null,
  firefox_icon: null,
  chrome_icon: null,
  ios_sound: null,
  android_sound: null,
  huawei_sound: null,
  adm_sound: null,
  wp_wns_sound: null,
  android_led_color: null,
  huawei_led_color: null,
  android_accent_color: null,
  huawei_accent_color: null,
  android_visibility: null,
  huawei_visibility: null,
  ios_badge_type: null,
  ios_badge_count: null,
  collapse_id: null,
  web_push_topic: null,
  apns_alert: null,
  send_after: null,
  delayed_option: null,
  delivery_time_of_day: null,
  ttl: null,
  priority: null,
  apns_push_type_override: null,
  throttle_rate_per_minute: null,
  android_group: null,
  android_group_message: null,
  adm_group: null,
  adm_group_message: null,
  thread_id: null,
  summary_arg: null,
  summary_arg_count: null,
  email_subject: null,
  email_body: null,
  email_from_name: null,
  email_from_address: null,
  sms_from: null,
  sms_media_urls: null,
  successful: null,
  failed: null,
  errored: null,
  converted: null,
  received: null,
  outcomes: null,
  remaining: null,
  queued_at: null,
  completed_at: null,
  platform_delivery_stats: null
)
```
