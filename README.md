
# Setup

Clone this package somewhere 

```bash
git clone https://github.com/QuantumManyBody/DMMS
```

Make sure that you are at project root

```bash
cd DMMS
```

# View

To serve the webpage locally, at the project root, run

```bash
julia --project=. test/runtests.jl
```

You can view the book at `http://localhost:8001/`.


# Edit

First, create a new branch before your edit.

The markdown files that you will edit are in `test/symmetry` and `test/model`.
The browser should pickup your change every time you write to disk. You can
refer to `test/symmetry/lattice.md` for the syntax.

There is an outline provided for you, but you are encouraged to dismiss it and 
write what you see fit.

Once you are done, make a pull request to the main branch.

# References

You can add references to `test/references.json`. Zotero or papis should be
able to export the citation information in json.

# Figures

Place your figures in `docs/assets/<your_chapter>`. Vector graphics or plots
are prefered over having no picture, which is better than screenshots or
unpleasant pictures.

