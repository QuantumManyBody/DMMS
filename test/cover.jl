md"""
# Diagnostic Manual of Material Simulation

!!! warning
    
    The following practices are considered academic integrity violations.

    - Writing with LLMs.
    - Copying from textbooks.

    If you do not have the time, effort, or interest for this writing exercise,
    it is preferable to not write at all.
    

## Requirements 

Given a concept, there are three questions that we like to answer:

1. What is the physical context that makes it important?
2. How to formulate it with mathematical precision and clarity?
3. How to implement it algorithmically in practice?

You should answer one or more of these questions if you can unless you have better ideas.
What you should not do is to dismiss or evade these questions by writing things that make 
no sense.

### Notation

- Dynamic tensors: A tensor whose dimensions are variables or infinite such as $\mathbb{R}^{N \times N}$. 
    For such tensors, use a letter with no decoration such as $x$ or $T$. This includes scalar, vector, matrices, and higher dimensional tensors.
- Static tensors: A tensor whose dimensions are constants such as $\mathbb{R}^{4}$. 
    For such tensors, add an arrow on top of the letter. For example, $\vec{x}$ or $\vec{T}$. 
- Mixed tensors: 
    If a tensor has both static and dynamic dimensions such as $\mathbb{C}^{2 \times N}$, adopt the notation for static tensors.
- Fourier transforms: use a hat such as $\hat{\rho}$.
- Fourier series coefficients: use an overline such as $\overline{u}$.
- Field, Ring, Module, Group: use blackboard bold such as $\mathbb{Q}$.
- The reciprocal of an algebraic space: add a star such as $\mathbb{L}^*$.
- Quantum states: use braket notation such as $\ket{\psi}$.
- Cartesian inner product (dynamic): use braket notation $\bra{\psi}\ket{\phi}$ instead of math notation $\langle \psi, \phi \rangle$.
- Cartesian inner product (static): $\vec{u} \cdot \vec{v}$.
- Coulomb inner product (static): $(\psi| \phi)$.
- Outer product: $\ket{\psi}\bra{\phi}$ for quantum states and $\vec{u} \vec{v}^T$ for static vectors.
- Frobenius norm: $|\vec{r}|$.
- Partial derivatives: write $\partial \psi(k, r) / \partial r$, $\partial_r \psi(k, r)$, $D(r \mapsto \psi(k, r))(r)$
    or $\nabla_{\vec{r}} \psi(\vec{k}, \vec{r})$. Do not use $\psi_x$ or $\dot{\psi}$.
- Variational derivatives: write $\nabla J(\psi)$ instead of $\delta J(\psi) / \delta \psi$.
- Finite parameter: if the parameter is on a finite domain, use subscript such as $n$ in $\psi_{n k}(r)$.
- Infinite (possible countable) parameter: keep the parameter in parenthesis such as $P$ in $w_n(P, r)$.
- Summation: write explicit summations such as $\sum_i u_i v_i$. Avoid Einstein summation.
- Parenthesis: do not use $[]$ as parenthesis. Reserved them for commutators.
- Exceptions can be made on a case by case basis to be consistent with the literature.

"""
