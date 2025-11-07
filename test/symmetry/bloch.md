## Translation operator

### Notation

In this section, we introduce Bloch’s theorem, which is a direct consequence of
the lattice periodicity of the potential energy in crystalline solids. This
theorem provides the foundation for defining Bloch waves and, later, Wannier
functions.

Consider the single-particle Hamiltonian in $d$-dimensional Euclidean space:

$$
\begin{equation}
H = -\frac{\hbar^{2}}{2m}\nabla^{2} + V(\vec{r}),
\label{eqn:bloch-hamiltonian}
\end{equation}
$$

where the potential $V(\vec{r})$ is periodic with respect to a Bravais lattice
$\mathbb{L} \subset \mathbb{R}^d$.

Let $\{\vec{a}_1, \dots, \vec{a}_d\}$ denote a set of linearly independent
primitive lattice vectors, so that each lattice point can be written as

$$
\begin{equation}
\vec{R} = \sum_{i=1}^d n_i \vec{a}_i, \quad n_i \in \mathbb{Z}.
\end{equation}
$$

The lattice periodicity of the potential is expressed as

$$
\begin{equation}
V(\vec{r} + \vec{R}) = V(\vec{r}), \quad \forall \, \vec{R} \in \mathbb{L}.
\label{eqn:potential-periodicity}
\end{equation}
$$


### Translation operator

We define the **translation operator** $T_{\vec{R}}$, which acts on a wavefunction
$\psi(\vec{r})$ as

$$
\begin{equation}
(T_{\vec{R}} \psi)(\vec{r}) = \psi(\vec{r} + \vec{R}).
\label{eqn:translation-operator}
\end{equation}
$$

The set of all such operators $\{T_{\vec{R}} \mid \vec{R} \in \mathbb{L}\}$ forms an
Abelian group isomorphic to the lattice $\mathbb{L}$.

Our goal is to solve the stationary Schrödinger equation

$$
\begin{equation}
H \psi(\vec{r}) = E \psi(\vec{r}),
\label{eqn:schrodinger}
\end{equation}
$$

and determine how the lattice periodicity of $V$ constrains the form of
$\psi$.

---

### Lemma: Translations commute with the Hamiltonian

