#!/bin/bash


curl -sS 'https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_data'  --compressed > vaccine_data.json
curl -sS 'https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=US_MAP_DATA'  --compressed > infected.json


# Alaska Data
AK_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[0].Doses_Administered')
AK_inf=$(cat infected.json | jq -r '.US_MAP_DATA[0].tot_cases')
AK_dead=$(cat infected.json | jq -r '.US_MAP_DATA[0].tot_death')
AK_pop=731545

AK_recovered=$(($AK_inf - $AK_dead))
AK_herd=$(($AK_recovered + $AK_vac))
AK_herd_raw=$(echo "scale=4 ; $AK_herd / $AK_pop" | bc)
AK_herd_percent=$(echo "$AK_herd_raw * 100" | bc | sed 's/..$//')

echo "Alaska herd immunity $AK_herd_percent%" 

# Alabama Data

AL_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[1].Doses_Administered')
AL_inf=$(cat infected.json | jq -r '.US_MAP_DATA[1].tot_cases')
AL_dead=$(cat infected.json | jq -r '.US_MAP_DATA[1].tot_death')
AL_pop=4903185

AL_recovered=$(($AL_inf - $AL_dead))
AL_herd=$(($AL_recovered + $AL_vac))
AL_herd_raw=$(echo "scale=4 ; $AL_herd / $AL_pop" | bc)
AL_herd_percent=$(echo "$AL_herd_raw * 100" | bc | sed 's/..$//')

echo "Alabama herd immunity $AL_herd_percent%"


# Arkansas Data

AR_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[2].Doses_Administered')
AR_inf=$(cat infected.json | jq -r '.US_MAP_DATA[2].tot_cases')
AR_dead=$(cat infected.json | jq -r '.US_MAP_DATA[2].tot_death')
AR_pop=3017804

AR_recovered=$(($AR_inf - $AR_dead))
AR_herd=$(($AR_recovered + $AR_vac))
AR_herd_raw=$(echo "scale=4 ; $AR_herd / $AR_pop" | bc)
AR_herd_percent=$(echo "$AR_herd_raw * 100" | bc | sed 's/..$//')

echo "Arkansas herd immunity $AR_herd_percent%"


# American Samoa 
AS_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[3].Doses_Administered')
AS_inf=$(cat infected.json | jq -r '.US_MAP_DATA[3].tot_cases')
AS_dead=$(cat infected.json | jq -r '.US_MAP_DATA[3].tot_death')
AS_pop=55312

AS_recovered=$(($AS_inf - $AS_dead))
AS_herd=$(($AS_recovered + $AS_vac))
AS_herd_raw=$(echo "scale=4 ; $AS_herd / $AS_pop" | bc)
AS_herd_percent=$(echo "$AS_herd_raw * 100" | bc | sed 's/..$//')

echo "American Samoa herd immunity $AS_herd_percent%"

# Arizona
AZ_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[4].Doses_Administered')
AZ_inf=$(cat infected.json | jq -r '.US_MAP_DATA[4].tot_cases')
AZ_dead=$(cat infected.json | jq -r '.US_MAP_DATA[4].tot_death')
AZ_pop=7278717

AZ_recovered=$(($AZ_inf - $AZ_dead))
AZ_herd=$(($AZ_recovered + $AZ_vac))
AZ_herd_raw=$(echo "scale=4 ; $AZ_herd / $AZ_pop" | bc)
AZ_herd_percent=$(echo "$AZ_herd_raw * 100" | bc | sed 's/..$//')

echo "Arizona herd immunity $AZ_herd_percent%"

# BoP
BoP_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[5].Doses_Administered')
BoP_pop=173158

BoP_recovered=46992
BoP_herd=$(($BoP_vac + $BoP_recovered))
BoP_herd_raw=$(echo "scale=4 ; $BoP_herd / $BoP_pop" | bc)
BoP_herd_percent=$(echo "$BoP_herd_raw * 100" | bc | sed 's/..$//')

echo "Bureau of Prisons herd immunity $BoP_herd_percent%"


# California 
CA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[6].Doses_Administered')
CA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[5].tot_cases')
CA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[5].tot_death')
CA_pop=39512223

CA_recovered=$(($CA_inf - $CA_dead))
CA_herd=$(($CA_recovered + $CA_vac))
CA_herd_raw=$(echo "scale=4 ; $CA_herd / $CA_pop" | bc)
CA_herd_percent=$(echo "$CA_herd_raw * 100" | bc | sed 's/..$//')

echo "California herd immunity $CA_herd_percent%"

# Colorado
CO_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[7].Doses_Administered')
CO_inf=$(cat infected.json | jq -r '.US_MAP_DATA[6].tot_cases')
CO_dead=$(cat infected.json | jq -r '.US_MAP_DATA[6].tot_death')
CO_pop=5758736

CO_recovered=$(($CO_inf - $CO_dead))
CO_herd=$(($CO_recovered + $CO_vac))
CO_herd_raw=$(echo "scale=4 ; $CO_herd / $CO_pop" | bc)
CO_herd_percent=$(echo "$CO_herd_raw * 100" | bc | sed 's/..$//')

echo "Colorado herd immunity $CO_herd_percent%"

# Connecticut
CT_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[8].Doses_Administered')
CT_inf=$(cat infected.json | jq -r '.US_MAP_DATA[7].tot_cases')
CT_dead=$(cat infected.json | jq -r '.US_MAP_DATA[7].tot_death')
CT_pop=3565287

