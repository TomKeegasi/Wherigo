/* 
 * Copyright (C) 2014 matejcik
 *
 * This program is covered by the GNU General Public License version 3 or any later version.
 * You can find the full license text at <http://www.gnu.org/licenses/gpl-3.0.html>.
 * No express or implied warranty of any kind is provided.
 */
package cz.matejcik.openwig.platform;

import cz.matejcik.openwig.*;
import se.krka.kahlua.vm.LuaClosure;

/** API for interaction with users from within Wherigo game.
 * <p>
 * The Lua-based Wherigo API relies on being able to call into
 * GUI and invoke specific actions - show a dialog, show a specific
 * screen, play sound, request text input and so on.
 * <p>
 * OpenWIG engine also uses this API to indicate that a game
 * is ready to start, game is ending, or the UI must update
 * to reflect changes performed by Lua script.
 */
public interface UI {
	// showScreen codes
	public static final int MAINSCREEN = 0;
	public static final int DETAILSCREEN = 1;
	public static final int INVENTORYSCREEN = 2;
	public static final int ITEMSCREEN = 3;
	public static final int LOCATIONSCREEN = 4;
	public static final int TASKSCREEN = 5;

	/** Forces screen update for items that might have been changed.
	 * Called after every Lua event that might have changed data
	 * of displayed objects, so that the state of display always
	 * reflects state of the game.
	 */
	public void refresh ();

	/** Called when the game is starting. UI should prepare
	 * and show relevant controls (i.e. main game menu)
	 */
	public void start();
	/** Called when the engine is terminating. UI should clean up
	 * and end, or offer to start another cartridge.
	 */
	public void end();

	/** Shows error message to user.
	 * <p>
	 * This means that an internal error in the engine, cartridge
	 * or other component has occured.
	 * @param msg text of the message
	 */
	public void showError (String msg);

	/** Logs debugging info from the engine.
	 * <p>
	 * This is only useful for debugging OpenWIG. UI might choose to
	 * not show this message to the user and only log it.
	 * @param msg text of the message
	 */
	public void debugMsg (String msg);

	/** Sets statusbar text.
	 * <p>
	 * Wherigo script might request certain text to be displayed
	 * in the status bar of the player. This is known not to work
	 * in Garmin players and is therefore optional.
	 * @param text new statusbar text, or null to clear the text
	 */
	public void setStatusText (String text);

	/** Shows a multi-page dialog to the user.
	 * <p>
	 * If another dialog or input is open, it should be closed
	 * before displaying this dialog.
	 * <p>
	 * While the dialog is open, user should only be able to
	 * continue by clicking one of its buttons. Button1 flips to
	 * next page, and when at end, invokes the callback with parameter
	 * "Button1", regardless of value of button1.
	 * Button2 immediately closes the dialog and invokes callback
	 * with parameter "Button2".
	 * If the dialog is closed by another API call, callback should be
	 * invoked with null parameter.
	 * @param texts texts of individual pages of dialog
	 * @param media pictures for individual pages of dialog
	 * @param button1 label for primary button. If null, "OK" is used.
	 * @param button2 label for secondary button. If null, the button is not displayed.
	 * @param callback callback to call when closing the dialog, or null
	 */
	//public void pushDialog (String[] texts, Media[] media, String button1, String button2, LuaClosure callback);

	/** Requests a text input from the user.
	 * <p>
	 * Displays a window with an optional description text and/or a picture,
	 * and allows the user to input a free-form string as an answer.
	 * <p>
	 * If another dialog or input is open, it should be closed
	 * before displaying this input.
	 * <p>
	 * The user can enter any string, or cancel the question by a Back button.
	 * When the user confirms their answer, the callback function should be
	 * invoked with the text of the answer as an argument.
	 * If the input is canceled, or closed by another API call, callback should
	 * be invoked with null argument.
	 * @param text description text for the question
	 * @param media media object with a picture for the question
	 * @param callback callback to call when closing the input, or null
	 */
	//public void pushTextInput (String text, Media media, LuaClosure callback);
	
	/** Requests a multiple-choice selection from the user.
	 * <p>
	 * Displays a window with an optional description text and/or a picture,
	 * and allows the user to choose one of several presented options.
	 * <p>
	 * If another dialog or input is open, it should be closed
	 * before displaying this input.
	 * <p>
	 * The user can select one of the options, or cancel the question by
	 * a Back button. The callback function should be invoked with the text
	 * of the specified choice.
	 * If the input is canceled, or closed by another API call, callback should
	 * be invoked with null argument.
	 * @param text description text for the question
	 * @param media media object with a picture for the question
	 * @param options array of available options. Must always contain at least one item.
	 * @param callback callback to call when closing the input, or null
	 */
	//public void pushChoiceInput (String text, Media media, String[] options, LuaClosure callback);	

	/** Shows a specified screen
	 * <p>
	 * The screen specified by screenId should be made visible.
	 * If a dialog or an input is open, it must be closed before
	 * showing the screen.
	 * @param screenId the screen to be shown
	 * @param details if screenId is DETAILSCREEN, details of this object will be displayed
	 */
	public void showScreen (int screenId, EventTable details);

	/** Plays a sound asynchronously
	 * <p>
	 * This function should start playback of the sound data
	 * and return immediately.
	 */
	public void playSound (byte[] data, String mime);

	/** Locks the interface
	 * <p>
	 * While the game is saving, the event loop is not running
	 * and events are queued up. Because of this, it is undesirable for the user
	 * to do anything with the interface, because they could trigger many events
	 * without visible feedback, which would then be run all at once.
	 * Because of that, Engine calls this function to lock the interface and
	 * display somewhat helpful message ("Saving...")
	 */
	public void blockForSaving ();

	/** Unlocks the interface
	 * <p>
	 * See {@link #blockForSaving()} for more details.
	 * @see blockForSaving
	 */
	public void unblock ();
	
	/** Returns DeviceID
	 * <p>
	 * Wherigo API requires a field DeviceID in Env table. This field can be
	 * used to differentiate between different devices or even player
	 * apps on the same Env.Platform.
	 * @return a string describing the device on which the UI runs
	 */
	public String getDeviceID ();
	
	/* all of these get DialogObject, because that's their callback */
	public void uiMessage (DialogObject dobj);
	public void uiConfirm (DialogObject dobj, String button);
	public void uiInput   (DialogObject dobj);
	public void uiChoice  (DialogObject dobj, String[] choices);
	public void uiNotify  (DialogObject dobj);
	
	public void uiCancel  (Runnable callback);
	public void uiWait    (Runnable callback);
}
