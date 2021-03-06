list(APPEND fms_src_files
    FMS/amip_interp/amip_interp.F90
    FMS/astronomy/astronomy.F90
    FMS/axis_utils/axis_utils.F90
    FMS/axis_utils/axis_utils2.F90
    FMS/block_control/block_control.F90
    FMS/column_diagnostics/column_diagnostics.F90
    FMS/constants/constants.F90
    FMS/coupler/atmos_ocean_fluxes.F90
    FMS/coupler/coupler_types.F90
    FMS/coupler/ensemble_manager.F90
    FMS/data_override/data_override.F90
    FMS/diag_integral/diag_integral.F90
    FMS/diag_manager/diag_axis.F90
    FMS/diag_manager/diag_data.F90
    FMS/diag_manager/diag_grid.F90
    FMS/diag_manager/diag_manager.F90
    FMS/diag_manager/diag_output.F90
    FMS/diag_manager/diag_table.F90
    FMS/diag_manager/diag_util.F90
    FMS/drifters/cloud_interpolator.F90
    FMS/drifters/drifters.F90
    FMS/drifters/drifters_comm.F90
    FMS/drifters/drifters_core.F90
    FMS/drifters/drifters_input.F90
    FMS/drifters/drifters_io.F90
    FMS/drifters/quicksort.F90
    FMS/exchange/stock_constants.F90
    FMS/exchange/xgrid.F90
    FMS/field_manager/field_manager.F90
    FMS/field_manager/fm_util.F90
    FMS/fms/fms.F90
    FMS/fms/fms_io.F90
    FMS/fms2_io/blackboxio.F90
    FMS/fms2_io/fms2_io.F90
    FMS/fms2_io/fms_io_utils.F90
    FMS/fms2_io/fms_netcdf_domain_io.F90
    FMS/fms2_io/fms_netcdf_unstructured_domain_io.F90
    FMS/fms2_io/netcdf_io.F90
    FMS/horiz_interp/horiz_interp.F90
    FMS/horiz_interp/horiz_interp_bicubic.F90
    FMS/horiz_interp/horiz_interp_bilinear.F90
    FMS/horiz_interp/horiz_interp_conserve.F90
    FMS/horiz_interp/horiz_interp_spherical.F90
    FMS/horiz_interp/horiz_interp_type.F90
    FMS/interpolator/interpolator.F90
    FMS/memutils/memutils.F90
    FMS/monin_obukhov/monin_obukhov.F90
    FMS/monin_obukhov/monin_obukhov_kernel.F90
    FMS/mosaic/gradient.F90
    FMS/mosaic/grid.F90
    FMS/mosaic/mosaic.F90
    FMS/mosaic/mosaic2.F90
    FMS/mpp/mpp.F90
    FMS/mpp/mpp_data.F90
    FMS/mpp/mpp_domains.F90
    FMS/mpp/mpp_efp.F90
    FMS/mpp/mpp_io.F90
    FMS/mpp/mpp_memutils.F90
    FMS/mpp/mpp_parameter.F90
    FMS/mpp/mpp_pset.F90
    FMS/mpp/mpp_utilities.F90
    FMS/platform/platform.F90
    FMS/random_numbers/MersenneTwister.F90
    FMS/random_numbers/random_numbers.F90
    FMS/sat_vapor_pres/sat_vapor_pres.F90
    FMS/sat_vapor_pres/sat_vapor_pres_k.F90
    FMS/time_interp/time_interp.F90
    FMS/time_interp/time_interp_external.F90
    FMS/time_interp/time_interp_external2.F90
    FMS/time_manager/get_cal_time.F90
    FMS/time_manager/time_manager.F90
    FMS/topography/gaussian_topog.F90
    FMS/topography/topography.F90
    FMS/tracer_manager/tracer_manager.F90
    FMS/tridiagonal/tridiagonal.F90

    FMS/mosaic/create_xgrid.c
    FMS/mosaic/gradient_c2l.c
    FMS/mosaic/interp.c
    FMS/mosaic/mosaic_util.c
    FMS/mosaic/read_mosaic.c
    FMS/mpp/mpp_memuse.c
    FMS/mpp/nsclock.c
    FMS/mpp/threadloc.c
)
