/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/.
 */

[Pref="device.sensors.orientation.enabled", Func="nsGlobalWindowInner::DeviceSensorsEnabled", Constructor(DOMString type, optional DeviceOrientationEventInit eventInitDict), LegacyEventInit]
interface DeviceOrientationEvent : Event
{
  readonly attribute double? alpha;
  readonly attribute double? beta;
  readonly attribute double? gamma;
  readonly attribute boolean absolute;

  // initDeviceOrientationEvent is a Gecko specific deprecated method.
  void initDeviceOrientationEvent(DOMString type,
                                  optional boolean canBubble = false,
                                  optional boolean cancelable = false,
                                  optional double? alpha = null,
                                  optional double? beta = null,
                                  optional double? gamma = null,
                                  optional boolean absolute = false);
};

dictionary DeviceOrientationEventInit : EventInit
{
  double? alpha = null;
  double? beta = null;
  double? gamma = null;
  boolean absolute = false;
};