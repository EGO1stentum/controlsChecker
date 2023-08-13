# FiveM Control Handling Script

Hello everyone,

I encountered a problem in FiveM and decided to share my solution with you all.

## Issue and Solution

In FiveM, a notable issue arises from the inability to directly block actions triggered by `RegisterKeyMapping()`. This is because key presses execute commands rather than actions themselves (to the best of my understanding). Consequently, players can perform actions like using phones even when their characters are dead.

To address this, I developed this script. It actively monitors inputs and prevents unauthorized actions that can't be directly blocked through `RegisterKeyMapping()`.

## Control Handling

The script closely monitors control actions within the game. It iterates through a predefined list of controls, each represented by a control index and description pair.

## Skipping Allowed Controls

Certain controls are allowed to remain active even when a player's character is dead. These controls are defined in the `Config.allowedControlsWhileDead` list. The script checks if the current control index matches any of these allowed controls and avoids disabling their actions.

## Disabling Controls

For controls not included in the allowed list, the script utilizes the `DisableControlAction` function to prevent the corresponding control actions from being executed. This effectively disables the associated inputs.

## Reporting Controls to Discord

Whenever a disabled control is pressed, the script identifies the control description from the predefined controls collection. It then reports this occurrence to a designated Discord channel via a webhook. The message includes both the control's description and index.

## Server Event for Discord Reporting

The script responds to the `sendToDiscord` server event, which is triggered when a control action is disabled. It constructs an embed message containing pertinent details, such as the title, message content, and sender's identifier.

## Customization

This script offers a high degree of customization. You can configure various aspects, including the message content, colors, webhook, and more, through the `Config` section.

## ESX Integration (Optional)

If enabled in the configuration, the script can include the player's identifier (ESX identifier) when reporting to Discord. This aids server administrators in identifying the source of the control action.

## Conclusion

Remember that this script aims to enhance your gameplay experience by identifying unintended control actions while your character is incapacitated. Reporting to Discord allows server staff to monitor these incidents and take necessary action if required.

Feel free to provide feedback or suggestions to further improve this script. Your input is invaluable in refining its functionality.

Thank you for utilizing this script and contributing to an enriched gaming experience!
