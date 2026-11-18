# ⚡ par-fib · Paral·lelisme i Rendiment

> **Laboratoris de programació paral·lela, vectorització i anàlisi de rendiment de l'assignatura Paral·lelisme (PAR) del Grau en Enginyeria Informàtica a la Facultat d'Informàtica de Barcelona (UPC · FIB).**

[![Language](https://img.shields.io/badge/Language-C-A8B9CC?style=for-the-badge&logo=c&logoColor=black)](https://en.wikipedia.org/wiki/C_(programming_language))
[![API](https://img.shields.io/badge/API-OpenMP-005571?style=for-the-badge)](https://www.openmp.org)
[![University](https://img.shields.io/badge/UPC-FIB-0070BA?style=for-the-badge)](https://www.fib.upc.edu)

---

## 📚 Blocs i Continguts

- **Lab 1: Paral·lelisme de Tasques & Tareador:**
  - Anàlisi del graf de dependències de dades amb Tareador.
  - Implementació de tasques explícites i implícites en paral·lel (`3dfft`).
- **Lab 2: Programació Paral·lela amb OpenMP:**
  - Directives `#pragma omp parallel for`, clàusules de compartició (`shared`, `private`, `reduction`).
  - Planificació de bucles (`schedule(static, chunk)`, `schedule(dynamic)`).
- **Lab 3: Anàlisi d'Escalabilitat i Speedup:**
  - Mesures de temps d'execució, càlcul d'acceleració (*speedup* lineal i sublineal).
  - Optimització d'accessos a memòria cau (*cache misses*).

---

## 🛠️ Compilació amb OpenMP

```bash
gcc -O3 -fopenmp -Wall programa_omp.c -o programa_omp
OMP_NUM_THREADS=4 ./programa_omp
```
