baremodule Fuzzy

# We use the name `eval`, which is ordinarily reserved for the implicitly
# added eval/include functions. To avoid having julia add these names, we
# use `baremodule` above and add back the Base imports here.
using Base
include(args...) = Base.include(Fuzzy, args...)

export TriangularMF, GaussianMF, BellMF, TrapezoidalMF, SigmoidMF

export Rule, FISMamdani, FISSugeno

export mean_at, eval_fis

export chart_prepare

export minimum_value, algebraic_product, bounded_difference, drastic_product, einstein_product, hamacher_product

export maximum_value, algebraic_sum, bounded_sum, drastic_sum, einstein_sum, hamacher_sum

export MFDict

# T-Norm
include("T-norm.jl")

# S-Norm
include("S-norm.jl")

# Membership functions
include("MF.jl")

# Membership functions evaluations
include("EvalMF.jl")

# FIS
include("FIS.jl")

# Evaluation functions
include("Eval.jl")

#Dots function
include("DotsMF.jl")

MFDict = Dict{String,MF}

end
