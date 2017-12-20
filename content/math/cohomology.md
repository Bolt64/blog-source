title: Cohomology as a measure of local to global failure
slug: cohomology-local-global
tags: cohomology, sheaves
category: mathematics
date: 20-12-2017

## Motivation for cohomology
In most introductory algebraic topology courses, cohomology is rather poorly
motivated. It's most commonly seen form in an algebraic topology course
is singular cohomology, which
arises as a the homology of the dual of the singular chain complex,
but that doesn't really tell you why it's of any more interest than singular
homology, aside from the fact that you get an additional cup product which
you did not have before. However, this approach obscures the geometric meaning
of cohomology. 

A much more intuitive introduction to cohomology turns out
to be De Rham cohomology, often encountered in introductory differential
geometry courses. Loosely speaking, De Rham cohomology measures
in how many different ways can a closed form fail to be exact.

Another cohomology theory we'll look at is sheaf cohomology. Loosely,
the cohomology of a sheaf measures how a certain functor $\Gamma$, which
we'll define later fails to be an exact functor. 

In the case of De Rham cohomology,
we'll interpret the form being closed as a local property, and it being exact a global property,
and the the case of sheaf cohomology, the exactness of the following sequence (the 
exact details of which we'll see in a later section) as a local property.
$$0 \rightarrow \mathcal{S_1} \rightarrow \mathcal{S_2}\rightarrow \mathcal{S_3} \rightarrow 0$$
The exactness of the sequence we get by applying $\Gamma$ to the above sequence turns
out to be a global property.

In both the cases, the cohomology measures how the local property fails to translate to the
global one.

## De Rham Cohomology
The De Rham cohomology of a manifold $M$ (of dimension $m$) is the homology of the following of the following
cochain sequence.
$$0 \xrightarrow{d} \Lambda^0(M) \xrightarrow{d} \Lambda^1(M) \xrightarrow{d} \cdots \xrightarrow{d} \Lambda^m(M) \xrightarrow{d} 0$$
Here, $\Lambda^k(M)$ is the space of $k$-forms on $M$,  and $d$ is the exterior derivative operator.
For a $k$-form $\omega$ to be closed, $d\omega$ must be $0$. This is a local property, in the sense that
$d\omega$ evaluated at any point $p \in M$ depends only on the value of $\omega$ on any small neighbourhood of $p$.
In fact, one can say a little more, and claim that $d\omega(p)$ depends only on the *germ* of $\omega$ at $p$.
If we pick a Euclidean neighbourhood $U$ of $p$ which is homeomorphic to the open unit ball, the Poincaré lemma
tells us that there is some $(k+1)$-form $\eta$ defined on $U$ such that $\omega = d\eta$. In
other words, the closed form $\omega$ is locally exact.

The De Rham cohomology class of $\omega$ measures how badly does the property of local exactness
fail to translate to global exactness. We can write $\omega$ as $\gamma + d\zeta$, where $\gamma$
is the canonical representative of the cohomology class of $\omega$ (more on this in later posts),
and $\zeta$ is a $(k-1)$-form. If we stretch the analogy a bit, we can say $\omega$ misses being globally
exact by $\gamma$ amount. This is the first example of how cohomology measures how badly a local
property fails to be global.

## Sheaf Cohomology
