using TestToDoc

filepaths = [
    "test/cover.jl",

    # PART I: Symmetry
    "test/symmetry/lattice.md",
    "test/symmetry/bloch.md",
    "test/symmetry/discretization.md",
    "test/symmetry/wannier.md",

    # PART II: Models
    "test/model/tight_binding.md",
    "test/model/dft.md",
    "test/model/hubbard.md",
    "test/model/dqmc.md",
    "test/model/afqmc.md",
    "test/references.md",
    
    # PART III: 
    # "test/model/density_matrix_renormalization_group.md",
    # "test/model/periodic_hf.md",
    # "test/model/periodic_cc.md",
    # "test/model/greens_function.md",

    # PART IV: Phenomenon
    # "test/magnetism/",
    # "test/superconductivity/",
    # "test/quantum_hall_effect/",
    # "test/kondo_effect/",

]

watch!(filepaths; src="./test", port=8001)