CT_recovered=$(($CT_inf - $CT_dead))
CT_herd=$(($CT_recovered + $CT_vac))
CT_herd_raw=$(echo "scale=4 ; $CT_herd / $CT_pop" | bc)
CT_herd_percent=$(echo "$CT_herd_raw * 100" | bc | sed 's/..$//')

echo "Connecticut herd immunity $CT_herd_percent%"

# District of Columbia
DC_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[9].Doses_Administered')
DC_inf=$(cat infected.json | jq -r '.US_MAP_DATA[8].tot_cases')
DC_dead=$(cat infected.json | jq -r '.US_MAP_DATA[8].tot_death')
DC_pop=705749

DC_recovered=$(($DC_inf - $DC_dead))
DC_herd=$(($DC_recovered + $DC_vac))
DC_herd_raw=$(echo "scale=4 ; $DC_herd / $DC_pop" | bc)
DC_herd_percent=$(echo "$DC_herd_raw * 100" | bc | sed 's/..$//')

echo "District of Columbia herd immunity $DC_herd_percent%"

# Department of Defense
DoD_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[10].Doses_Administered')
DoD_pop=2800000

DoD_recovered=140678
DoD_herd=$(($DoD_recovered + $DoD_vac))
DoD_herd_raw=$(echo "scale=4 ; $DoD_herd / $DoD_pop" | bc)
DoD_herd_percent=$(echo "$DoD_herd_raw * 100" | bc | sed 's/..$//')

echo "Department of Defense herd immunity $DoD_herd_percent%"

# Delaware
DE_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[11].Doses_Administered')
DE_inf=$(cat infected.json | jq -r '.US_MAP_DATA[9].tot_cases')
DE_dead=$(cat infected.json | jq -r '.US_MAP_DATA[9].tot_death')
DE_pop=973764

DE_recovered=$(($DE_inf - $DE_dead))
DE_herd=$(($DE_recovered + $DE_vac))
DE_herd_raw=$(echo "scale=4 ; $DE_herd / $DE_pop" | bc)
DE_herd_percent=$(echo "$DE_herd_raw * 100" | bc | sed 's/..$//')

echo "Delaware herd immunity $DE_herd_percent%"

# Florida
FL_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[12].Doses_Administered')
FL_inf=$(cat infected.json | jq -r '.US_MAP_DATA[10].tot_cases')
FL_dead=$(cat infected.json | jq -r '.US_MAP_DATA[10].tot_death')
FL_pop=21477737

FL_recovered=$(($FL_inf - $FL_dead))
FL_herd=$(($FL_recovered + $FL_vac))
FL_herd_raw=$(echo "scale=4 ; $FL_herd / $FL_pop" | bc)
FL_herd_percent=$(echo "$FL_herd_raw * 100" | bc | sed 's/..$//')

echo "Florida herd immunity $FL_herd_percent%"


# Federated States of Micronesia
FSM_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[13].Doses_Administered')
FSM_inf=$(cat infected.json | jq -r '.US_MAP_DATA[11].tot_cases')
FSM_dead=$(cat infected.json | jq -r '.US_MAP_DATA[11].tot_death')
FSM_pop=113815

FSM_recovered=$(($FSM_inf - $FSM_dead))
FSM_herd=$(($FSM_recovered + $FSM_vac))
FSM_herd_raw=$(echo "scale=4 ; $FSM_herd / $FSM_pop" | bc)
FSM_herd_percent=$(echo "$FSM_herd_raw * 100" | bc | sed 's/..$//')

echo "Federated States of Micronesia herd immunity $FSM_herd_percent%"

# Georgia
GA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[14].Doses_Administered')
GA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[12].tot_cases')
GA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[12].tot_death')
GA_pop=10617423

GA_recovered=$(($GA_inf - $GA_dead))
GA_herd=$(($GA_recovered + $GA_vac))
GA_herd_raw=$(echo "scale=4 ; $GA_herd / $GA_pop" | bc)
GA_herd_percent=$(echo "$GA_herd_raw * 100" | bc | sed 's/..$//')

echo "Georgia herd immunity $GA_herd_percent%"

# Guam
GU_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[15].Doses_Administered')
GU_inf=$(cat infected.json | jq -r '.US_MAP_DATA[13].tot_cases')
GU_dead=$(cat infected.json | jq -r '.US_MAP_DATA[13].tot_death')
GU_pop=167294

GU_recovered=$(($GU_inf - $GU_dead))
GU_herd=$(($GU_recovered + $GU_vac))
GU_herd_raw=$(echo "scale=4 ; $GU_herd / $GU_pop" | bc)
GU_herd_percent=$(echo "$GU_herd_raw * 100" | bc | sed 's/..$//')

echo "Guam herd immunity $GU_herd_percent%"

# Hawaii
HI_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[16].Doses_Administered')
HI_inf=$(cat infected.json | jq -r '.US_MAP_DATA[14].tot_cases')
HI_dead=$(cat infected.json | jq -r '.US_MAP_DATA[14].tot_death')
HI_pop=1415872

HI_recovered=$(($HI_inf - $HI_dead))
HI_herd=$(($HI_recovered + $HI_vac))
HI_herd_raw=$(echo "scale=4 ; $HI_herd / $HI_pop" | bc)
HI_herd_percent=$(echo "$HI_herd_raw * 100" | bc | sed 's/..$//')

