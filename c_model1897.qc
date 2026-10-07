// Created by Crowbar 0.74

$modelname "weapons\tfa_codww2\model1897\c_model1897.mdl"

$bodygroup "studio"
{
	studio "c_model1897.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\tfa_codww2\model1897\"

$attachment "__illumPosition" "j_gun" 0 0 0 rotate 0 0 0
$attachment "1" "tag_silencer" 0 0 0 rotate 0 0 0
$attachment "0" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "camera" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -25.641 -29.382 -60 41.757 13.021 15.212

$definebone "tag_origin" "" 0 0 0 0 -89.999982 0 0 0 0 0 0 0
$definebone "tag_view" "tag_origin" -0.106363 -0.000001 64.319847 0 0 0 0 0 0 0 0 0
$definebone "tag_ads" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_torso" "tag_ads" -0.903378 0.000001 -11.806007 0 0 0 0 0 0 0 0 0
$definebone "j_mainroot" "tag_torso" -0.000001 0 -14.313839 -89.999982 90.003479 0 0 0 0 0 0 0
$definebone "j_spinelower" "j_mainroot" 3.532719 0 0 0 0.000115 0 0 0 0 0 0 0
$definebone "j_spineupper" "j_spinelower" 6.249977 -0.000016 0 0 -0.000115 0 0 0 0 0 0 0
$definebone "j_clavicle_le" "j_spineupper" 9.835827 0.542913 -2.255904 88.658226 -66.083351 -66.078481 0 0 0 0 0 0
$definebone "j_shoulder_le" "j_clavicle_le" 5.784656 0.000086 -0.000004 49.24813 7.658386 7.887619 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 11.529211 0.000327 -0.000362 3.57101 -3.695575 -0.000004 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.041466 0.000167 -0.00024 -4.781688 0.982053 2.961558 0 0 0 0 0 0
$definebone "j_metaindex_le_1" "j_wrist_le" 0.625422 -0.744842 0.183784 -3.971293 -6.686186 -97.535634 0 0 0 0 0 0
$definebone "j_index_le_1" "j_metaindex_le_1" 2.823986 0.000027 -0.000027 -2.4502 18.241484 5.463326 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.781818 0 -0.000043 -0.000005 19.383669 0.000055 0 0 0 0 0 0
$definebone "j_index_le_3" "j_index_le_2" 0.949051 -0.000006 -0.000016 -0.000004 22.762633 -0.000004 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger12" "j_index_le_3" 0.256222 -0.115185 -0.00641 -9.393078 3.400618 -169.663169 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger11" "j_index_le_2" 0.162487 -0.24044 -0.130771 -6.492707 12.33245 -167.760661 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger1" "j_index_le_1" 0.330326 -0.514168 -0.177602 -1.559195 11.452958 -166.364543 0 0 0 0 0 0
$definebone "j_metamid_le_1" "j_wrist_le" 0.612655 -0.084584 0.234524 -6.947525 -3.399585 -95.954213 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_metamid_le_1" 2.859888 0.00005 -0.000042 -3.207136 25.935617 -4.492962 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 2.043177 -0.000004 -0.000065 -0.000003 34.982238 -0.000058 0 0 0 0 0 0
$definebone "j_mid_le_3" "j_mid_le_2" 1.172329 -0.000032 -0.000027 -0.000003 4.719695 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger22" "j_mid_le_3" -0.013706 -0.088056 0.041072 -7.098666 3.627412 -175.095902 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger21" "j_mid_le_2" -0.034256 -0.003872 -0.079274 -5.709988 -4.053321 -173.726422 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger2" "j_mid_le_1" 0.326271 -0.323174 -0.163324 -2.799076 10.071743 -172.219709 0 0 0 0 0 0
$definebone "j_metapinky_le_1" "j_wrist_le" 0.608909 1.380202 0.132053 3.287447 3.115806 -97.393887 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_metapinky_le_1" 2.583966 0.000053 -0.000086 3.450063 2.720398 -3.517327 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 1.306115 -0.000015 -0.000065 -0.000062 38.70898 0.000002 0 0 0 0 0 0
$definebone "j_pinky_le_3" "j_pinky_le_2" 0.758171 -0.000019 -0.000023 -0.000005 31.299612 0.000057 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger42" "j_pinky_le_3" 0.42984 0.144005 -0.093732 4.183908 5.675914 154.32699 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger41" "j_pinky_le_2" 0.386677 0.045479 -0.118353 -1.932592 24.376506 154.078153 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger4" "j_pinky_le_1" 0.597723 -0.546349 -0.40259 -12.504061 39.996246 157.030885 0 0 0 0 0 0
$definebone "j_metaring_le_1" "j_wrist_le" 0.62058 0.598552 0.147705 -2.070105 1.336027 -101.024447 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_metaring_le_1" 2.765984 0.000038 -0.000047 0.138138 20.448403 2.246628 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.638954 -0.000004 -0.000061 -0.000005 33.602372 0.000058 0 0 0 0 0 0
$definebone "j_ring_le_3" "j_ring_le_2" 1.073532 -0.000023 -0.000016 -0.000004 10.750466 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger32" "j_ring_le_3" 0.165874 -0.026033 0.010118 -0.917138 18.175084 170.82284 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger31" "j_ring_le_2" 0.052628 -0.088078 -0.086958 -4.653798 4.493537 172.028915 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger3" "j_ring_le_1" 0.33386 -0.664955 -0.260248 -6.462625 23.946537 173.406537 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_wrist_le" 0.71808 -0.623775 -0.058334 14.164651 -54.00455 4.872899 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 2.261787 -0.000059 -0.000008 15.277805 25.700357 -15.356535 0 0 0 0 0 0
$definebone "j_thumb_le_3" "j_thumb_le_2" 1.266983 -0.000021 -0.000023 0.000001 -0.734825 -0.000012 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger02" "j_thumb_le_3" -0.202219 -0.364478 0.051422 3.109618 13.581389 2.628032 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger01" "j_thumb_le_2" -0.132547 -0.194889 0.132229 3.83979 -7.969736 1.352571 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger0" "j_thumb_le_1" 0.512857 -0.286764 0.599949 12.65921 3.740659 -19.521239 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_hand" "j_wrist_le" -0.016906 0.001275 0.526329 -4.078037 0.776649 84.13289 0 0 0 0 0 0
$definebone "j_wristfronttwist1_le" "j_elbow_le" 10.599922 0.000166 -0.000233 -0.000009 0.000004 -0.000004 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_forearm" "j_elbow_le" -0.482468 0.234998 -0.063854 -2.925871 -1.308289 -2.922719 0 0 0 0 0 0
$definebone "j_shouldertwist_le" "j_shoulder_le" 0.499977 0.000014 -0.000023 -0.000002 0.000004 -0.000004 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_upperarm" "j_shoulder_le" -0.627216 0.581851 0.134109 0.824138 -1.547669 -2.959904 0 0 0 0 0 0
$definebone "j_clavicle_ri" "j_spineupper" 9.95932 0.161303 2.59196 -88.658171 -66.084778 66.079908 0 0 0 0 0 0
$definebone "j_shoulder_ri" "j_clavicle_ri" 5.784655 -0.000088 -0.000011 -48.825348 13.757117 -20.614915 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" 11.529251 -0.000316 -0.000404 -3.83515 -9.698973 0.266023 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" 11.041439 -0.000134 -0.000214 4.886875 3.474357 9.869139 0 0 0 0 0 0
$definebone "j_metaindex_ri_1" "j_wrist_ri" 0.625487 -0.74488 -0.1838 5.337496 -9.059268 94.306498 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_metaindex_ri_1" 2.823984 0.000046 -0.000022 1.015675 19.558602 -12.354621 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" 1.781826 -0.000023 -0.000089 -0.000006 21.654466 0.000055 0 0 0 0 0 0
$definebone "j_index_ri_3" "j_index_ri_2" 0.949017 0.000071 0.00001 -0.000005 20.679687 -0.000004 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger12" "j_index_ri_3" 0.246555 -0.160859 -0.026402 7.904526 3.948402 176.655384 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger11" "j_index_ri_2" 0.162731 -0.263779 0.100535 6.628203 10.572937 174.898345 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger1" "j_index_ri_1" 0.349642 -0.527 0.221532 4.038486 11.496901 173.019388 0 0 0 0 0 0
$definebone "j_metamid_ri_1" "j_wrist_ri" 0.612681 -0.084654 -0.234558 8.679611 -7.454812 93.746826 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_metamid_ri_1" 2.859861 -0.00005 -0.000041 3.704568 24.144203 -5.660066 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" 2.043236 -0.000038 -0.000087 -0.000007 36.393498 -0.000055 0 0 0 0 0 0
$definebone "j_mid_ri_3" "j_mid_ri_2" 1.172375 0.00005 -0.000013 1.331033 8.820596 2.246224 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger22" "j_mid_ri_3" 0.022755 -0.017647 -0.08172 2.420741 1.143645 -178.351334 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger21" "j_mid_ri_2" -0.009712 0.038626 0.006027 4.21794 -2.359243 -176.908798 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger2" "j_mid_ri_1" 0.342264 -0.359543 0.144346 4.61666 12.974553 -178.464223 0 0 0 0 0 0
$definebone "j_metapinky_ri_1" "j_wrist_ri" 0.608915 1.380047 -0.132229 4.763109 -1.197714 98.058792 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_metapinky_ri_1" 2.583927 -0.000015 -0.000103 1.192721 11.35452 -2.055357 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" 1.306128 -0.000008 -0.000089 -0.000012 34.835515 0.000066 0 0 0 0 0 0
$definebone "j_pinky_ri_3" "j_pinky_ri_2" 0.758259 -0.000019 0.000018 -0.000015 31.299472 0.000001 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger42" "j_pinky_ri_3" 0.477604 0.181028 0.080084 -4.666645 6.899551 -153.363674 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger41" "j_pinky_ri_2" 0.415409 0.086521 0.101348 1.668726 25.709003 -153.035374 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger4" "j_pinky_ri_1" 0.583893 -0.474182 0.389076 12.666941 37.662373 -155.941579 0 0 0 0 0 0
$definebone "j_metaring_ri_1" "j_wrist_ri" 0.620626 0.598436 -0.147762 6.635304 -2.53723 99.668368 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_metaring_ri_1" 2.765978 -0.000084 -0.000077 2.776261 22.961508 -6.155329 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" 1.638895 0.000004 -0.000048 -0.00001 37.340101 0.000003 0 0 0 0 0 0
$definebone "j_ring_ri_3" "j_ring_ri_2" 1.073586 0.000042 -0.000037 -0.000012 5.471962 -0.000055 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger32" "j_ring_ri_3" 0.188457 -0.066929 -0.036221 0.073842 19.916055 -168.220756 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger31" "j_ring_ri_2" 0.075966 -0.072815 0.067126 4.958081 1.163374 -169.301292 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger3" "j_ring_ri_1" 0.353989 -0.643253 0.265833 7.419225 24.439897 -170.825189 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_wrist_ri" 0.718055 -0.623801 0.058357 -17.053224 -54.877841 -12.739954 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" 2.261763 0.000097 -0.000008 -12.768805 16.942703 17.483061 0 0 0 0 0 0
$definebone "j_thumb_ri_3" "j_thumb_ri_2" 1.266975 0.000015 -0.000107 0.000016 15.489331 -0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger02" "j_thumb_ri_3" -0.145399 -0.239517 -0.08971 -6.222128 6.884706 0.951851 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger01" "j_thumb_ri_2" -0.010248 -0.300757 -0.205032 -5.477973 1.485323 3.104851 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger0" "j_thumb_ri_1" 0.642303 -0.327459 -0.697533 -13.454237 4.203104 24.173375 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_hand" "j_wrist_ri" -0.045613 -0.216528 -0.582481 5.459939 -0.037359 -88.532994 0 0 0 0 0 0
$definebone "j_wristfronttwist1_ri" "j_elbow_ri" 10.59993 -0.000134 -0.000244 0.000002 0.000111 -0.000058 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_forearm" "j_elbow_ri" -0.490311 -0.261642 0.34655 4.753996 0.712756 10.776875 0 0 0 0 0 0
$definebone "j_shouldertwist_ri" "j_shoulder_ri" 0.499992 -0.000014 -0.000015 -0.000002 -0.000059 -0.000059 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_upperarm" "j_shoulder_ri" -0.657299 0.961614 0.363407 0.254968 -5.570986 11.029438 0 0 0 0 0 0
$definebone "j_gun" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_red_dot" "j_gun" 7.18971 0 5.364415 0 0 0 0 0 0 0 0 0
$definebone "tag_weapon" "tag_torso" -11.626999 -10.207861 -10.700706 17.330541 -4.379059 -4.477265 0 0 0 0 0 0
$definebone "tag_bayonet" "j_gun" 27.05999 0.000001 2.91853 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "j_gun" 28.895748 0.000001 4.502244 0 0 0 0 0 0 0 0 0
$definebone "tag_charm_base" "j_gun" 2.679366 0.571463 4.479962 0 89.999982 0 0 0 0 0 0 0
$definebone "pump" "j_gun" 14.506766 0.000001 3.772126 88.993123 0.139573 0.141979 0 0 0 0 0 0
$definebone "tag_clip" "j_gun" -5.183195 6.528425 16.121092 -17.581897 3.183239 3.317196 0 0 0 0 0 0
$definebone "tag_clip_bullet" "tag_clip" 0 0 -0.000002 0.000002 2.762802 0.000001 0 0 0 0 0 0
$definebone "tag_clip_bullet_alt" "tag_clip" 0 0 -0.000002 0.000002 0 0 0 0 0 0 0 0
$definebone "tag_clip_base" "j_gun" -16.708889 0 3.927562 0 0 0 0 0 0 0 0 0
$definebone "tag_clip_extmag" "j_gun" -16.708889 0 3.927562 0 0 0 0 0 0 0 0 0
$definebone "tag_sight_off" "j_gun" 7.22373 -0.000586 5.060397 0 0 0 0 0 0 0 0 0
$definebone "tag_sight_on" "j_gun" 7.22373 -0.000586 5.060397 0 0 0 0 0 0 0 0 0
$definebone "bolt" "j_gun" 2.77559 -0.001684 4.91873 0 89.992708 -0.004927 0 0 0 0 0 0
$definebone "carrier" "j_gun" 0.095624 0.000001 4.115321 0 89.992708 -0.004927 0 0 0 0 0 0
$definebone "hammer" "j_gun" 0.659191 0.000017 3.721268 -0.000229 89.993965 -52.999857 0 0 0 0 0 0
$definebone "tag_brass" "j_gun" 3.035431 0 4.70457 -34.999303 -89.999982 0 0 0 0 0 0 0
$definebone "trigger" "j_gun" 0.033158 0.000001 2.883147 0 89.992708 -0.004927 0 0 0 0 0 0
$definebone "tag_cambone" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera" "tag_cambone" 0 0 0 0 0 0 0 0 0 0 0 0

$bonemerge "tag_origin"
$bonemerge "tag_view"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "j_mainroot"
$bonemerge "j_spinelower"
$bonemerge "j_spineupper"
$bonemerge "j_clavicle_le"
$bonemerge "j_shoulder_le"
$bonemerge "j_elbow_le"
$bonemerge "j_wrist_le"
$bonemerge "j_metaindex_le_1"
$bonemerge "j_index_le_1"
$bonemerge "j_index_le_2"
$bonemerge "j_index_le_3"
$bonemerge "valvebiped.bip01_l_finger12"
$bonemerge "valvebiped.bip01_l_finger11"
$bonemerge "valvebiped.bip01_l_finger1"
$bonemerge "j_metamid_le_1"
$bonemerge "j_mid_le_1"
$bonemerge "j_mid_le_2"
$bonemerge "j_mid_le_3"
$bonemerge "valvebiped.bip01_l_finger22"
$bonemerge "valvebiped.bip01_l_finger21"
$bonemerge "valvebiped.bip01_l_finger2"
$bonemerge "j_metapinky_le_1"
$bonemerge "j_pinky_le_1"
$bonemerge "j_pinky_le_2"
$bonemerge "j_pinky_le_3"
$bonemerge "valvebiped.bip01_l_finger42"
$bonemerge "valvebiped.bip01_l_finger41"
$bonemerge "valvebiped.bip01_l_finger4"
$bonemerge "j_metaring_le_1"
$bonemerge "j_ring_le_1"
$bonemerge "j_ring_le_2"
$bonemerge "j_ring_le_3"
$bonemerge "valvebiped.bip01_l_finger32"
$bonemerge "valvebiped.bip01_l_finger31"
$bonemerge "valvebiped.bip01_l_finger3"
$bonemerge "j_thumb_le_1"
$bonemerge "j_thumb_le_2"
$bonemerge "j_thumb_le_3"
$bonemerge "valvebiped.bip01_l_finger02"
$bonemerge "valvebiped.bip01_l_finger01"
$bonemerge "valvebiped.bip01_l_finger0"
$bonemerge "valvebiped.bip01_l_hand"
$bonemerge "valvebiped.bip01_l_forearm"
$bonemerge "valvebiped.bip01_l_upperarm"
$bonemerge "j_clavicle_ri"
$bonemerge "j_shoulder_ri"
$bonemerge "j_elbow_ri"
$bonemerge "j_wrist_ri"
$bonemerge "j_metaindex_ri_1"
$bonemerge "j_index_ri_1"
$bonemerge "j_index_ri_2"
$bonemerge "j_index_ri_3"
$bonemerge "valvebiped.bip01_r_finger12"
$bonemerge "valvebiped.bip01_r_finger11"
$bonemerge "valvebiped.bip01_r_finger1"
$bonemerge "j_metamid_ri_1"
$bonemerge "j_mid_ri_1"
$bonemerge "j_mid_ri_2"
$bonemerge "j_mid_ri_3"
$bonemerge "valvebiped.bip01_r_finger22"
$bonemerge "valvebiped.bip01_r_finger21"
$bonemerge "valvebiped.bip01_r_finger2"
$bonemerge "j_metapinky_ri_1"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_pinky_ri_2"
$bonemerge "j_pinky_ri_3"
$bonemerge "valvebiped.bip01_r_finger42"
$bonemerge "valvebiped.bip01_r_finger41"
$bonemerge "valvebiped.bip01_r_finger4"
$bonemerge "j_metaring_ri_1"
$bonemerge "j_ring_ri_1"
$bonemerge "j_ring_ri_2"
$bonemerge "j_ring_ri_3"
$bonemerge "valvebiped.bip01_r_finger32"
$bonemerge "valvebiped.bip01_r_finger31"
$bonemerge "valvebiped.bip01_r_finger3"
$bonemerge "j_thumb_ri_1"
$bonemerge "j_thumb_ri_2"
$bonemerge "j_thumb_ri_3"
$bonemerge "valvebiped.bip01_r_finger02"
$bonemerge "valvebiped.bip01_r_finger01"
$bonemerge "valvebiped.bip01_r_finger0"
$bonemerge "valvebiped.bip01_r_hand"
$bonemerge "valvebiped.bip01_r_forearm"
$bonemerge "valvebiped.bip01_r_upperarm"
$bonemerge "j_gun"
$bonemerge "tag_red_dot"
$bonemerge "tag_weapon"
$bonemerge "tag_bayonet"
$bonemerge "tag_silencer"
$bonemerge "tag_charm_base"
$bonemerge "pump"
$bonemerge "tag_clip"
$bonemerge "tag_clip_bullet"
$bonemerge "tag_clip_bullet_alt"
$bonemerge "tag_clip_base"
$bonemerge "tag_clip_extmag"
$bonemerge "tag_sight_off"
$bonemerge "tag_sight_on"
$bonemerge "bolt"
$bonemerge "carrier"
$bonemerge "hammer"
$bonemerge "tag_brass"
$bonemerge "trigger"
$bonemerge "tag_cambone"
$bonemerge "tag_camera"


$sectionframes 30 30

$animation "@empty_corrective_animation" "c_model1897_anims\@empty_corrective_animation.smd" {
}

$sequence "draw" {
	"c_model1897_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw_empty" {
	"c_model1897_anims\draw_empty.smd"
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
}

$sequence "draw_first" {
	"c_model1897_anims\draw_first.smd"
	activity "ACT_VM_DRAW_DEPLOYED" 9
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw_first_epic" {
	"c_model1897_anims\draw_first_epic.smd"
	activity "ACT_VM_DRAW_DEPLOYED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster" {
	"c_model1897_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster_empty" {
	"c_model1897_anims\holster_empty.smd"
	activity "ACT_VM_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
}

$sequence "idle" {
	"c_model1897_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_empty" {
	"c_model1897_anims\idle_empty.smd"
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
	loop
}

$sequence "empty" {
	"c_model1897_anims\empty.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@empty_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"c_model1897_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_last" {
	"c_model1897_anims\fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "rechamber" {
	"c_model1897_anims\rechamber.smd"
	activity "ACT_VM_PULLBACK_HIGH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "rechamber_ads" {
	"c_model1897_anims\rechamber_ads.smd"
	activity "ACT_VM_PULLBACK_LOW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "rechamber_dragon" {
	"c_model1897_anims\rechamber_dragon.smd"
	activity "ACT_VM_PULLBACK" 1
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "reload_start_empty" {
	"c_model1897_anims\reload_start_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_start" {
	"c_model1897_anims\reload_start.smd"
	activity "ACT_SHOTGUN_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_loop" {
	"c_model1897_anims\reload_loop.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload_end" {
	"c_model1897_anims\reload_end.smd"
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_start_dragon_empty" {
	"c_model1897_anims\reload_start_dragon_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY_DRAGON" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_start_dragon" {
	"c_model1897_anims\reload_start_dragon.smd"
	activity "ACT_SHOTGUN_RELOAD_START_DRAGON" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_loop_dragon" {
	"c_model1897_anims\reload_loop_dragon.smd"
	activity "ACT_VM_RELOAD_DRAGON" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload_end_dragon" {
	"c_model1897_anims\reload_end_dragon.smd"
	activity "ACT_SHOTGUN_RELOAD_FINISH_DRAGON" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_loop" {
	"c_model1897_anims\sprint_loop.smd"
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sprint_in" {
	"c_model1897_anims\sprint_in.smd"
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out" {
	"c_model1897_anims\sprint_out.smd"
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_loop_empty" {
	"c_model1897_anims\sprint_loop_empty.smd"
	activity "ACT_VM_IDLE_LOWERED_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
	loop
}

$sequence "sprint_in_empty" {
	"c_model1897_anims\sprint_in_empty.smd"
	activity "ACT_VM_IDLE_TO_LOWERED_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
}

$sequence "sprint_out_empty" {
	"c_model1897_anims\sprint_out_empty.smd"
	activity "ACT_VM_LOWERED_TO_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
}

$sequence "inspect" {
	"c_model1897_anims\inspect.smd"
	activity "ACT_VM_FIDGET" 9
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "inspect_empty" {
	"c_model1897_anims\inspect_empty.smd"
	activity "ACT_CROSSBOW_FIDGET_UNLOADED" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
}

$sequence "inspect_epic" {
	"c_model1897_anims\inspect_epic.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee" {
	"c_model1897_anims\melee.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee_empty" {
	"c_model1897_anims\melee_empty.smd"
	activity "ACT_VM_MISSCENTER" 1
	fadein 0.2
	fadeout 0.2
	addlayer "empty"
	fps 30
}

$keyvalues
{
// CSGO compiler adds the qc_path keyvalue section automatically.
//	qc_path 
//	{
//		"value" "c:\users\yoshi\onedrive\desktop\model1897\c_model1897.qc"
//	}
}
