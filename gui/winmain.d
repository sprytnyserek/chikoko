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
	Panel taskbar;
	
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

	createTaskbar();
		
	with (this.nav = new TreeView) {
		//size = Size(160,640);
		dock(DockStyle.LEFT);
		width = this.clientSize.width / 3;
		bounds = Rect(0,0,width,this.clientSize.height);
		borderStyle(BorderStyle.FIXED_3D);
		vScroll = true;
		hScroll = true;
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
		click ~= &fileNewMenu_click;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Open\tCtrl+O";
		index = 1;
		click ~= &fileOpenMenu_click;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Close\tCtrl+F4";
		index = 2;
		click ~= &fileCloseMenu_click;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Save\tCtrl+S";
		index = 3;
		click ~= &fileSaveMenu_click;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "Save &as...\tF12";
		index = 4;
		click ~= &fileSaveAsMenu_click;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "-";
		index = 5;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Exit\tAlt+F4";
		index = 6;
		click ~= &fileExitMenu_click;
		mpop.menuItems.add(mi);
		}

	with (mpop = new MenuItem) {
		text = "&Edit";
		index = 1;
		menu.menuItems.add(mpop);
		}
	with (mi = new MenuItem) {
		text = "Cu&t\tCrtl+X";
		index = 0;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Copy\tCtrl+C";
		index = 1;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Past\tCtrl+V";
		index = 2;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "-";
		index = 3;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Select all\tCtrl+A";
		index = 4;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "-";
		index = 5;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Dodaj obiekt...\tIns";
		index = 6;
		mpop.menuItems.add(mi);
		}
	with (mi = new MenuItem) {
		text = "&Usuń obiekt\tDel";
		index = 7;
		mpop.menuItems.add(mi);
		}

	with (mpop = new MenuItem) {
		text = "&View";
		index = 2;
		menu.menuItems.add(mpop);
		}
	
	}//end this()

	private:
	void createTaskbar() {
	Button button;
	
	with (taskbar = new Panel) {
		dock = DockStyle.TOP;
		height = 36;
		parent = this;
		}
	with (button = new Button) {
		size = Size(36,36);
		location = Point(0,0);
		image = Application.resources.getIcon(116);
		parent = taskbar;
		}
	with (button = new Button) {
		size = Size(36,36);
		location = Point(35,0);
		image = Application.resources.getIcon(109);
		parent = taskbar;
		}
	with (button = new Button) {
		size = Size(36,36);
		location = Point(71,0);
		image = Application.resources.getIcon(113);
		parent = taskbar;
		}
	with (button = new Button) {
		size = Size(36,36);
		location = Point(107,0);
		image = Application.resources.getIcon(115);
		parent = taskbar;
		}
	
	} // end createTaskbar
	
	void fileNewMenu_click(Object sender,EventArgs ea) {
	
	}

	void fileOpenMenu_click(Object sender,EventArgs ea) {

	}

	void fileCloseMenu_click(Object sender,EventArgs ea) {

	}

	void fileSaveMenu_click(Object sender,EventArgs ea) {

	}

	void fileSaveAsMenu_click(Object sender,EventArgs ea) {

	}

	void fileExitMenu_click(Object sender,EventArgs ea) {
	Application.exitThread();
	}
	
	}
