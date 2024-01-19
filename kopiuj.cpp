#include <iostream>
#include <fstream>
#include <chrono>

int main(int argc, char* argv[]) {
    const int rozmiar_bufora = std::stoi(argv[1]);
    const char* nazwa_pliku_src = argv[2];
    const char* nazwa_pliku_trg = argv[3];

    std::ifstream plik_src(nazwa_pliku_src, std::ios::binary);

    std::ofstream plik_trg(nazwa_pliku_trg, std::ios::binary);

    char* bufor = new char[rozmiar_bufora];

    auto start_time = std::chrono::high_resolution_clock::now();

    while (!plik_src.eof()) {
        plik_src.read(bufor, rozmiar_bufora);
        plik_trg.write(bufor, plik_src.gcount());
    }

    auto end_time = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();

    std::cout << "Czas kopiowania: " << duration << " ms\n";

    delete[] bufor;
    plik_src.close();
    plik_trg.close();

    return 0;
}
