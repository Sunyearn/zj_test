1. *_2D_AGPR_TR_*.h5
/TR/CTx:    the horizontal coordinates of transmitters
/TR/CTz:    the vertical coordinates of transmitters
/TR/CRx:    the horizontal coordinates of transmitters
/TR/CRz:    the vertical coordinates of transmitters
/TR/Current:    the vertical coordinates of transmitters

2. *_2D_AGPR_model_*.h5
/mesh_grid/coor_n_x:   coordinates in horizontal direction for mesh grid
/mesh_grid/coor_n_z:   coordinates in vertical direction for mesh grid
/model/ds:                     uniform grid step for electromagnetic forward modeling
/model/dt:                     time step for electromagnetic forward modeling
/model/time_axis:         time axis for electromagnetic forward modeling

/model/air_ice_interface_coor:    the coordinates for delineating the air-ice interface
/model/ice_rock_interface_coor: the coordinates for delineating the ice-rock interface

/model/muR:         the relative permeability of synthetic model
/model/epsilonR:  the relative permittivity of synthetic model
/model/sigmaE:     the electric conductivity (σ^e) of synthetic model
/model/sigmaM:    the equivalent magnetic loss (σ^m) of synthetic model


3. *_2D_AGPR_fwd_*.h5
/fwd/echo_signals:  electromagnetic forward modeling results of AGPR surveys.

4. p-codes for perspective Back-projection algoithm
explanation.m
judge_geometry_refraction_2D_example.p
judge_intersection.p