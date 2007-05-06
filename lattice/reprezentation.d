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
 * Obsługa różnych reprezentacji całkowitych form kwadratowych
 *
 * Zawiera klasy elementarnych struktur danych (np. całkowita macierz kwadratowa, 
 * graf skierowany, graf nieskierowany, poset) oraz klasę reprezentującą całkowitą 
 * formę kwadratową w sposób dynamiczny uniwersalny.
 *
 * Authors: Tomasz Polachowski, $(LINK2 mailto:sprytnyserek@gmail.com,sprytnyserek@gmail.com)
 * License: GNU General Public License 2.0, $(LINK http://www.fsf.org/licensing/licenses/gpl.html)
 * Version: 0.0.1
 */
module lattice.reprezentation;

import std.c.stdlib;

class SqIntMatrix {
	protected:
		uint n;
		long** array;
	public:
		this(uint n) {
		this.array = cast(long**)calloc(n,(long*).sizeof);
		for (uint i = 0; i < n; i++) this.array[i] = cast(long*)calloc(n,long.sizeof);
		this.n = n;
		}
		
		~this() {
		for (uint i = 0; i < this.n; i++) free(this.array[i]);
		free(this.array);
		}
		
		long det() {
		long x;
		
		return x;
		}
		
	}
