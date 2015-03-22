/* 
 * Copyright (C) 2014 matejcik
 *
 * This program is covered by the GNU General Public License version 3 or any later version.
 * You can find the full license text at <http://www.gnu.org/licenses/gpl-3.0.html>.
 * No express or implied warranty of any kind is provided.
 */
package cz.matejcik.openwig;

import java.io.*;
import se.krka.kahlua.vm.*;

public class Media extends EventTable {
	
	private static int media_no;

	public static void reset () {
		media_no = 1;
	}
	
	public int id;
	public String altText = null;
	public String type = null;
	
	public Media() {
		id = media_no++;
	}

	public void serialize (DataOutputStream out) throws IOException {
		out.writeInt(id);
		super.serialize(out);
	}

	public void deserialize (DataInputStream in) throws IOException {
		media_no--; // deserialize must be called directly after construction
		id = in.readInt();
		if (id >= media_no) media_no = id + 1;
		super.deserialize(in);
	}
	
	protected void setItem (String key, Object value) {	
		if ("AltText".equals(key)) {
			altText = (String)value;
		} else if ("Resources".equals(key)) {
			KahluaTable lt = (KahluaTable)value;
			int n = lt.len();
			for (int i = 1; i <= n; i++) {
				KahluaTable res = (KahluaTable)lt.rawget(new Double(i));
				String t = (String)res.rawget("Type");
				if ("fdl".equals(t)) continue;
				type = t.toLowerCase();
			}
		} else super.setItem(key, value);
	}
	
	public String jarFilename () {
		return String.valueOf(id)+"."+(type==null ? "" : type);
	}
	
	public void play () {
		try {
			String mime = null;
			if ("wav".equals(type)) mime = "audio/x-wav";
			else if ("mp3".equals(type)) mime = "audio/mpeg";
			Engine.ui.playSound(Engine.mediaFile(this), mime);
		} catch (IOException e) {
			// meh
		}
	}
}
