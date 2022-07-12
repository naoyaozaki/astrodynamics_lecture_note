""" Lambert's Problem Solver in Julia
"""
# ----------------------------------------------------------------
__author__ = "Naoya Ozaki"
__affiliation__ = "Institute of Space and Astronautical Science, \
                   Japan Aerospace Exploration Agency"
__email__ = "ozaki.naoya@jaxa.jp"
__date__ = "12 July 2022"
__version__ = "0.0.1"
__status__ = "Development"
__copyright__ = "Copyright 2022, nomad project"
# ----------------------------------------------------------------
# ----------------------------------------------------------------

include("./lambert_problem.jl")
using .TwobodyProblem

import SPICE

# Load generic kernels
SPICE.furnsh("/Users/naoya/Google Drive/21_Programming/SPICE/generic_kernels/lsk/naif0012.tls") # Leap seconds kernel
SPICE.furnsh("/Users/naoya/Google Drive/21_Programming/SPICE/generic_kernels/pck/gm_de431.tpc") # Gravity Constant
SPICE.furnsh("/Users/naoya/Google Drive/21_Programming/SPICE/generic_kernels/spk/planets/de440.bsp") # Planetary ephemeris kernel

# 重力定数
μ = SPICE.bodvrd("SUN", "GM", 1)[1];

# 飛行時間
et1 = SPICE.str2et("2031/03/01 00:00:00 UTC") # 地球出発日時, UTC
et2 = SPICE.str2et("2032/01/01 00:00:00 UTC") # 火星到着日時, UTC
tof = et2 - et1 # 飛行時間

#　地球・火星軌道
state_earth, _ = SPICE.spkez(399, et1, "ECLIPJ2000", "NONE", 10)
state_mars, _ = SPICE.spkez(4, et2, "ECLIPJ2000", "NONE", 10)

r1 = state_earth[1:3]
r2 = state_mars[1:3]

# ランベール問題を解く
v1, v2, num_sol = lambert_problem(r1,r2,tof,μ,2)

println(v1,v2,μ)