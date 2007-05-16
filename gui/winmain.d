/*
chikoko - quadratic forms solving
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
 * Authors: Tomasz Polachowski, $(LINK2 mailto:sprytnyserek@gmail.com,sprytnyserek@gmail.com)
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
	Label title;
	char[] text;

	void createWidgets() {
	this.title = new Label;
	this.title.font = new Font("Verdana",14f);
	this.title.text = "Hello, Chikoko World!";
	this.title.location = Point(15,15);
	this.title.autoSize = true;
	this.title.dock = DockStyle.NONE;
	this.title.parent = this;
	}
	
	public:
	/**
	 * Params:
	 *  title = tytuł głównego okna programu
	 */
	this(char[] title = "Chikoko") {
	super();
	this.text = title;
	this.createWidgets();
	}

	/**
	 * Ustawia tytuł głównego okna programu.
	 *
	 * Params:
	 *  title = tytuł głównego okna programu
	 */
	void setTitle(char[] title = "Chikoko") {
	this.text = title;
	}
	
	}
