Set-Location (Resolve-Path(($PSScriptRoot | Split-Path -Parent)+"/test"))

pdflatex test.tex
pdflatex test.tex
Start-Process test.pdf