echo "Hawaii herd immunity $HI_herd_percent%"

# Iowa
IA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[17].Doses_Administered')
IA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[15].tot_cases')
IA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[15].tot_death')
IA_pop=3155070

IA_recovered=$(($IA_inf - $IA_dead))
IA_herd=$(($IA_recovered + $IA_vac))
IA_herd_raw=$(echo "scale=4 ; $IA_herd / $IA_pop" | bc)
IA_herd_percent=$(echo "$IA_herd_raw * 100" | bc | sed 's/..$//')

echo "Iowa herd immunity $IA_herd_percent%"

# Idaho
ID_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[18].Doses_Administered')
ID_inf=$(cat infected.json | jq -r '.US_MAP_DATA[16].tot_cases')
ID_dead=$(cat infected.json | jq -r '.US_MAP_DATA[16].tot_death')
ID_pop=1787065

ID_recovered=$(($ID_inf - $ID_dead))
ID_herd=$(($ID_recovered + $ID_vac))
ID_herd_raw=$(echo "scale=4 ; $ID_herd / $ID_pop" | bc)
ID_herd_percent=$(echo "$ID_herd_raw * 100" | bc | sed 's/..$//')

echo "Idaho herd immunity $ID_herd_percent%"

# Native Americans 
NA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[19].Doses_Administered')
NA_inf=176475
NA_pop=2757000

NA_recovered=176475
NA_herd=$(($NA_recovered + $NA_vac))
NA_herd_raw=$(echo "scale=4 ; $NA_herd / $NA_pop" | bc)
NA_herd_percent=$(echo "$NA_herd_raw * 100" | bc | sed 's/..$//')

echo "Indian Health Service herd immunity $NA_herd_percent%"

# Illinois
IL_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[20].Doses_Administered')
IL_inf=$(cat infected.json | jq -r '.US_MAP_DATA[17].tot_cases')
IL_dead=$(cat infected.json | jq -r '.US_MAP_DATA[17].tot_death')
IL_pop=12671821

IL_recovered=$(($IL_inf - $IL_dead))
IL_herd=$(($IL_recovered + $IL_vac))
IL_herd_raw=$(echo "scale=4 ; $IL_herd / $IL_pop" | bc)
IL_herd_percent=$(echo "$IL_herd_raw * 100" | bc | sed 's/..$//')

echo "Illinois herd immunity $IL_herd_percent%"

# Indiana
IN_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[21].Doses_Administered')
IN_inf=$(cat infected.json | jq -r '.US_MAP_DATA[18].tot_cases')
IN_dead=$(cat infected.json | jq -r '.US_MAP_DATA[18].tot_death')
IN_pop=6732219

IN_recovered=$(($IN_inf - $IN_dead))
IN_herd=$(($IN_recovered + $IN_vac))
IN_herd_raw=$(echo "scale=4 ; $IN_herd / $IN_pop" | bc)
IN_herd_percent=$(echo "$IN_herd_raw * 100" | bc | sed 's/..$//')

echo "Indiana herd immunity $IN_herd_percent%"

# Kansas
KS_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[22].Doses_Administered')
KS_inf=$(cat infected.json | jq -r '.US_MAP_DATA[19].tot_cases')
KS_dead=$(cat infected.json | jq -r '.US_MAP_DATA[19].tot_death')
KS_pop=2913314

KS_recovered=$(($KS_inf - $KS_dead))
KS_herd=$(($KS_recovered + $KS_vac))
KS_herd_raw=$(echo "scale=4 ; $KS_herd / $KS_pop" | bc)
KS_herd_percent=$(echo "$KS_herd_raw * 100" | bc | sed 's/..$//')

echo "Kanas herd immunity $KS_herd_percent%"

# Kentucky
KY_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[23].Doses_Administered')
KY_inf=$(cat infected.json | jq -r '.US_MAP_DATA[20].tot_cases')
KY_dead=$(cat infected.json | jq -r '.US_MAP_DATA[20].tot_death')
KY_pop=4467673

KY_recovered=$(($KY_inf - $KY_dead))
KY_herd=$(($KY_recovered + $KY_vac))
KY_herd_raw=$(echo "scale=4 ; $KY_herd / $KY_pop" | bc)
KY_herd_percent=$(echo "$KY_herd_raw * 100" | bc | sed 's/..$//')

echo "Kentucky herd immunity $KY_herd_percent%"

# Louisiana
LA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[24].Doses_Administered')
LA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[21].tot_cases')
LA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[21].tot_death')
LA_pop=4648794

LA_recovered=$(($LA_inf - $LA_dead))
LA_herd=$(($LA_recovered + $LA_vac))
LA_herd_raw=$(echo "scale=4 ; $LA_herd / $LA_pop" | bc)
LA_herd_percent=$(echo "$LA_herd_raw * 100" | bc | sed 's/..$//')

echo "Louisana herd immunity $LA_herd_percent%"

# Massachusetts
MA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[25].Doses_Administered')
MA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[22].tot_cases')
MA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[22].tot_death')
MA_pop=6892503

MA_recovered=$(($MA_inf - $MA_dead))
MA_herd=$(($MA_recovered + $MA_vac))
MA_herd_raw=$(echo "scale=4 ; $MA_herd / $MA_pop" | bc)
MA_herd_percent=$(echo "$MA_herd_raw * 100" | bc | sed 's/..$//')

