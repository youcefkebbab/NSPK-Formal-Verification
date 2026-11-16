# NSPK-Formal-Verification
Formal security analysis of the Needham-Schroeder Public-Key Protocol using ProVerif, including Lowe's attack and protocol correction.
=======
# NSPK Formal Verification Using ProVerif

Academic project starter kit: original Needham–Schroeder Public-Key (NSPK), Lowe's attack, and Lowe's corrected variant.

**Important:** Run the `.pv` files with your installed ProVerif version. The `results/` folders contain instructions, not fabricated execution output. Formal conclusions apply only to the model and queries actually verified.

## Structure
- `models/original/NSPK_Original.pv`
- `models/improved/NSPK_Lowe_Fix.pv`
- `results/original/` and `results/improved/`
- `documentation/Technical_Report.md`
- `documentation/Presentation_Plan.md`
- `documentation/Oral_Defense_Questions.md`
- `screenshots/`
- `scripts/` PowerShell runners

## Tools
- ProVerif: https://bblanche.gitlabpages.inria.fr/proverif/
- VS Code: https://code.visualstudio.com/
- Optional Graphviz: https://graphviz.org/download/

## Run from PowerShell at the project root
```powershell
.\scripts\run-original.ps1 -ProVerifExe "C:\Tools\ProVerif\proverif.exe"
.\scripts\run-improved.ps1 -ProVerifExe "C:\Tools\ProVerif\proverif.exe"
```
Change the executable path to your actual installation path.

Original messages:
1. A -> B: `{Na,A}pkB`
2. B -> A: `{Na,Nb}pkA`
3. A -> B: `{Nb}pkB`

Lowe's fix adds B's identity to message 2: `{Na,Nb,B}pkA`.
