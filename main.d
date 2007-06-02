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
 * Moduł główny
 *
 * Author: Tomasz Polachowski, $(LINK2 mailto:sprytnyserek@gmail.com,sprytnyserek@gmail.com)
 * License: GNU General Public License 2.0, $(LINK http://www.fsf.org/licensing/licenses/gpl.html)
 * Version: 0.0.1
*/
module main;

import std.stdio;

import lattice.reprezentation;
import gui.winmain;
import dfl.all;

static const int SUCCESS = 0, FAILURE = 1;

/**
 * Funkcja główna
 *
 * Wywołanie programu&#58; $(B chikoko [-f nazwa_pliku])
 */
int main(char[][] args) {
//writefln("Hello:[");
try {
	Application.run(new MainWindow);
	}
catch (Exception ex) {
	msgBox(ex.msg,"Błąd",MsgBoxButtons.OK,MsgBoxIcon.ERROR);
	return FAILURE;
	}
return SUCCESS;
}