{#bloch-lemma}
!!! theorem

    **Lemma.**  
    For every lattice translation $\vec{R} \in \mathbb{L}$, the operator $T_{\vec{R}}$
    commutes with the Hamiltonian $H$:

    $$
    \begin{equation}
    [H, T_{\vec{R}}] = 0.
    \label{eqn:commutation}
    \end{equation}
    $$

    **Proof.**  
    The kinetic energy operator $\hat{T} = -\frac{\hbar^2}{2m}\nabla^2$ is
    translation-invariant because derivatives are unaffected by constant shifts:

    $$
    \begin{equation}
    \nabla^2[\psi(\vec{r}+\vec{R})] = [\nabla^2 \psi](\vec{r}+\vec{R}),
    \end{equation}
    $$

    hence $[\hat{T}, T_{\vec{R}}] = 0$.  
    Using Eq. \eqref{eqn:potential-periodicity}, the potential also satisfies
    $V(\vec{r}+\vec{R}) = V(\vec{r})$, so that

    $$
    \begin{equation}
    H (T_{\vec{R}} \psi)(\vec{r}) = T_{\vec{R}} (H \psi)(\vec{r}),
    \end{equation}
    $$
    
    which proves Eq. \eqref{eqn:commutation}.
    

---

### Properties of the translation operator

The translation operator $T_{\vec{R}}$ has the following useful properties:

1. **Unitarity.**

   $$
   \begin{equation}
   \langle T_{\vec{R}}\psi \mid T_{\vec{R}}\phi \rangle = \langle \psi \mid \phi \rangle,
   \end{equation}
   $$

   which can be shown by the change of variables $\vec{r}' = \vec{r} + \vec{R}$.

2. **Adjoint property.**

   $$
   \begin{equation}
   T_{\vec{R}}^\dagger = T_{-\vec{R}}, \quad
   T_{\vec{R}}^\dagger T_{\vec{R}} = I.
   \end{equation}
   $$

---

### Simultaneous eigenstates of $H$ and $T_{\vec{R}}$

Because $H$ and $T_{\vec{R}}$ commute, they admit a common eigenbasis. Let
$\psi(\vec{r})$ be an eigenfunction of $T_{\vec{R}}$ with eigenvalue
$c(\vec{R})$:

$$
\begin{equation}
T_{\vec{R}} \psi(\vec{r}) = c(\vec{R}) \psi(\vec{r}),
\quad |c(\vec{R})| = 1.
\label{eqn:translation-eigen}
\end{equation}
$$

The group property
$T_{\vec{R}_1} T_{\vec{R}_2} = T_{\vec{R}_1 + \vec{R}_2}$ implies

$$
\begin{equation}
c(\vec{R}_1 + \vec{R}_2) = c(\vec{R}_1) c(\vec{R}_2),
\end{equation}
$$

and the continuous solutions of this functional equation are

$$
\begin{equation}
c(\vec{R}) = e^{-i \vec{k} \cdot \vec{R}},
\label{eqn:phase-eigenvalue}
\end{equation}
$$

where $\vec{k}$ is a real vector defined modulo any reciprocal lattice vector
$\vec{G} \in \mathbb{L}^*$.

---

## Bloch's Theorem

### Plane wave expansion

Consider the plane wave $e^{i \vec{l} \cdot \vec{r}}$.  
Acting with $T_{\vec{R}}$ yields

$$
\begin{equation}
T_{\vec{R}} e^{i \vec{l} \cdot \vec{r}}
= e^{i \vec{l} \cdot (\vec{r} - \vec{R})}
= e^{-i \vec{l} \cdot \vec{R}} e^{i \vec{l} \cdot \vec{r}},
\end{equation}
$$

so each plane wave is an eigenfunction of $T_{\vec{R}}$ with eigenvalue
$e^{-i \vec{l} \cdot \vec{R}}$.

Because the potential is periodic, momenta may be restricted to

$$
\begin{equation}
\vec{l} = \vec{k} + \vec{G}, \quad \vec{G} \in \mathbb{L}^*,
\end{equation}
$$

and since $e^{-i \vec{G} \cdot \vec{R}} = 1$ for all $\vec{R} \in \mathbb{L}$,
all plane waves of the form $e^{i (\vec{k} + \vec{G}) \cdot \vec{r}}$
share the same eigenvalue $e^{-i \vec{k} \cdot \vec{R}}$.

A general eigenstate of $T_{\vec{R}}$ can thus be expressed as

$$
\begin{equation}
\psi_{n\vec{k}}(\vec{r})
= \sum_{\vec{G}} \overline{U}_{n\vec{k}}(\vec{G}) \,
e^{i (\vec{k} + \vec{G}) \cdot \vec{r}}
= e^{i \vec{k} \cdot \vec{r}}
\underbrace{
\sum_{\vec{G}} \overline{U}_{n\vec{k}}(\vec{G}) e^{i \vec{G} \cdot \vec{r}}
}_{u_{n\vec{k}}(\vec{r})}.
\label{eqn:bloch-expansion}
\end{equation}
$$

The function $u_{n\vec{k}}(\vec{r})$ is **lattice-periodic** because
$e^{i \vec{G} \cdot (\vec{r} + \vec{R})} = e^{i \vec{G} \cdot \vec{r}}$, i.e.,

$$
\begin{equation}
u_{n\vec{k}}(\vec{r} + \vec{R}) = u_{n\vec{k}}(\vec{r}).
\end{equation}
$$

---

### Statement of Bloch’s theorem

{#bloch-theorem}
!!! theorem

    **Bloch’s theorem.**  
    For a Hamiltonian $H$ of the form in Eq. \eqref{eqn:bloch-hamiltonian},
    where the potential satisfies Eq. \eqref{eqn:potential-periodicity}, every
    eigenfunction $\psi_{n\vec{k}}$ of $H$ can be chosen as

    $$
    \begin{equation}
    \psi_{n\vec{k}}(\vec{r}) =
    e^{i \vec{k} \cdot \vec{r}} u_{n\vec{k}}(\vec{r}),
    \label{eqn:bloch-theorem}
    \end{equation}
    $$

    where $u_{n\vec{k}}(\vec{r})$ is periodic with the same lattice:

    $$
    u_{n\vec{k}}(\vec{r} + \vec{R}) = u_{n\vec{k}}(\vec{r}), \quad \forall \vec{R} \in \mathbb{L}.
    $$

    The wave vector $\vec{k}$ takes values in the first Brillouin zone
    $\Omega^*$ and is defined modulo reciprocal lattice vectors
    $\vec{G} \in \mathbb{L}^*$.


---

### Discussion

Equation \eqref{eqn:bloch-theorem} implies that the eigenstates of a
periodic Hamiltonian are **plane waves modulated by a periodic function**. The
periodic function $u_{n\vec{k}}(\vec{r})$ encodes the crystal’s internal
structure, while the phase factor $e^{i \vec{k} \cdot \vec{r}}$ carries the
crystal momentum. This result forms the basis for the concept of energy bands
in solid-state physics.