echo "Massachusetts herd immunity $MA_herd_percent%"

# Maryland
MD_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[26].Doses_Administered')
MD_inf=$(cat infected.json | jq -r '.US_MAP_DATA[23].tot_cases')
MD_dead=$(cat infected.json | jq -r '.US_MAP_DATA[23].tot_death')
MD_pop=6045680

MD_recovered=$(($MD_inf - $MD_dead))
MD_herd=$(($MD_recovered + $MD_vac))
MD_herd_raw=$(echo "scale=4 ; $MD_herd / $MD_pop" | bc)
MD_herd_percent=$(echo "$MD_herd_raw * 100" | bc | sed 's/..$//')

echo "Maryland herd immunity $MD_herd_percent%"


# Maine
ME_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[27].Doses_Administered')
ME_inf=$(cat infected.json | jq -r '.US_MAP_DATA[24].tot_cases')
ME_dead=$(cat infected.json | jq -r '.US_MAP_DATA[24].tot_death')
ME_pop=1344212

ME_recovered=$(($ME_inf - $ME_dead))
ME_herd=$(($ME_recovered + $ME_vac))
ME_herd_raw=$(echo "scale=4 ; $ME_herd / $ME_pop" | bc)
ME_herd_percent=$(echo "$ME_herd_raw * 100" | bc | sed 's/..$//')

echo "Maine herd immunity $ME_herd_percent%"

# Marshall Islands
MIS_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[28].Doses_Administered')
MIS_inf=$(cat infected.json | jq -r '.US_MAP_DATA[47].tot_cases')
MIS_dead=$(cat infected.json | jq -r '.US_MAP_DATA[47].tot_death')
MIS_pop=58413

MIS_recovered=$(($MIS_inf - $MIS_dead))
MIS_herd=$(($MIS_recovered + $MIS_vac))
MIS_herd_raw=$(echo "scale=4 ; $MIS_herd / $MIS_pop" | bc)
MIS_herd_percent=$(echo "$MIS_herd_raw * 100" | bc | sed 's/..$//')

echo "Marshall Islands herd immunity $MIS_herd_percent%"


# Michigan
MI_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[29].Doses_Administered')
MI_inf=$(cat infected.json | jq -r '.US_MAP_DATA[25].tot_cases')
MI_dead=$(cat infected.json | jq -r '.US_MAP_DATA[25].tot_death')
MI_pop=9986857

MI_recovered=$(($MI_inf - $MI_dead))
MI_herd=$(($MI_recovered + $MI_vac))
MI_herd_raw=$(echo "scale=4 ; $MI_herd / $MI_pop" | bc)
MI_herd_percent=$(echo "$MI_herd_raw * 100" | bc | sed 's/..$//')

echo "Michigan herd immunity $MI_herd_percent%"

# Minnesota
MN_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[30].Doses_Administered')
MN_inf=$(cat infected.json | jq -r '.US_MAP_DATA[26].tot_cases')
MN_dead=$(cat infected.json | jq -r '.US_MAP_DATA[26].tot_death')
MN_pop=5639632

MN_recovered=$(($MN_inf - $MN_dead))
MN_herd=$(($MN_recovered + $MN_vac))
MN_herd_raw=$(echo "scale=4 ; $MN_herd / $MN_pop" | bc)
MN_herd_percent=$(echo "$MN_herd_raw * 100" | bc | sed 's/..$//')

echo "Minnesota herd immunity $MN_herd_percent%"

# Missouri
MO_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[31].Doses_Administered')
MO_inf=$(cat infected.json | jq -r '.US_MAP_DATA[27].tot_cases')
MO_dead=$(cat infected.json | jq -r '.US_MAP_DATA[27].tot_death')
MO_pop=6137428

MO_recovered=$(($MO_inf - $MO_dead))
MO_herd=$(($MO_recovered + $MO_vac))
MO_herd_raw=$(echo "scale=4 ; $MO_herd / $MO_pop" | bc)
MO_herd_percent=$(echo "$MO_herd_raw * 100" | bc | sed 's/..$//')

echo "Missouri herd immunity $MO_herd_percent%"

# Northern Mariana Islands
NMI_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[32].Doses_Administered')
NMI_inf=$(cat infected.json | jq -r '.US_MAP_DATA[28].tot_cases')
NMI_dead=$(cat infected.json | jq -r '.US_MAP_DATA[28].tot_death')
NMI_pop=56882

NMI_recovered=$(($NMI_inf - $NMI_dead))
NMI_herd=$(($NMI_recovered + $NMI_vac))
NMI_herd_raw=$(echo "scale=4 ; $NMI_herd / $NMI_pop" | bc)
NMI_herd_percent=$(echo "$NMI_herd_raw * 100" | bc | sed 's/..$//')

echo "Northern Mariana Islands herd immunity $NMI_herd_percent%"

# Mississippi
MS_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[33].Doses_Administered')
MS_inf=$(cat infected.json | jq -r '.US_MAP_DATA[29].tot_cases')
MS_dead=$(cat infected.json | jq -r '.US_MAP_DATA[29].tot_death')
MS_pop=2976149

