/* 
 * Copyright (C) 2014 matejcik
 *
 * This program is covered by the GNU General Public License version 3 or any later version.
 * You can find the full license text at <http://www.gnu.org/licenses/gpl-3.0.html>.
 * No express or implied warranty of any kind is provided.
 */
package util;

import java.util.Vector;

public class BackgroundRunner extends Thread {

	private static BackgroundRunner instance;

	private boolean paused = false;

	public BackgroundRunner () {
		start();
	}

	public BackgroundRunner (boolean paused) {
		this.paused = paused;
		start();
	}

	synchronized public void pause () {
		paused = true;
	}

	synchronized public void unpause () {
		// because resume is Thread's method
		paused = false;
		notify();
	}

	public static BackgroundRunner getInstance () {
		if (instance == null) instance = new BackgroundRunner();
		return instance;
	}
	
	private Vector queue = new Vector();
	private boolean end = false;
	private Runnable queueProcessedListener = null;

	public void setQueueListener (Runnable r) {
		queueProcessedListener = r;
	}

	public void run () {
		boolean events;
		while (!end) {
			synchronized (this) { while (paused) {
				try { wait(); } catch (InterruptedException e) { }
				if (end) return;
			} }
			events = false;
			while (!queue.isEmpty()) {
				events = true;
				Runnable c = (Runnable)queue.firstElement();
				queue.removeElementAt(0);
				try {
					c.run();
				} catch (Throwable t) {
					t.printStackTrace();
				}
				if (paused) break;
			}
			if (events && queueProcessedListener != null) queueProcessedListener.run();
			synchronized (this) {
				if (!queue.isEmpty()) continue;
				if (end) return;
				try { wait(); } catch (InterruptedException e) { }
			}
		}
	}

	synchronized public void perform (Runnable c) {
		queue.addElement(c);
		notify();
	}

	public static void performTask (Runnable c) {
		getInstance().perform(c);
	}

	synchronized public void kill () {
		end = true;
		notify();
	}
}
