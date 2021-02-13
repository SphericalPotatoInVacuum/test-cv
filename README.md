# Домшечка по НИСочку для тестирования компиляции резюмешечки

### ФИО: Богданов Александр Дмитриевич, БПМИ-195



# Test cv action

This actions checks if your cv can be built using pdflatex

## Inputs

### `filename`

**Required** The filename of your resume with path. Default `"CV/cv.tex"`.
Please be aware that all dependencies should be in the same folder as your cv.

## Example usage

```
uses: actions/test-cv@v1
with:
  filename: 'CV/Bogdanov.tex'
```