MS_recovered=$(($MS_inf - $MS_dead))
MS_herd=$(($MS_recovered + $MS_vac))
MS_herd_raw=$(echo "scale=4 ; $MS_herd / $MS_pop" | bc)
MS_herd_percent=$(echo "$MS_herd_raw * 100" | bc | sed 's/..$//')

echo "Mississippi herd immunity $MS_herd_percent%"

# Montana
MT_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[34].Doses_Administered')
MT_inf=$(cat infected.json | jq -r '.US_MAP_DATA[30].tot_cases')
MT_dead=$(cat infected.json | jq -r '.US_MAP_DATA[30].tot_death')
MT_pop=1068778

MT_recovered=$(($MT_inf - $MT_dead))
MT_herd=$(($MT_recovered + $MT_vac))
MT_herd_raw=$(echo "scale=4 ; $MT_herd / $MT_pop" | bc)
MT_herd_percent=$(echo "$MT_herd_raw * 100" | bc | sed 's/..$//')

echo "Montana herd immunity $MT_herd_percent%"


# North Carolina
NC_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[35].Doses_Administered')
NC_inf=$(cat infected.json | jq -r '.US_MAP_DATA[31].tot_cases')
NC_dead=$(cat infected.json | jq -r '.US_MAP_DATA[31].tot_death')
NC_pop=10488084

NC_recovered=$(($NC_inf - $NC_dead))
NC_herd=$(($NC_recovered + $NC_vac))
NC_herd_raw=$(echo "scale=4 ; $NC_herd / $NC_pop" | bc)
NC_herd_percent=$(echo "$NC_herd_raw * 100" | bc | sed 's/..$//')

echo "North Carolina herd immunity $NC_herd_percent%"

# North Dakota
ND_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[36].Doses_Administered')
ND_inf=$(cat infected.json | jq -r '.US_MAP_DATA[32].tot_cases')
ND_dead=$(cat infected.json | jq -r '.US_MAP_DATA[32].tot_death')
ND_pop=762062

ND_recovered=$(($ND_inf - $ND_dead))
ND_herd=$(($ND_recovered + $ND_vac))
ND_herd_raw=$(echo "scale=4 ; $ND_herd / $ND_pop" | bc)
ND_herd_percent=$(echo "$ND_herd_raw * 100" | bc | sed 's/..$//')

echo "North Dakota herd immunity $ND_herd_percent%"

# Nebraska
NE_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[37].Doses_Administered')
NE_inf=$(cat infected.json | jq -r '.US_MAP_DATA[33].tot_cases')
NE_dead=$(cat infected.json | jq -r '.US_MAP_DATA[33].tot_death')
NE_pop=1934408

NE_recovered=$(($NE_inf - $NE_dead))
NE_herd=$(($NE_recovered + $NE_vac))
NE_herd_raw=$(echo "scale=4 ; $NE_herd / $NE_pop" | bc)
NE_herd_percent=$(echo "$NE_herd_raw * 100" | bc | sed 's/..$//')

echo "Nebraska herd immunity $NE_herd_percent%"

# New Hampshire
NH_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[38].Doses_Administered')
NH_inf=$(cat infected.json | jq -r '.US_MAP_DATA[34].tot_cases')
NH_dead=$(cat infected.json | jq -r '.US_MAP_DATA[34].tot_death')
NH_pop=1359711

NH_recovered=$(($NH_inf - $NH_dead))
NH_herd=$(($NH_recovered + $NH_vac))
NH_herd_raw=$(echo "scale=4 ; $NH_herd / $NH_pop" | bc)
NH_herd_percent=$(echo "$NH_herd_raw * 100" | bc | sed 's/..$//')

echo "New Nampshire herd immunity $NH_herd_percent%"

# New Jersey
NJ_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[39].Doses_Administered')
NJ_inf=$(cat infected.json | jq -r '.US_MAP_DATA[35].tot_cases')
NJ_dead=$(cat infected.json | jq -r '.US_MAP_DATA[35].tot_death')
NJ_pop=8882190

NJ_recovered=$(($NJ_inf - $NJ_dead))
NJ_herd=$(($NJ_recovered + $NJ_vac))
NJ_herd_raw=$(echo "scale=4 ; $NJ_herd / $NJ_pop" | bc)
NJ_herd_percent=$(echo "$NJ_herd_raw * 100" | bc | sed 's/..$//')

echo "New Jersey herd immunity $NJ_herd_percent%"

# New Mexico
NM_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[40].Doses_Administered')
NM_inf=$(cat infected.json | jq -r '.US_MAP_DATA[36].tot_cases')
NM_dead=$(cat infected.json | jq -r '.US_MAP_DATA[36].tot_death')
NM_pop=2096829

NM_recovered=$(($NM_inf - $NM_dead))
NM_herd=$(($NM_recovered + $NM_vac))
NM_herd_raw=$(echo "scale=4 ; $NM_herd / $NM_pop" | bc)
NM_herd_percent=$(echo "$NM_herd_raw * 100" | bc | sed 's/..$//')

echo "New Mexico herd immunity $NM_herd_percent%"

# Nevada
NV_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[41].Doses_Administered')
NV_inf=$(cat infected.json | jq -r '.US_MAP_DATA[37].tot_cases')
NV_dead=$(cat infected.json | jq -r '.US_MAP_DATA[37].tot_death')
NV_pop=3080156

