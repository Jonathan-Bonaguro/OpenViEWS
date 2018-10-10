-- Generated by hand
DROP TABLE IF EXISTS preflight.flight_cy;
CREATE TABLE preflight.flight_cy AS
WITH cy AS
  (
      SELECT
        year_id,
        cy.country_id,
        public.country_id_to_gwcode(cy.country_id::int) AS gwcode,
        cy.v2x_accex,
        cy.v2x_lgdivparctrl,
        cy.ssp2_compl_low_sec_female_20_24,
        cy.ssp2_compl_low_sec_male_20_24,
        cy.ssp2_compl_post_sec_female_20_24,
        cy.ssp2_compl_post_sec_male_20_24,
        cy.ssp2_compl_upp_sec_female_20_24,
        cy.ssp2_compl_upp_sec_male_20_24,
        cy.ssp2_totshlowersec2024,
        cy.ssp2_totshnoedu2024,
        cy.ssp2_totshuppersec2024,
        cy.fvp_timesinceregimechange2,
        cy.v2x_polyarchy_li,
        cy.fvp_lngdp200_li,
        cy.fvp_lngdppercapita200_li,
        cy.fvp_ltsc0_li,
        cy.fvp_population200_li,
        cy.v2x_libdem_li,
        cy.fvp_timeindep,
        cy.fvp_timesincepreindepwar,
        cy.fvp_totshlowersec2024ssp2,
        cy.fvp_totshnoedu2024ssp2,
        cy.fvp_totshuppersec2024ssp2,
        cy.fvp_lnpop200,
        cy.fvp_timesinceregimechange,
        cy.fvp_grgdpcap_oilrent,
        cy.fvp_grgdpcap_nonoilrent,
        cy.fvp_oilunitrent,
        cy.fvp_oilprodcost,
        cy.fvp_oilprod,
        cy.fvp_bdbest_tot,
        cy.fvp_conflict,
        cy.fvp_dec60,
        cy.fvp_dec70,
        cy.fvp_dec80,
        cy.fvp_dec90,
        cy.fvp_durable,
        cy.fvp_auto,
        cy.fvp_demo,
        cy.fvp_democracy,
        cy.fvp_electoral,
        cy.fvp_liberal,
        cy.fvp_participatory,
        cy.fvp_regime3c,
        cy.fvp_semi,
        cy.fvp_grgdppercapita200,
        cy.fvp_grpop200,
        cy.fvp_indepyear,
        cy.fvp_lngdp200,
        cy.fvp_lngdpcap_nonoilrent,
        cy.fvp_lngdpcap_oilrent,
        cy.fvp_lngdppercapita200,
        cy.fvp_ltsc0,
        cy.fvp_ltsc1,
        cy.fvp_ltsc2,
        cy.fvp_nv_agr_totl_zs,
        cy.fvp_oilrent,
        cy.fvp_polity2,
        cy.fvp_population200,
        cy.fvp_prop_discriminated,
        cy.fvp_prop_dominant,
        cy.fvp_prop_excluded,
        cy.fvp_prop_irrelevant,
        cy.fvp_prop_powerless,
        cy.fvp_sp_dyn_imrt_in,
        cy.fvp_sp_dyn_tfrt_in,
        cy.ssp1_edu_sec_15_24_prop,
        cy.ssp1_fem_male_ratio_sec,
        cy.ssp1_non_workagepopprop,
        cy.ssp1_pop_iiasa,
        cy.ssp1_sec_edu_prop,
        cy.ssp2_edu_sec_15_24_prop,
        cy.ssp2_fem_male_ratio_sec,
        cy.ssp2_gdp_ppp_iiasa,
        cy.ssp2_gdp_ppp_oecd,
        cy.ssp2_gdppercap_iiasa,
        cy.ssp2_gdppercap_oecd,
        cy.ssp2_non_workagepopprop,
        cy.ssp2_pop_iiasa,
        cy.ssp2_sec_edu_prop,
        cy.ssp2_urban_share_iiasa,
        cy.ssp2_compl_prim_female_20_24,
        cy.ssp2_compl_prim_male_20_24,
        cy.ssp2_dep_ratio,
        cy.ssp2_f_lowsec_20_24,
        cy.ssp2_f_uppsec_20_24,
        cy.ssp2_incompl_prim_female_20_24,
        cy.ssp2_incompl_prim_male_20_24,
        cy.ssp2_m_lowsec_20_24,
        cy.ssp2_m_uppsec_20_24,
        cy.ssp2_non_workagepoptot,
        cy.ssp2_tot_f_pop,
        cy.ssp2_tot_lowsec_20_24,
        cy.ssp2_tot_m_pop,
        cy.ssp2_tot_noedu_20_24,
        cy.ssp2_tot_pop,
        cy.ssp2_tot_pop_15_19,
        cy.ssp2_tot_pop_20_24,
        cy.ssp2_tot_pop_above_65,
        cy.ssp2_tot_pop_below_15,
        cy.ssp2_tot_uppsec_20_24,
        cy.ssp2_workagepoptot,
        cy.ssp2_youth_bulges,
        cy.ssp2_mmnyrsschool2024,
        cy.ssp2_mnyrsschool2024,
        cy.ssp2_mshlowersec2024,
        cy.ssp2_mshnoedu2024,
        cy.ssp2_mshuppersec2024,
        cy.ssp2_ymhep,
        cy.ssp2_fmnyrsschool2024,
        cy.ssp2_fshlowersec2024,
        cy.ssp2_fshnoedu2024,
        cy.ssp2_fshuppersec2024,
        cy.ssp3_edu_sec_15_24_prop,
        cy.ssp3_fem_male_ratio_sec,
        cy.ssp3_non_workagepopprop,
        cy.ssp3_pop_iiasa,
        cy.ssp3_sec_edu_prop,
        cy.ssp4_edu_sec_15_24_prop,
        cy.ssp4_fem_male_ratio_sec,
        cy.ssp4_non_workagepopprop,
        cy.ssp4_pop_iiasa,
        cy.ssp4_sec_edu_prop,
        cy.ssp5_edu_sec_15_24_prop,
        cy.ssp5_fem_male_ratio_sec,
        cy.ssp5_non_workagepopprop,
        cy.ssp5_pop_iiasa,
        cy.ssp5_sec_edu_prop,
        cy.v2x_api,
        cy.v2x_civlib,
        cy.v2x_clphy,
        cy.v2x_clpol,
        cy.v2x_clpriv,
        cy.v2x_corr,
        cy.v2x_cspart,
        cy.v2x_delibdem,
        cy.v2x_edcomp_thick,
        cy.v2x_egal,
        cy.v2x_egaldem,
        cy.v2x_elecreg,
        cy.v2x_execorr,
        cy.v2x_feduni,
        cy.v2x_frassoc_thick,
        cy.v2x_freexp,
        cy.v2x_freexp_thick,
        cy.v2x_gencl,
        cy.v2x_gencs,
        cy.v2x_gender,
        cy.v2x_genpp,
        cy.v2x_hosinter,
        cy.v2x_jucon,
        cy.v2x_libdem,
        cy.v2x_liberal,
        cy.v2x_mpi,
        cy.v2x_partip,
        cy.v2x_partipdem,
        cy.v2x_polyarchy,
        cy.v2x_pubcorr,
        cy.v2x_suffr,
        cy.v2x_cl_rol,
        cy.v2x_cs_ccsi,
        cy.v2x_dd_dd,
        cy.v2x_dl_delib,
        cy.v2x_eg_eqdr,
        cy.v2x_eg_eqprotec,
        cy.v2x_el_elecparl,
        cy.v2x_el_elecpres,
        cy.v2x_el_frefair,
        cy.v2x_el_locelec,
        cy.v2x_el_regelec,
        cy.v2x_ex_elecreg,
        cy.v2x_lg_elecreg,
        cy.v2x_lg_legcon,
        cy.v2x_lg_leginter,
        cy.v2x_me_altinf,
        cy.v2x_ps_party
      FROM staging.country_year AS cy
      WHERE (cy.country_id = c.country_id)
  )
SELECT
  cy.*,
  c.name
FROM cy, staging.country as c WHERE cy.country_id=c.id;