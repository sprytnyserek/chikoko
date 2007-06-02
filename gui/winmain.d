/*
chikoko - easy calculation
Copyright (C) 2007 Tomasz Polachowski, sprytnyserek@gmail.com

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
/**
 * Główne klasy obsługi graficznego interfejsu użytkownika.
 *
 * Author: Tomasz Polachowski, $(LINK2 mailto:sprytnyserek@gmail.com,sprytnyserek@gmail.com)
 * License: GNU General Public License 2.0, $(LINK http://www.fsf.org/licensing/licenses/gpl.html)
 * Version: 0.0.1
 */
module gui.winmain;

private import dfl.all;

/**
 * Klasa głównego okna aplikacji
 *
 * Tu znajduje się punkt wejścia do pozostałych funkcji programu 
 * z perspektywy użytkownika.
 */
class MainWindow : Form {
	private:
	Label statusBar;
	TreeView nav;//structure navigator
	MenuItem mpop,mi;
	
	public:
	/**
	 * 
	 */
	this() {
	super();
	
	with (this) {
		startPosition = FormStartPosition.WINDOWS_DEFAULT_LOCATION;
		size = Size(640,480);
		text = "Chikoko";
		icon = Application.resources.getIcon(103);
		}
		
	with (this.statusBar = new Label) {
		autoSize(true);
		dock(DockStyle.BOTTOM);
		borderStyle(BorderStyle.FIXED_3D);
		text = "Ready";
		parent = this;
		}
		
	with (this.nav = new TreeView) {
		//size = Size(160,640);
		dock(DockStyle.LEFT);
		width = this.clientSize.width / 3;
		bounds = Rect(0,0,width,this.clientSize.height);
		borderStyle(BorderStyle.FIXED_3D);
		parent = this;
		}

	this.menu = new MainMenu;
	with (mpop = new MenuItem) {
		text = "&File";
		index = 0;
		this.menu.menuItems.add(mpop);
		}
	with (mi = new MenuItem) {
		text = "&New\tCtrl+N";
		index = 0;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "-";
		index = 1;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "Exit\tAlt+F4";
		index = 2;
		click ~= &fileExitMenu_click;
		mpop.menuItems.add(mi);
		}
	
	}//end this()

	private void fileExitMenu_click(Object sender,EventArgs ea) {
	Application.exitThread();
	}
	
	}