NV_recovered=$(($NV_inf - $NV_dead))
NV_herd=$(($NV_recovered + $NV_vac))
NV_herd_raw=$(echo "scale=4 ; $NV_herd / $NV_pop" | bc)
NV_herd_percent=$(echo "$NV_herd_raw * 100" | bc | sed 's/..$//')

echo "Nevada herd immunity $NV_herd_percent%"

# New York
NY_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[42].Doses_Administered')
NYS_inf=$(cat infected.json | jq -r '.US_MAP_DATA[38].tot_cases')
NYS_dead=$(cat infected.json | jq -r '.US_MAP_DATA[38].tot_death')
NYC_inf=$(cat infected.json | jq -r '.US_MAP_DATA[39].tot_cases')
NYC_dead=$(cat infected.json | jq -r '.US_MAP_DATA[39].tot_death')
NY_pop=19453561

NY_inf=$(($NYS_inf + $NYC_inf))
NY_dead=$(($NYS_dead + $NYC_dead))

NY_recovered=$(($NY_inf - $NY_dead))
NY_herd=$(($NY_recovered + $NY_vac))
NY_herd_raw=$(echo "scale=4 ; $NY_herd / $NY_pop" | bc)
NY_herd_percent=$(echo "$NY_herd_raw * 100" | bc | sed 's/..$//')

echo "New York herd immunity $NY_herd_percent%"

# Ohio
OH_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[43].Doses_Administered')
OH_inf=$(cat infected.json | jq -r '.US_MAP_DATA[40].tot_cases')
OH_dead=$(cat infected.json | jq -r '.US_MAP_DATA[40].tot_death')
OH_pop=11689100

OH_recovered=$(($OH_inf - $OH_dead))
OH_herd=$(($OH_recovered + $OH_vac))
OH_herd_raw=$(echo "scale=4 ; $OH_herd / $OH_pop" | bc)
OH_herd_percent=$(echo "$OH_herd_raw * 100" | bc | sed 's/..$//')

echo "Ohio herd immunity $OH_herd_percent%"

# Oklahoma
OK_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[44].Doses_Administered')
OK_inf=$(cat infected.json | jq -r '.US_MAP_DATA[41].tot_cases')
OK_dead=$(cat infected.json | jq -r '.US_MAP_DATA[41].tot_death')
OK_pop=3956971

OK_recovered=$(($OK_inf - $OK_dead))
OK_herd=$(($OK_recovered + $OK_vac))
OK_herd_raw=$(echo "scale=4 ; $OK_herd / $OK_pop" | bc)
OK_herd_percent=$(echo "$OK_herd_raw * 100" | bc | sed 's/..$//')

echo "Oklahoma herd immunity $OK_herd_percent%"

# Oregon
OR_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[45].Doses_Administered')
OR_inf=$(cat infected.json | jq -r '.US_MAP_DATA[42].tot_cases')
OR_dead=$(cat infected.json | jq -r '.US_MAP_DATA[42].tot_death')
OR_pop=4217737

OR_recovered=$(($OR_inf - $OR_dead))
OR_herd=$(($OR_recovered + $OR_vac))
OR_herd_raw=$(echo "scale=4 ; $OR_herd / $OR_pop" | bc)
OR_herd_percent=$(echo "$OR_herd_raw * 100" | bc | sed 's/..$//')

echo "Oregon herd immunity $OR_herd_percent%"

# Pennsylvania
PA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[46].Doses_Administered')
PA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[43].tot_cases')
PA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[43].tot_death')
PA_pop=12801989

PA_recovered=$(($PA_inf - $PA_dead))
PA_herd=$(($PA_recovered + $PA_vac))
PA_herd_raw=$(echo "scale=4 ; $PA_herd / $PA_pop" | bc)
PA_herd_percent=$(echo "$PA_herd_raw * 100" | bc | sed 's/..$//')

echo "Pennsylvania herd immunity $PA_herd_percent%"

# Puerto Rico
PR_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[47].Doses_Administered')
PR_inf=$(cat infected.json | jq -r '.US_MAP_DATA[44].tot_cases')
PR_dead=$(cat infected.json | jq -r '.US_MAP_DATA[44].tot_death')
PR_pop=3193694

PR_recovered=$(($PR_inf - $PR_dead))
PR_herd=$(($PR_recovered + $PR_vac))
PR_herd_raw=$(echo "scale=4 ; $PR_herd / $PR_pop" | bc)
PR_herd_percent=$(echo "$PR_herd_raw * 100" | bc | sed 's/..$//')

echo "Puerto Rico herd immunity $PR_herd_percent%"

# Republic of Palau
PU_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[49].Doses_Administered')
PU_inf=$(cat infected.json | jq -r '.US_MAP_DATA[45].tot_cases')
PU_dead=$(cat infected.json | jq -r '.US_MAP_DATA[45].tot_death')
PU_pop=17907

PU_recovered=$(($PU_inf - $PU_dead))
PU_herd=$(($PU_recovered + $PU_vac))
PU_herd_raw=$(echo "scale=4 ; $PU_herd / $PU_pop" | bc)
PU_herd_percent=$(echo "$PU_herd_raw * 100" | bc | sed 's/..$//')

echo "Republic of Palau herd immunity $PU_herd_percent%"

# Rhode Island
RI_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[48].Doses_Administered')
RI_inf=$(cat infected.json | jq -r '.US_MAP_DATA[46].tot_cases')
RI_dead=$(cat infected.json | jq -r '.US_MAP_DATA[46].tot_death')
RI_pop=1059361

