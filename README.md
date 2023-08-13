Hello everyone,
I had a problem last night so i decided to share my code with you guys.

Issue and Solution
In FiveM, the problem lies in the inability to directly block actions triggered by RegisterKeyMapping(). This occurs because key presses execute commands rather than actions themselves (i guess, not 100% sure).
As a result, players can perform actions like using phones when their characters are dead.

To counter this, i made this script last night. It monitors inputs and prevents unauthorized actions that can’t be directly blocked through RegisterKeyMapping().

Control Handling: The script actively monitors control actions in the game. It iterates through a predefined list of controls, consisting of control index and description pairs.

Skipping Allowed Controls: Certain controls are allowed to be active even when the player’s character is dead. These controls are defined in the Config.allowedControlsWhileDead list. The script checks if the current control index matches any of these allowed controls and skips disabling their actions.

Disabling Controls: For controls that are not in the allowed list, the script uses the DisableControlAction function to prevent those control actions from being performed. This effectively disables the corresponding inputs.

Reporting Controls to Discord: If a disabled control is pressed, the script identifies the control description based on the predefined controls collection. It then reports this event to a Discord channel using a webhook. The control’s description and index are included in the message.

Server Event for Discord Reporting: The script responds to the sendToDiscord server event. This event is triggered when a control action is disabled. It constructs an embed message with relevant details, such as the title, message content, and sender’s identifier.

Customization: The script is highly customizable. You can configure various aspects, including the message content, colors, webhook, and more, through the Config section.

ESX Integration (Optional): If enabled in the configuration, the script can include the player’s identifier (ESX identifier) when reporting to Discord. This can be useful for server administrators to identify the source of the control action.

Remember that this script is intended to enhance your gameplay experience and potentially catch unintended control actions while your character is incapacitated. The reporting to Discord allows server staff to monitor such incidents and take appropriate action if necessary.

Feel free to provide feedback or suggestions for improving this script. Your input is valuable in refining its functionality.

Thank you for using this script and contributing to a better gaming experience!
