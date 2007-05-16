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
 * Funkcje rozwiązujące równania z formami kwadratowymi różnymi metodami.
 *
 * Authors: Tomasz Polachowski, $(LINK2 mailto:sprytnyserek@gmail.com,sprytnyserek@gmail.com)
 * License: GNU General Public License 2.0, $(LINK http://www.fsf.org/licensing/licenses/gpl.html)
 * Version: 0.0.1
 */
module lattice.solver;

//private import lattice.reprezentation;
private import std.math;


/**
 * Sprawdza typ Sylvestera (określoność) formy kwadratowej 
 * reprezentowanej przez macierz symetryczną (ale macierz wejściowa 
 * jest traktowana jak macierz dolnotrójkątna) z użyciem 
 * zmodyfikowanej eliminacji Gaussa.
 * 
 * Params: 
 * 	bq = 	dolnotrójkątna macierz Grama formy kwadratowej
 * Returns: kod określoności formy kwadratowej:$(BR) 
 *  $(B -2) - forma ujemnie określona, $(BR)
 *  $(B -1) - forma niedodatnio określona, $(BR)
 * 	 $(B 0) - $(B$(RED forma nieokreślona)), $(BR)
 *   $(B 1) - forma nieujemnie określona, $(BR)
 *   $(B 2) - forma dodatnio określona.
 */
byte getSylvesterType(long[][] bq) {
uint n = bq.length;
double[][] m;
uint i,j;
byte r = 2; //typ Sylvestera

m.length = n;
for (i = 0; i < n; i++) {
	m[i].length = i + 1;
	for (j = 0; j <= i; j++) {
		m[i][j] = bq[i][j];
		}
	}
for (i = 0; i < n; i++) {
	if (i == 0) {
		if (m[0][0] == 0) r = 1;
		if (m[0][0] < 0) r = -2;
		}
	else {
		if (m[i][i] < 0) return 0;
		if ((m[i][i] == 0) && (abs(cast(int)r) == 2)) r /= 2;
		}
	if (m[i][i] == 0) {
		/* przewartościowanie minora na pomocą operacji elementarnej
		 * niezmienniczej względem wyznacznika całej macierzy; 
		 * ta operacja zmienia minory(!), ale jest wykonywana tylko w przypadku
		 * wykluczenia dodatniej i ujemnej określoności */
		
		/* powtórzenie testu na określoność ze względu na modyfikację minora */
		
		}
	}
return r;
}