RI_recovered=$(($RI_inf - $RI_dead))
RI_herd=$(($RI_recovered + $RI_vac))
RI_herd_raw=$(echo "scale=4 ; $RI_herd / $RI_pop" | bc)
RI_herd_percent=$(echo "$RI_herd_raw * 100" | bc | sed 's/..$//')

echo "Rhode Island herd immunity $RI_herd_percent%"

# South Carolina
SC_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[50].Doses_Administered')
SC_inf=$(cat infected.json | jq -r '.US_MAP_DATA[48].tot_cases')
SC_dead=$(cat infected.json | jq -r '.US_MAP_DATA[48].tot_death')
SC_pop=5148714

SC_recovered=$(($SC_inf - $SC_dead))
SC_herd=$(($SC_recovered + $SC_vac))
SC_herd_raw=$(echo "scale=4 ; $SC_herd / $SC_pop" | bc)
SC_herd_percent=$(echo "$SC_herd_raw * 100" | bc | sed 's/..$//')

echo "South Carolina herd immunity $SC_herd_percent%"

# South Dakota
SD_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[51].Doses_Administered')
SD_inf=$(cat infected.json | jq -r '.US_MAP_DATA[49].tot_cases')
SD_dead=$(cat infected.json | jq -r '.US_MAP_DATA[49].tot_death')
SD_pop=884659

SD_recovered=$(($SD_inf - $SD_dead))
SD_herd=$(($SD_recovered + $SD_vac))
SD_herd_raw=$(echo "scale=4 ; $SD_herd / $SD_pop" | bc)
SD_herd_percent=$(echo "$SD_herd_raw * 100" | bc | sed 's/..$//')

echo "South Dakota herd immunity $SD_herd_percent%"


# Tennessee
TN_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[52].Doses_Administered')
TN_inf=$(cat infected.json | jq -r '.US_MAP_DATA[50].tot_cases')
TN_dead=$(cat infected.json | jq -r '.US_MAP_DATA[50].tot_death')
TN_pop=6829174

TN_recovered=$(($TN_inf - $TN_dead))
TN_herd=$(($TN_recovered + $TN_vac))
TN_herd_raw=$(echo "scale=4 ; $TN_herd / $TN_pop" | bc)
TN_herd_percent=$(echo "$TN_herd_raw * 100" | bc | sed 's/..$//')

echo "Tennessee herd immunity $TN_herd_percent%"

# Texas
TX_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[53].Doses_Administered')
TX_inf=$(cat infected.json | jq -r '.US_MAP_DATA[51].tot_cases')
TX_dead=$(cat infected.json | jq -r '.US_MAP_DATA[51].tot_death')
TX_pop=28995881

TX_recovered=$(($TX_inf - $TX_dead))
TX_herd=$(($TX_recovered + $TX_vac))
TX_herd_raw=$(echo "scale=4 ; $TX_herd / $TX_pop" | bc)
TX_herd_percent=$(echo "$TX_herd_raw * 100" | bc | sed 's/..$//')

echo "Texas herd immunity $TX_herd_percent%"

# Utah
UT_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[54].Doses_Administered')
UT_inf=$(cat infected.json | jq -r '.US_MAP_DATA[52].tot_cases')
UT_dead=$(cat infected.json | jq -r '.US_MAP_DATA[52].tot_death')
UT_pop=3205958

UT_recovered=$(($UT_inf - $UT_dead))
UT_herd=$(($UT_recovered + $UT_vac))
UT_herd_raw=$(echo "scale=4 ; $UT_herd / $UT_pop" | bc)
UT_herd_percent=$(echo "$UT_herd_raw * 100" | bc | sed 's/..$//')

echo "Utah herd immunity $UT_herd_percent%"

# Virginia
VA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[55].Doses_Administered')
VA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[53].tot_cases')
VA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[53].tot_death')
VA_pop=8535519

VA_recovered=$(($VA_inf - $VA_dead))
VA_herd=$(($VA_recovered + $VA_vac))
VA_herd_raw=$(echo "scale=4 ; $VA_herd / $VA_pop" | bc)
VA_herd_percent=$(echo "$VA_herd_raw * 100" | bc | sed 's/..$//')

echo "Virginia herd immunity $VA_herd_percent%"

# Virgin Islands
VI_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[57].Doses_Administered')
VI_inf=$(cat infected.json | jq -r '.US_MAP_DATA[54].tot_cases')
VI_dead=$(cat infected.json | jq -r '.US_MAP_DATA[54].tot_death')
VI_pop=104680

VI_recovered=$(($VI_inf - $VI_dead))
VI_herd=$(($VI_recovered + $VI_vac))
VI_herd_raw=$(echo "scale=4 ; $VI_herd / $VI_pop" | bc)
VI_herd_percent=$(echo "$VI_herd_raw * 100" | bc | sed 's/..$//')

echo "Virgin Islands herd immunity $VI_herd_percent%"

# Vermont
VT_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[58].Doses_Administered')
VT_inf=$(cat infected.json | jq -r '.US_MAP_DATA[55].tot_cases')
VT_dead=$(cat infected.json | jq -r '.US_MAP_DATA[55].tot_death')
VT_pop=623989

