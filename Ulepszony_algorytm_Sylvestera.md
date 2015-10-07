# Wprowadzenie #

Algorytm Sylvestera, oparty na analogicznym twierdzeniu zwanym "kryterium Sylvestera", służy do wyznaczania typu określoności formy kwadratowej, opisanej macierzą symetryczną. Treść twierdzenia podaje, że w celu sprawdzenia dodatniej określoności należy obliczyć wyznaczniki wszystkich głównych minorów przekątniowych danej macierzy. W celu sprawdzenia nieujemnej określoności, należy ponadto obliczyć wyznaczniki wszystkich minorów przekątniowych chyba, że forma jest dodatnio określona. Analogicznie należy postąpić w przypadku sprawdzania ujemnej/niedodatniej określoności.

Liczba _p_<sub>k</sub> wykonywanych mnożeń przy obliczaniu wyznaczników wprost z definicji (z rozwinięć Laplace'a) jest określona przez wzór rekurencyjny _p_<sub>1</sub> = 0, _p_<sub>k+1</sub> = (_k_+1)_p_<sub>k</sub>+_k_+1, gdzie _k_ jest wymiarem sprawdzanego minora. Zauważmy, że każdy wyraz tego ciągu powstaje m. in. przez pomnożenie wyrazu poprzedniego przez pewien liniowy czynnik zależny liniowo od _k_ taki, że gdy _k_ dąży do nieskończoności, to ten czynnik również dąży do nieskończoności. Stąd można wywnioskować, że obliczanie wyznacznika metodą Laplace'a działa w czasie _O_(_k_!). Jeżeli macierz jest wymiaru _n_, to liczba wykonywanych mnożeń w algorytmie Sylvestera jest równa dokładnie sumie _p_<sub>1</sub>+_p_<sub>2</sub>+...+_p_<sub>n</sub>. Taka złożoność czasowa jest nieakceptowalna. Wobec tego należy dążyć do uzyskania algorytmu o lepszej złożności czasowej, korzystając z własności wyznacznika macierzy.


# Zmodyfikowana eliminacja Gaussa (diagonalizacja symetryczna) #
