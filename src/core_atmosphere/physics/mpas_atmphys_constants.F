! Copyright (c) 2013,  Los Alamos National Security, LLC (LANS)
! and the University Corporation for Atmospheric Research (UCAR).
!
! Unless noted otherwise source code is licensed under the BSD license.
! Additional copyright and license information can be found in the LICENSE file
! distributed with this code, or at http://mpas-dev.github.com/license.html
!
!=================================================================================================================
 module mpas_atmphys_constants
 use mpas_kind_types
 use mpas_constants, only : pii, cp, gravity, R_d => rgas, rvord

 implicit none
 public
 save

 
!defines the constants needed for the physics parameterizations.
!Laura D. Fowler (send comments to laura@ucar.edu).
!2013-05-01.
!
! add-ons and modifications to sourcecode:
! ----------------------------------------
! * Replaced the variable g (that originally pointed to gravity) with gravity, for simplicity.
!   Laura D. Fowler (laura@ucar.edu) / 2014-03-21.
! * Removed the constraint of only using RKIND from mpas_kind_types.
!   Laura D. Fowler (laura@ucar.edu) / 2014-09-18.
! * added empty subroutine atmphys_constants_init that does not do anything, but needed for 
!   compiling MPAS with some compilers.
!   Laura D. Fowler (laura@ucar.edu) / 2015-01-12.
! * added the variable rvord needed in the MYNN planetary boundary layer scheme from WRF 3.8.
!   Laura D. Fowler (laura@ucar.edu) / 2016-04-14. 

 
!=================================================================================================================

 real(kind=RKIND),parameter:: c0      = 0.00000
 real(kind=RKIND),parameter:: c1      = 1.00000

 real(kind=RKIND),parameter:: P0      = 100000.         !reference pressure                                   [Pa]
 real(kind=RKIND),parameter:: t00     = 273.15          !reference temperarure                                 [K] 
 real(kind=RKIND),parameter:: R_v     = 461.6           !gas constant for water vapor                     [J/kg/K]
 real(kind=RKIND),parameter:: ep_1    = R_v/R_d-1.
 real(kind=RKIND),parameter:: ep_2    = R_d/R_v
 real(kind=RKIND),parameter:: cpv     = 4.*R_v
 real(kind=RKIND),parameter:: rdg     = R_d/gravity
 real(kind=RKIND),parameter:: rcp     = R_d/cp
 real(kind=RKIND),parameter:: rcv     = R_d/(cp-R_d)

 real(kind=RKIND),parameter:: rho_a   = 1.28
 real(kind=RKIND),parameter:: rho_r   = 1000.0
 real(kind=RKIND),parameter:: rho_s   = 100.0
 real(kind=RKIND),parameter:: rho_w   = 1000.0

 real(kind=RKIND),parameter:: svp1    = 0.6112
 real(kind=RKIND),parameter:: svp2    = 17.67
 real(kind=RKIND),parameter:: svp3    = 29.65
 real(kind=RKIND),parameter:: svpt0   = 273.15

 real(kind=RKIND),parameter:: xlv     = 2.50e6          !latent heat of vaporization                        [J/kg]
 real(kind=RKIND),parameter:: xlf     = 3.50e5          !latent heat of fusion                              [J/kg]
 real(kind=RKIND),parameter:: xls     = xlv + xlf       !latent heat of sublimation                         [J/kg]

 real(kind=RKIND),parameter:: xlv0    = 3.15e6        
 real(kind=RKIND),parameter:: xlv1    = 2370.
 real(kind=RKIND),parameter:: xls0    = 2.905e6
 real(kind=RKIND),parameter:: xls1    = 259.532
 
 real(kind=RKIND),parameter:: karman  = 0.4             !Von Karman constant
 real(kind=RKIND),parameter:: eomeg   = 7.29210e-5
 real(kind=RKIND),parameter:: stbolt  = 5.67051e-8

 real(kind=RKIND),parameter:: cliq    = 4190.
 real(kind=RKIND),parameter:: cice    = 2106.
 real(kind=RKIND),parameter:: epsilon = 1.e-15
 real(kind=RKIND),parameter:: psat    = 610.78

 real(kind=RKIND),parameter:: re_qc_bg = 2.49e-6        ! effective radius of cloud water for background (m)
 real(kind=RKIND),parameter:: re_qi_bg = 4.99e-6        ! effective radius of cloud ice for background (m)
 real(kind=RKIND),parameter:: re_qs_bg = 9.99e-6        ! effective radius of snow for background (m)

 real(kind=RKIND),parameter:: re_qc_max = 50.e-6        ! maximum effective radius of cloud water (m)
 real(kind=RKIND),parameter:: re_qi_max = 125.e-6       ! maximum effective radius of cloud ice (m)
 real(kind=RKIND),parameter:: re_qs_max = 999.e-6       ! maximum radius of snow (m)

!constants specific to long- and short-wave radiation codes:
!real(kind=RKIND),parameter:: solcon_0 = 1365.          !solar constant                                     [W/m2]
 real(kind=RKIND),parameter:: solcon_0 = 1370.          !solar constant                                     [W/m2]
 real(kind=RKIND),parameter:: degrad   = 3.1415926/180. !conversion from degree to radiant                     [-]
 real(kind=RKIND),parameter:: dpd      = 360./365.

 REAL(kind=RKIND), PARAMETER :: p1000mb      = 100000.    ! pressure at 1000 hPa (pa)

 contains

!=================================================================================================================
 subroutine atmphys_constants_init()
!=================================================================================================================
!dummy subroutine that does not do anything.

 end subroutine atmphys_constants_init

!=================================================================================================================
 end module mpas_atmphys_constants
!=================================================================================================================