VT_recovered=$(($VT_inf - $VT_dead))
VT_herd=$(($VT_recovered + $VT_vac))
VT_herd_raw=$(echo "scale=4 ; $VT_herd / $VT_pop" | bc)
VT_herd_percent=$(echo "$VT_herd_raw * 100" | bc | sed 's/..$//')

echo "Vermont herd immunity $VT_herd_percent%"

# Washington
WA_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[59].Doses_Administered')
WA_inf=$(cat infected.json | jq -r '.US_MAP_DATA[56].tot_cases')
WA_dead=$(cat infected.json | jq -r '.US_MAP_DATA[56].tot_death')
WA_pop=7614893

WA_recovered=$(($WA_inf - $WA_dead))
WA_herd=$(($WA_recovered + $WA_vac))
WA_herd_raw=$(echo "scale=4 ; $WA_herd / $WA_pop" | bc)
WA_herd_percent=$(echo "$WA_herd_raw * 100" | bc | sed 's/..$//')

echo "Washington herd immunity $WA_herd_percent%"

# Wisconsin
WI_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[60].Doses_Administered')
WI_inf=$(cat infected.json | jq -r '.US_MAP_DATA[57].tot_cases')
WI_dead=$(cat infected.json | jq -r '.US_MAP_DATA[57].tot_death')
WI_pop=5822434

WI_recovered=$(($WI_inf - $WI_dead))
WI_herd=$(($WI_recovered + $WI_vac))
WI_herd_raw=$(echo "scale=4 ; $WI_herd / $WI_pop" | bc)
WI_herd_percent=$(echo "$WI_herd_raw * 100" | bc | sed 's/..$//')

echo "Wisconsin herd immunity $WI_herd_percent%"

# West Virginia
WV_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[61].Doses_Administered')
WV_inf=$(cat infected.json | jq -r '.US_MAP_DATA[58].tot_cases')
WV_dead=$(cat infected.json | jq -r '.US_MAP_DATA[58].tot_death')
WV_pop=1792147

WV_recovered=$(($WV_inf - $WV_dead))
WV_herd=$(($WV_recovered + $WV_vac))
WV_herd_raw=$(echo "scale=4 ; $WV_herd / $WV_pop" | bc)
WV_herd_percent=$(echo "$WV_herd_raw * 100" | bc | sed 's/..$//')

echo "West Virginia herd immunity $WV_herd_percent%"

# Wyoming
WY_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[62].Doses_Administered')
WY_inf=$(cat infected.json | jq -r '.US_MAP_DATA[59].tot_cases')
WY_dead=$(cat infected.json | jq -r '.US_MAP_DATA[59].tot_death')
WY_pop=578759

WY_recovered=$(($WY_inf - $WY_dead))
WY_herd=$(($WY_recovered + $WY_vac))
WY_herd_raw=$(echo "scale=4 ; $WY_herd / $WY_pop" | bc)
WY_herd_percent=$(echo "$WY_herd_raw * 100" | bc | sed 's/..$//')

echo "Wyoming herd immunity $WY_herd_percent%"

# USA
US_vac=$(cat vaccine_data.json | jq -r '.vaccination_data[63].Doses_Administered')
US_inf=$(cat infected.json | jq -r '.US_MAP_DATA[60].tot_cases')
US_dead=$(cat infected.json | jq -r '.US_MAP_DATA[60].tot_death')
US_pop=331996199

US_recovered=$(($US_inf - $US_dead))
US_herd=$(($US_recovered + $US_vac))
US_herd_raw=$(echo "scale=4 ; $US_herd / $US_pop" | bc)
US_herd_percent=$(echo "$US_herd_raw * 100" | bc | sed 's/..$//')

echo "United States herd immunity $US_herd_percent%"

Date=$(date '+%Y-%m-%d')



# Writing data.csv file
echo ""
echo "Writing to CSV file"
echo "$Date,$AK_herd_percent,$AL_herd_percent,$AR_herd_percent,$AS_herd_percent,$AZ_herd_percent,$BoP_herd_percent,$CA_herd_percent,$CO_herd_percent,$CT_herd_percent,$DC_herd_percent,$DoD_herd_percent,$DE_herd_percent,$FL_herd_percent,$FSM_herd_percent,$GA_herd_percent,$GU_herd_percent,$HI_herd_percent,$IA_herd_percent,$ID_herd_percent,$NA_herd_percent,$IL_herd_percent,$IN_herd_percent,$KS_herd_percent,$KY_herd_percent,$LA_herd_percent,$MA_herd_percent,$MD_herd_percent,$ME_herd_percent,$MIS_herd_percent,$MI_herd_percent,$MN_herd_percent,$MO_herd_percent,$NMI_herd_percent,$MS_herd_percent,$MT_herd_percent,$NC_herd_percent,$ND_herd_percent,$NE_herd_percent,$NH_herd_percent,$NJ_herd_percent,$NM_herd_percent,$NV_herd_percent,$NY_herd_percent,$OH_herd_percent,$OK_herd_percent,$OR_herd_percent,$PA_herd_percent,$PR_herd_percent,$PU_herd_percent,$RI_herd_percent,$SC_herd_percent,$TN_herd_percent,$TX_herd_percent,$UT_herd_percent,$VA_herd_percent,$VI_herd_percent,$VT_herd_percent,$WA_herd_percent,$WI_herd_percent,$WV_herd_percent,$WY_herd_percent,$US_herd_percent" >> data.csv

exit 0


