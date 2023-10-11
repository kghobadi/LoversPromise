//Maya ASCII 2017 scene
//Name: randomCube.ma
//Last modified: Mon, Feb 06, 2017 04:23:31 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "D2D7CBFF-4C3E-9B4A-B224-E9AC09529654";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.3180961982692851 7.2388349210013807 20.864634995220044 ;
	setAttr ".r" -type "double3" -20.738352931807977 11181.799999982837 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19B18A1A-4933-C2BF-3F13-8FA9BC830E02";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.530519476795067;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "23E503CA-4675-A068-019C-4CA6CBF91E1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "09E2ABFA-4F16-D0B6-C078-B680035E8A24";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "0C536872-444D-016F-0C6B-A0AE403E86E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "879B8675-4385-89D7-EA35-3C9F56E50C10";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "116AD8CB-4A2F-0149-F9C1-DB97E70CB40F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "365A6FE8-440B-4ADE-B4DB-5F9429DF399B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere1";
	rename -uid "45312691-4576-14A1-29AB-9EACCDE0B5E6";
	setAttr ".t" -type "double3" 0 2.9809926020144211 0 ;
createNode transform -n "transform5" -p "pSphere1";
	rename -uid "E3B9FF7D-4810-DDEC-3E22-D09E50569444";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform5";
	rename -uid "B54509A8-416D-A369-4D72-08A8AF60235A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.05000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt";
	setAttr ".pt[0]" -type "float3" 0.055846512 -0.221571 -0.032251999 ;
	setAttr ".pt[1]" -type "float3" 0.046784095 -0.221571 -0.042387024 ;
	setAttr ".pt[2]" -type "float3" 0.032669015 -0.221571 -0.050430208 ;
	setAttr ".pt[3]" -type "float3" 0.014882975 -0.221571 -0.055594273 ;
	setAttr ".pt[4]" -type "float3" -0.0048330007 -0.221571 -0.057373673 ;
	setAttr ".pt[5]" -type "float3" -0.024548952 -0.221571 -0.055594265 ;
	setAttr ".pt[6]" -type "float3" -0.042334996 -0.221571 -0.050430201 ;
	setAttr ".pt[7]" -type "float3" -0.056450099 -0.221571 -0.042387016 ;
	setAttr ".pt[8]" -type "float3" -0.065512508 -0.221571 -0.032251999 ;
	setAttr ".pt[9]" -type "float3" -0.068635188 -0.221571 -0.021017253 ;
	setAttr ".pt[10]" -type "float3" -0.065512508 -0.221571 -0.0097825136 ;
	setAttr ".pt[11]" -type "float3" -0.056450099 -0.221571 0.00035250327 ;
	setAttr ".pt[12]" -type "float3" -0.042334989 -0.221571 0.0083956886 ;
	setAttr ".pt[13]" -type "float3" -0.024548952 -0.221571 0.013559736 ;
	setAttr ".pt[14]" -type "float3" -0.0048330007 -0.221571 0.015339138 ;
	setAttr ".pt[15]" -type "float3" 0.014882958 -0.221571 0.013559733 ;
	setAttr ".pt[16]" -type "float3" 0.032668993 -0.221571 0.0083956849 ;
	setAttr ".pt[17]" -type "float3" 0.046784066 -0.221571 0.0003525014 ;
	setAttr ".pt[18]" -type "float3" 0.05584649 -0.221571 -0.0097825136 ;
	setAttr ".pt[19]" -type "float3" 0.058969192 -0.221571 -0.021017253 ;
	setAttr ".pt[20]" -type "float3" 0.064049661 -0.22157107 -0.030150266 ;
	setAttr ".pt[21]" -type "float3" 0.053762108 -0.2215711 -0.038389284 ;
	setAttr ".pt[22]" -type "float3" 0.037738807 -0.22157107 -0.044927742 ;
	setAttr ".pt[23]" -type "float3" 0.017548336 -0.22157107 -0.049125776 ;
	setAttr ".pt[24]" -type "float3" -0.0048330007 -0.22157107 -0.050572276 ;
	setAttr ".pt[25]" -type "float3" -0.027214356 -0.22157107 -0.049125724 ;
	setAttr ".pt[26]" -type "float3" -0.047404811 -0.22157107 -0.044927742 ;
	setAttr ".pt[27]" -type "float3" -0.063428074 -0.22157107 -0.038389273 ;
	setAttr ".pt[28]" -type "float3" -0.073715627 -0.22157107 -0.030150251 ;
	setAttr ".pt[29]" -type "float3" -0.077260509 -0.22157107 -0.021017265 ;
	setAttr ".pt[30]" -type "float3" -0.073715627 -0.22157107 -0.011884263 ;
	setAttr ".pt[31]" -type "float3" -0.063428059 -0.22157107 -0.0036452957 ;
	setAttr ".pt[32]" -type "float3" -0.047404826 -0.22157107 0.0028932043 ;
	setAttr ".pt[33]" -type "float3" -0.027214363 -0.22157107 0.0070912358 ;
	setAttr ".pt[34]" -type "float3" -0.004832997 -0.22157107 0.0085377395 ;
	setAttr ".pt[35]" -type "float3" 0.017548341 -0.22157107 0.0070911837 ;
	setAttr ".pt[36]" -type "float3" 0.0377388 -0.22157107 0.0028931987 ;
	setAttr ".pt[37]" -type "float3" 0.053762048 -0.22157107 -0.0036452957 ;
	setAttr ".pt[38]" -type "float3" 0.064049654 -0.22157107 -0.01188427 ;
	setAttr ".pt[39]" -type "float3" 0.067594476 -0.22157107 -0.021017265 ;
	setAttr ".pt[198]" -type "float3" -0.017432632 0.0025716987 -0.11775532 ;
	setAttr ".pt[380]" -type "float3" -0.0048330007 -0.221571 -0.021017253 ;
createNode transform -n "pCylinder1";
	rename -uid "C39A9D2B-49B0-01C9-90C7-56B82DB1CF42";
	setAttr ".t" -type "double3" 0 -0.15768510462505236 0 ;
	setAttr ".s" -type "double3" 0.70054903039983785 1.5896556534766069 0.70054903039983785 ;
createNode transform -n "transform6" -p "pCylinder1";
	rename -uid "9E59D2A7-4997-DD1A-3D7C-7BABBD24FCBA";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform6";
	rename -uid "540CDAD6-4E46-4E2E-4E9A-DAA397C67415";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50074717402458191 0.15522444434463978 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 46 ".pt";
	setAttr ".pt[40]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[41]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[102]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[103]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[104]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[105]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[106]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[107]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[108]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[109]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[110]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[111]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[112]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[113]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[114]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[115]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[116]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[117]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[118]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[119]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[120]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[121]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".pt[122]" -type "float3" 0.070424139 0 0.073892631 ;
	setAttr ".pt[123]" -type "float3" 0.081119813 0 0.037646659 ;
	setAttr ".pt[124]" -type "float3" 0.084354632 0 -0.00077851349 ;
	setAttr ".pt[125]" -type "float3" 0.081801817 0 -0.039524637 ;
	setAttr ".pt[126]" -type "float3" 0.070932388 0 -0.075984366 ;
	setAttr ".pt[127]" -type "float3" 0.050743431 0 -0.10302092 ;
	setAttr ".pt[128]" -type "float3" 0.026211455 0 -0.12009212 ;
	setAttr ".pt[129]" -type "float3" -0.000566239 0 -0.12384349 ;
	setAttr ".pt[130]" -type "float3" -0.026388962 0 -0.11583704 ;
	setAttr ".pt[131]" -type "float3" -0.050160963 0 -0.099603608 ;
	setAttr ".pt[132]" -type "float3" -0.06941919 0 -0.073201522 ;
	setAttr ".pt[133]" -type "float3" -0.081589811 0 -0.03889218 ;
	setAttr ".pt[134]" -type "float3" -0.084354632 0 -0.00077858323 ;
	setAttr ".pt[135]" -type "float3" -0.078476012 0 0.035870284 ;
	setAttr ".pt[136]" -type "float3" -0.067398682 0 0.069519058 ;
	setAttr ".pt[137]" -type "float3" -0.049416065 0 0.096562117 ;
	setAttr ".pt[138]" -type "float3" -0.026519094 0 0.1148597 ;
	setAttr ".pt[139]" -type "float3" -0.00056624151 0 0.12384343 ;
	setAttr ".pt[140]" -type "float3" 0.026190799 0 0.11844292 ;
	setAttr ".pt[141]" -type "float3" 0.050822768 0 0.10162184 ;
createNode transform -n "pCylinder2";
	rename -uid "06F7E518-4DE5-3EDF-D944-B4A97903B7FA";
	setAttr ".t" -type "double3" -3.2018746452632412 0.099621130783829837 0.98548565769755925 ;
	setAttr ".r" -type "double3" -18.092935394574372 0 0 ;
	setAttr ".s" -type "double3" 0.33557308432129584 0.75028352852187341 0.33557308432129584 ;
createNode transform -n "transform2" -p "pCylinder2";
	rename -uid "BC60C939-47E4-ADCA-6477-24A6FDD40B7E";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform2";
	rename -uid "957FB099-49FF-C45B-6350-06B5962FCCD8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49999996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2";
	rename -uid "B8CF939F-4866-4841-EB8B-FF9996303240";
	setAttr ".t" -type "double3" -3.2016339509339686 -1.134513881177323 1.3630861538974119 ;
	setAttr ".s" -type "double3" 0.21264772345654076 0.21264772345654076 0.21264772345654076 ;
createNode transform -n "transform3" -p "pSphere2";
	rename -uid "F174BFE0-49D0-9845-198B-49944EBA4D87";
	setAttr ".v" no;
createNode mesh -n "pSphereShape2" -p "transform3";
	rename -uid "CEA3E345-4C99-9E81-5C26-2ABA646C75C4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.87500005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3";
	rename -uid "9B792CC5-476C-29C3-47FE-7599321DD652";
	setAttr ".t" -type "double3" -3.2013915913668032 -2.2433152561299687 1.3612465792617197 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.24860086871286838 0.59415029441444334 0.26574066905061755 ;
createNode transform -n "transform4" -p "pCylinder3";
	rename -uid "7021C5CC-44E9-0E62-F496-15A1E400B6C3";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform4";
	rename -uid "9AB26009-481B-1D66-2214-4AA1BD062C31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 126 ".uvst[0].uvsp[0:125]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.5874998
		 0.62595451 0.59999979 0.6236639 0.61249977 0.62356275 0.62499976 0.62566131 0.375
		 0.62566131 0.38749999 0.62975377 0.39999998 0.63029772 0.41249996 0.62803346 0.42499995
		 0.63037747 0.43749994 0.63372368 0.44999993 0.63641351 0.46249992 0.63818419 0.4749999
		 0.63886201 0.48749989 0.63838083 0.49999988 0.63678759 0.51249987 0.63423836 0.52499986
		 0.63526314 0.53749985 0.63391989 0.54999983 0.63442332 0.56249982 0.63130039 0.57499981
		 0.62941426 0.43749997 0.39524305 0.44999993 0.39529002 0.46249992 0.39980191 0.4749999
		 0.39914191 0.48749989 0.39873752 0.49999988 0.39601022 0.51249987 0.39938706 0.52499986
		 0.39597398 0.53749985 0.39277267 0.54999983 0.39387321 0.56249982 0.38923782 0.57499981
		 0.39102533 0.58749986 0.38770431 0.59999979 0.38830107 0.61249977 0.38595217 0.62499976
		 0.38256419 0.375 0.38256419 0.38749999 0.38771546 0.39999998 0.39446956 0.41249996
		 0.39091039 0.42499998 0.39282447;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" -0.41999966 -0.3214789 0.13646607 ;
	setAttr ".pt[1]" -type "float3" -0.35727307 -0.3214789 0.259574 ;
	setAttr ".pt[2]" -type "float3" -0.25957417 -0.3214789 0.35727292 ;
	setAttr ".pt[3]" -type "float3" -0.13646622 -0.3214789 0.4199996 ;
	setAttr ".pt[4]" -type "float3" -5.2644456e-008 -0.3214789 0.44161379 ;
	setAttr ".pt[5]" -type "float3" 0.1364661 -0.3214789 0.41999957 ;
	setAttr ".pt[6]" -type "float3" 0.25957394 -0.3214789 0.35727289 ;
	setAttr ".pt[7]" -type "float3" 0.35727289 -0.3214789 0.25957394 ;
	setAttr ".pt[8]" -type "float3" 0.41999957 -0.3214789 0.13646603 ;
	setAttr ".pt[9]" -type "float3" 0.44161373 -0.3214789 -7.8966671e-008 ;
	setAttr ".pt[10]" -type "float3" 0.41999957 -0.3214789 -0.13646619 ;
	setAttr ".pt[11]" -type "float3" 0.35727289 -0.3214789 -0.25957403 ;
	setAttr ".pt[12]" -type "float3" 0.25957394 -0.3214789 -0.35727292 ;
	setAttr ".pt[13]" -type "float3" 0.13646604 -0.3214789 -0.4199996 ;
	setAttr ".pt[14]" -type "float3" -3.9483336e-008 -0.3214789 -0.44161379 ;
	setAttr ".pt[15]" -type "float3" -0.13646616 -0.3214789 -0.41999957 ;
	setAttr ".pt[16]" -type "float3" -0.25957394 -0.3214789 -0.35727292 ;
	setAttr ".pt[17]" -type "float3" -0.35727289 -0.3214789 -0.259574 ;
	setAttr ".pt[18]" -type "float3" -0.41999957 -0.3214789 -0.13646618 ;
	setAttr ".pt[19]" -type "float3" -0.44161373 -0.3214789 -7.8966671e-008 ;
	setAttr ".pt[40]" -type "float3" -5.2644456e-008 -0.3214789 -7.8966671e-008 ;
	setAttr -s 82 ".vt[0:81]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-008 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.5646677 1 -0.18686953 0.48033535 1 -0.3554469
		 0.34898382 1 -0.48923069 0.18347165 1 -0.57512504 -4.8431595e-008 1 -0.60472238 -0.18347168 1 -0.57512498
		 -0.34898382 1 -0.48923054 -0.48033524 1 -0.35544682 -0.56466752 1 -0.18686949 -0.59372652 1 -7.0681232e-008
		 -0.56466752 1 0.18686932 -0.48033518 1 0.35544664 -0.34898382 1 0.48923033 -0.18347162 1 0.57512468
		 -6.612602e-008 1 0.60472202 0.18347147 1 0.57512462 0.34898359 1 0.4892303 0.480335 1 0.35544658
		 0.56466728 1 0.18686926 0.59372628 1 -7.0681232e-008 0 -1 0 0 1 0 0.809017 0.66757798 0.5877853
		 0.95105654 0.65539205 0.309017 1 0.65485406 0 0.95105708 0.66601801 -0.30901718 0.80901754 0.68779004 -0.5877856
		 0.5877856 0.69068396 -0.80901748 0.30901712 0.67863798 -0.95105708 0 0.69110799 -1.000000476837
		 -0.30901715 0.70890999 -0.95105696 -0.58778548 0.72321999 -0.8090173 -0.80901724 0.73264003 -0.58778542
		 -0.95105678 0.73624599 -0.30901706 -1.000000238419 0.73368597 0 -0.95105678 0.72520995 0.30901706
		 -0.80901718 0.71164799 0.58778536 -0.58778536 0.71710002 0.80901718 -0.30901706 0.70995402 0.95105666
		 -2.9802322e-008 0.71263194 1.000000119209 0.30901697 0.69601798 0.9510566 0.58778524 0.68598402 0.80901706
		 -0.30901718 -0.55980706 -0.95105696 -0.58778548 -0.55955702 -0.8090173 -0.80901724 -0.53555375 -0.58778542
		 -0.95105672 -0.53906488 -0.30901706 -1.000000238419 -0.54121637 0 -0.95105678 -0.55572563 0.30901706
		 -0.80901718 -0.53776091 0.58778536 -0.58778536 -0.55591846 0.80901718 -0.30901706 -0.57294923 0.95105666
		 -2.9802322e-008 -0.56709462 1.000000119209 0.30901697 -0.59175491 0.9510566 0.58778524 -0.58224523 0.80901706
		 0.80901706 -0.59991306 0.5877853 0.95105654 -0.59673822 0.309017 1 -0.60923439 0
		 0.95105714 -0.62725848 -0.30901718 0.80901748 -0.59985363 -0.5877856 0.5877856 -0.56392181 -0.80901748
		 0.30901712 -0.58285677 -0.95105702 0 -0.57267398 -1.000000476837;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 77 1 1 78 1
		 2 79 1 3 80 1 4 81 1 5 62 1 6 63 1 7 64 1 8 65 1 9 66 1 10 67 1 11 68 1 12 69 1 13 70 1
		 14 71 1 15 72 1 16 73 1 17 74 1 18 75 1 19 76 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1 25 41 1 26 41 1
		 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1 42 37 1 43 38 1 44 39 1 45 20 1 46 21 1 47 22 1 48 23 1 49 24 1 50 25 1
		 51 26 1 52 27 1 53 28 1 54 29 1 55 30 1 56 31 1 57 32 1 58 33 1 59 34 1 60 35 1 61 36 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 42 1 62 50 1 63 51 1
		 64 52 1 65 53 1 66 54 1 67 55 1 68 56 1 69 57 1 70 58 1 71 59 1 72 60 1 73 61 1 74 42 1
		 75 43 1 76 44 1 77 45 1 78 46 1 79 47 1 80 48 1 81 49 1 62 63 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 68 1;
	setAttr ".ed[166:179]" 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 62 1;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 4 123 104 -21 -104
		mu 0 4 88 89 42 41
		f 4 124 105 -22 -105
		mu 0 4 89 90 43 42
		f 4 125 106 -23 -106
		mu 0 4 90 91 44 43
		f 4 126 107 -24 -107
		mu 0 4 91 92 45 44
		f 4 127 108 -25 -108
		mu 0 4 92 93 46 45
		f 4 128 109 -26 -109
		mu 0 4 93 94 47 46
		f 4 129 110 -27 -110
		mu 0 4 94 95 48 47
		f 4 130 111 -28 -111
		mu 0 4 95 96 49 48
		f 4 131 112 -29 -112
		mu 0 4 96 97 50 49
		f 4 132 113 -30 -113
		mu 0 4 97 98 51 50
		f 4 133 114 -31 -114
		mu 0 4 98 99 52 51
		f 4 134 115 -32 -115
		mu 0 4 99 100 53 52
		f 4 135 116 -33 -116
		mu 0 4 100 101 54 53
		f 4 136 117 -34 -117
		mu 0 4 101 102 55 54
		f 4 137 118 -35 -118
		mu 0 4 102 103 56 55
		f 4 138 119 -36 -119
		mu 0 4 103 104 57 56
		f 4 139 100 -37 -120
		mu 0 4 104 84 58 57
		f 4 120 101 -38 -101
		mu 0 4 84 85 59 58
		f 4 121 102 -39 -102
		mu 0 4 85 86 60 59
		f 4 122 103 -40 -103
		mu 0 4 86 87 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83
		f 4 172 153 -121 -153
		mu 0 4 117 118 85 84
		f 4 173 154 -122 -154
		mu 0 4 118 119 86 85
		f 4 174 155 -123 -155
		mu 0 4 119 120 87 86
		f 4 175 156 -124 -156
		mu 0 4 121 122 89 88
		f 4 176 157 -125 -157
		mu 0 4 122 123 90 89
		f 4 177 158 -126 -158
		mu 0 4 123 124 91 90
		f 4 178 159 -127 -159
		mu 0 4 124 125 92 91
		f 4 179 140 -128 -160
		mu 0 4 125 105 93 92
		f 4 160 141 -129 -141
		mu 0 4 105 106 94 93
		f 4 161 142 -130 -142
		mu 0 4 106 107 95 94
		f 4 162 143 -131 -143
		mu 0 4 107 108 96 95
		f 4 163 144 -132 -144
		mu 0 4 108 109 97 96
		f 4 164 145 -133 -145
		mu 0 4 109 110 98 97
		f 4 165 146 -134 -146
		mu 0 4 110 111 99 98
		f 4 166 147 -135 -147
		mu 0 4 111 112 100 99
		f 4 167 148 -136 -148
		mu 0 4 112 113 101 100
		f 4 168 149 -137 -149
		mu 0 4 113 114 102 101
		f 4 169 150 -138 -150
		mu 0 4 114 115 103 102
		f 4 170 151 -139 -151
		mu 0 4 115 116 104 103
		f 4 171 152 -140 -152
		mu 0 4 116 117 84 104
		f 4 5 46 -161 -46
		mu 0 4 25 26 106 105
		f 4 6 47 -162 -47
		mu 0 4 26 27 107 106
		f 4 7 48 -163 -48
		mu 0 4 27 28 108 107
		f 4 8 49 -164 -49
		mu 0 4 28 29 109 108
		f 4 9 50 -165 -50
		mu 0 4 29 30 110 109
		f 4 10 51 -166 -51
		mu 0 4 30 31 111 110
		f 4 11 52 -167 -52
		mu 0 4 31 32 112 111
		f 4 12 53 -168 -53
		mu 0 4 32 33 113 112
		f 4 13 54 -169 -54
		mu 0 4 33 34 114 113
		f 4 14 55 -170 -55
		mu 0 4 34 35 115 114
		f 4 15 56 -171 -56
		mu 0 4 35 36 116 115
		f 4 16 57 -172 -57
		mu 0 4 36 37 117 116
		f 4 17 58 -173 -58
		mu 0 4 37 38 118 117
		f 4 18 59 -174 -59
		mu 0 4 38 39 119 118
		f 4 19 40 -175 -60
		mu 0 4 39 40 120 119
		f 4 0 41 -176 -41
		mu 0 4 20 21 122 121
		f 4 1 42 -177 -42
		mu 0 4 21 22 123 122
		f 4 2 43 -178 -43
		mu 0 4 22 23 124 123
		f 4 3 44 -179 -44
		mu 0 4 23 24 125 124
		f 4 4 45 -180 -45
		mu 0 4 24 25 105 125;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere3";
	rename -uid "4C173982-4226-A42A-97B5-47BF0DEC7102";
	setAttr ".t" -type "double3" -3.2130255577098903 -3.1168371181404919 1.3745913595701835 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.29606574022991516 0.16522011185492932 0.63354737104776604 ;
createNode transform -n "transform1" -p "pSphere3";
	rename -uid "7A211EF8-42ED-E1CD-DB52-5BA7617F7725";
	setAttr ".v" no;
createNode mesh -n "pSphereShape3" -p "transform1";
	rename -uid "85678A90-4D37-4246-C88F-949FEEB4AEDA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.95000007748603821 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".pt";
	setAttr ".pt[340]" -type "float3" 0.1808176 0.7490648 0 ;
	setAttr ".pt[341]" -type "float3" 0.15980673 0.7490648 0 ;
	setAttr ".pt[342]" -type "float3" 0.12708145 0.7490648 0 ;
	setAttr ".pt[343]" -type "float3" 0.085845277 0.7490648 0 ;
	setAttr ".pt[344]" -type "float3" 0.04013462 0.7490648 0 ;
	setAttr ".pt[345]" -type "float3" -0.0055760294 0.7490648 0 ;
	setAttr ".pt[346]" -type "float3" -0.04681218 0.7490648 0 ;
	setAttr ".pt[347]" -type "float3" -0.079537392 0.7490648 0 ;
	setAttr ".pt[348]" -type "float3" -0.10054825 0.7490648 0 ;
	setAttr ".pt[349]" -type "float3" -0.1077881 0.7490648 0 ;
	setAttr ".pt[350]" -type "float3" -0.10054825 0.7490648 0 ;
	setAttr ".pt[351]" -type "float3" -0.079537377 0.7490648 0 ;
	setAttr ".pt[352]" -type "float3" -0.046812173 0.7490648 0 ;
	setAttr ".pt[353]" -type "float3" -0.005576022 0.7490648 0 ;
	setAttr ".pt[354]" -type "float3" 0.04013462 0.7490648 0 ;
	setAttr ".pt[355]" -type "float3" 0.085845247 0.7490648 0 ;
	setAttr ".pt[356]" -type "float3" 0.12708139 0.7490648 0 ;
	setAttr ".pt[357]" -type "float3" 0.15980661 0.7490648 0 ;
	setAttr ".pt[358]" -type "float3" 0.18081748 0.7490648 0 ;
	setAttr ".pt[359]" -type "float3" 0.18805736 0.7490648 0 ;
	setAttr ".pt[360]" -type "float3" 0.11135288 0.7490648 0 ;
	setAttr ".pt[361]" -type "float3" 0.10071652 0.7490648 0 ;
	setAttr ".pt[362]" -type "float3" 0.084149942 0.7490648 0 ;
	setAttr ".pt[363]" -type "float3" 0.063274845 0.7490648 0 ;
	setAttr ".pt[364]" -type "float3" 0.04013462 0.7490648 0 ;
	setAttr ".pt[365]" -type "float3" 0.016994406 0.7490648 0 ;
	setAttr ".pt[366]" -type "float3" -0.0038806871 0.7490648 0 ;
	setAttr ".pt[367]" -type "float3" -0.020447247 0.7490648 0 ;
	setAttr ".pt[368]" -type "float3" -0.031083651 0.7490648 0 ;
	setAttr ".pt[369]" -type "float3" -0.034748688 0.7490648 0 ;
	setAttr ".pt[370]" -type "float3" -0.031083651 0.7490648 0 ;
	setAttr ".pt[371]" -type "float3" -0.020447247 0.7490648 0 ;
	setAttr ".pt[372]" -type "float3" -0.0038806759 0.7490648 0 ;
	setAttr ".pt[373]" -type "float3" 0.016994413 0.7490648 0 ;
	setAttr ".pt[374]" -type "float3" 0.04013462 0.7490648 0 ;
	setAttr ".pt[375]" -type "float3" 0.063274831 0.7490648 0 ;
	setAttr ".pt[376]" -type "float3" 0.084149912 0.7490648 0 ;
	setAttr ".pt[377]" -type "float3" 0.10071647 0.7490648 0 ;
	setAttr ".pt[378]" -type "float3" 0.11135285 0.7490648 0 ;
	setAttr ".pt[379]" -type "float3" 0.11501788 0.7490648 0 ;
	setAttr ".pt[381]" -type "float3" 0.04013462 0.7490648 0 ;
createNode transform -n "pCylinder4";
	rename -uid "54EBCE9B-4766-CB2E-62FD-29A2FBD3271A";
	setAttr ".t" -type "double3" 2.2606785253892832 -3.9145799396386831 -0.95781886584257458 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 1.3764276579665362 1.3764276579665362 1.3764276579665362 ;
	setAttr ".rp" -type "double3" -3.2130256709969882 -1.1825178681627266 1.0520774272618247 ;
	setAttr ".sp" -type "double3" -3.2130256709969882 -1.1825178681627266 1.0520774272618247 ;
createNode transform -n "transform49" -p "pCylinder4";
	rename -uid "909B0AAB-4F4E-EA52-2C23-B6B095BEC1AB";
	setAttr ".v" no;
createNode mesh -n "pCylinder4Shape" -p "transform49";
	rename -uid "0431F088-46CF-AE65-CA7A-6E8ACA6FCEE6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder5";
	rename -uid "AD09F320-4141-5148-4976-6C91C834C6CC";
	setAttr ".rp" -type "double3" 0.014435410499572754 1.0713339492918759 -0.095491677522659302 ;
	setAttr ".sp" -type "double3" 0.014435410499572754 1.0713339492918759 -0.095491677522659302 ;
createNode transform -n "polySurface1" -p "pCylinder5";
	rename -uid "B592FF82-4BE6-972D-3D14-E98654FE3845";
createNode transform -n "transform9" -p "|pCylinder5|polySurface1";
	rename -uid "361A1B47-4AE5-643D-5A5F-E7B37F80A79E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform9";
	rename -uid "8193EEC8-4658-889A-2948-91A253CFAF97";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "pCylinder5";
	rename -uid "67974F22-4FBC-0684-7ED9-E7A4D034E7CB";
createNode transform -n "transform8" -p "polySurface2";
	rename -uid "D299251C-4111-28D6-DA3A-36B67A59050F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform8";
	rename -uid "C45F4A20-4E33-6D3E-D095-D8BDE34E21C8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform7" -p "pCylinder5";
	rename -uid "55CDFB66-45E2-5E4C-EFB1-F59E4967891F";
	setAttr ".v" no;
createNode mesh -n "pCylinder5Shape" -p "transform7";
	rename -uid "0C0304D5-494A-CBBE-7C9A-409619C85A85";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
	rename -uid "08D3F2D0-413B-EA5E-4609-F5ACA285631B";
	setAttr ".rp" -type "double3" 0.014435410499572754 1.0713338851928711 -0.095491677522659302 ;
	setAttr ".sp" -type "double3" 0.014435410499572754 1.0713338851928711 -0.095491677522659302 ;
createNode transform -n "polySurface3" -p "|polySurface1";
	rename -uid "3E8276DB-4065-0A7B-C2D8-549593325A87";
	setAttr ".t" -type "double3" 0 -0.36044430686489437 0 ;
	setAttr ".s" -type "double3" 1.2064835856655987 1.2064835856655987 1.2064835856655987 ;
createNode transform -n "transform11" -p "polySurface3";
	rename -uid "B4715C83-46DB-1076-788B-7BA37AA0AA5F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform11";
	rename -uid "2C030138-4EB6-A2A2-4A9B-A69511A1DF79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55396699905395508 0.80095887184143066 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[82:101]" -type "float3"  0.050667278 0.00015862237 
		0.020065384 0.055535365 0.00015862237 -0.0011419047 0.053051393 0.00015862237 -0.019852117 
		0.041666627 -0.00015862237 -0.037971366 0.025132764 0.00015862237 -0.0462435 0.0046639293 
		0.00015862237 -0.053038299 -0.013278909 0.00015862237 -0.052222684 -0.029385006 0.00015862237 
		-0.048121512 -0.042047448 0.00015862237 -0.038150128 -0.047656808 0 -0.016509905 
		-0.055535365 0.00015862237 -0.011235953 -0.055238038 0.00015862237 0.0020202496 -0.053053912 
		0.00015862237 0.016962739 -0.044249218 0.00015862237 0.028987087 -0.03071706 0.00015862237 
		0.040910073 -0.01824804 0.00015862237 0.050025579 -0.00584991 0.00015862237 0.053038299 
		0.010286288 0.00015862237 0.050726909 0.025832681 0.00015862237 0.044971801 0.040381905 
		0.00015862237 0.032837506;
createNode transform -n "polySurface4" -p "|polySurface1";
	rename -uid "077203C8-4A3F-519F-B993-23A9A4875870";
createNode transform -n "transform12" -p "|polySurface1|polySurface4";
	rename -uid "A4F0B9A4-4996-8ED1-982A-009A696306A1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform12";
	rename -uid "483C3156-4120-6D2E-EDED-7E999407E269";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform10" -p "|polySurface1";
	rename -uid "D84B77C3-4698-23C0-98D3-10BE280921E8";
	setAttr ".v" no;
createNode mesh -n "polySurface1Shape" -p "transform10";
	rename -uid "4D7C7392-4E2B-B3CA-10C4-34B69D0DB6A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4";
	rename -uid "5BCCC836-4BDA-73A0-D9DA-11A8044C959A";
	setAttr ".rp" -type "double3" 0.014435410499572754 0.70131978512404514 -0.077399763837134483 ;
	setAttr ".sp" -type "double3" 0.014435410499572754 0.70131978512404514 -0.077399763837134483 ;
createNode transform -n "transform53" -p "|polySurface4";
	rename -uid "C3605732-4124-E724-DFF7-AFA75DBB253C";
	setAttr ".v" no;
createNode mesh -n "polySurface4Shape" -p "transform53";
	rename -uid "10F823B9-45D1-7EF1-AD1F-69A8A0E39E1A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60286200046539307 0.170972540974617 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[519]" -type "float3" 0.44283959 -0.11965034 0 ;
	setAttr ".pt[520]" -type "float3" 0.44283959 -0.11965034 0 ;
	setAttr ".pt[521]" -type "float3" 0.44283959 -0.11965034 0 ;
	setAttr ".pt[522]" -type "float3" 0.44283959 -0.11965034 0 ;
	setAttr ".pt[530]" -type "float3" -0.403249 -0.13257299 0 ;
	setAttr ".pt[531]" -type "float3" -0.403249 -0.13257299 0 ;
	setAttr ".pt[532]" -type "float3" -0.403249 -0.13257299 0 ;
	setAttr ".pt[533]" -type "float3" -0.403249 -0.13257299 0 ;
createNode transform -n "pCylinder6";
	rename -uid "F84CCAAB-4E4C-1937-5FFA-128924301FEC";
	setAttr ".t" -type "double3" 4.2122015088094695 -3.9145799396386831 -0.95781886584257458 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1.3764276579665362 1.3764276579665362 1.3764276579665362 ;
	setAttr ".rp" -type "double3" -3.2130256709969882 -1.1825178681627266 1.0520774272618247 ;
	setAttr ".sp" -type "double3" -3.2130256709969882 -1.1825178681627266 1.0520774272618247 ;
createNode transform -n "transform54" -p "pCylinder6";
	rename -uid "D3A3DCE2-4B54-E946-C258-A6BBA96D8ABA";
	setAttr ".v" no;
createNode mesh -n "pCylinder6Shape" -p "transform54";
	rename -uid "401600D1-45C0-F3DD-710E-56B124C68FE6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:999]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1130 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.5874998
		 0.62595451 0.59999979 0.6236639 0.61249977 0.62356275 0.62499976 0.62566131 0.375
		 0.62566131 0.38749999 0.62975377 0.39999998 0.63029772 0.41249996 0.62803346 0.42499995
		 0.63037747 0.43749994 0.63372368 0.44999993 0.63641351 0.46249992 0.63818419 0.4749999
		 0.63886201 0.48749989 0.63838083 0.49999988 0.63678759 0.51249987 0.63423836 0.52499986
		 0.63526314 0.53749985 0.63391989 0.54999983 0.63442332 0.56249982 0.63130039 0.57499981
		 0.62941426 0.43749997 0.39524305 0.44999993 0.39529002 0.46249992 0.39980191 0.4749999
		 0.39914191 0.48749989 0.39873752 0.49999988 0.39601022 0.51249987 0.39938706 0.52499986
		 0.39597398 0.53749985 0.39277267 0.54999983 0.39387321 0.56249982 0.38923782 0.57499981
		 0.39102533 0.58749986 0.38770431 0.59999979 0.38830107 0.61249977 0.38595217 0.62499976
		 0.38256419 0.375 0.38256419 0.38749999 0.38771546 0.39999998 0.39446956 0.41249996
		 0.39091039 0.42499998 0.39282447 0 0.050000001 0.050000001 0.050000001 0.050000001
		 0.1 0 0.1 0.1 0.050000001 0.1 0.1 0.15000001 0.050000001 0.15000001 0.1 0.2 0.050000001
		 0.2 0.1 0.25 0.050000001 0.25 0.1 0.30000001 0.050000001 0.30000001 0.1 0.35000002
		 0.050000001 0.35000002 0.1 0.40000004 0.050000001 0.40000004 0.1 0.45000005 0.050000001
		 0.45000005 0.1 0.50000006 0.050000001 0.50000006 0.1 0.55000007 0.050000001 0.55000007
		 0.1 0.60000008 0.050000001 0.60000008 0.1 0.6500001 0.050000001 0.6500001 0.1 0.70000011
		 0.050000001 0.70000011 0.1 0.75000012 0.050000001 0.75000012 0.1 0.80000013 0.050000001
		 0.80000013 0.1 0.85000014 0.050000001 0.85000014 0.1 0.90000015 0.050000001 0.90000015
		 0.1 0.95000017 0.050000001 0.95000017 0.1 1.000000119209 0.050000001 1.000000119209
		 0.1 0.050000001 0.15000001 0 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0.050000001 0.30000001 0 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001;
	setAttr ".uvst[0].uvsp[250:499]" 0.95000017 0.30000001 1.000000119209 0.30000001
		 0.050000001 0.35000002 0 0.35000002 0.1 0.35000002 0.15000001 0.35000002 0.2 0.35000002
		 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004 0.35000002
		 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008 0.35000002
		 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013 0.35000002
		 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0.050000001 0.40000004 0 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0.050000001 0.45000005 0 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0.050000001 0.50000006 0 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0.050000001 0.55000007 0 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0.050000001 0.60000008 0 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008 0.95000017 0.60000008 1.000000119209
		 0.60000008 0.050000001 0.6500001 0 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2
		 0.6500001 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001
		 0.45000005 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001
		 0.6500001 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001
		 0.85000014 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001
		 0.050000001 0.70000011 0 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011
		 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011
		 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011
		 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011
		 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209
		 0.70000011 0.050000001 0.75000012 0 0.75000012 0.1 0.75000012 0.15000001 0.75000012
		 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004
		 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008
		 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013
		 0.75000012 0.85000014 0.75000012 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209
		 0.75000012 0.050000001 0.80000013 0 0.80000013 0.1 0.80000013 0.15000001 0.80000013
		 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004
		 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008
		 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013
		 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209
		 0.80000013 0.050000001 0.85000014 0 0.85000014 0.1 0.85000014 0.15000001 0.85000014
		 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209
		 0.85000014 0.050000001 0.90000015 0 0.90000015 0.1 0.90000015 0.15000001 0.90000015
		 0.2 0.90000015 0.25 0.90000015 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004
		 0.90000015 0.45000005 0.90000015 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008
		 0.90000015 0.6500001 0.90000015 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013
		 0.90000015;
	setAttr ".uvst[0].uvsp[500:749]" 0.85000014 0.90000015 0.90000015 0.90000015
		 0.95000017 0.90000015 1.000000119209 0.90000015 0.050000001 0.95000017 0 0.95000017
		 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017
		 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017
		 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017
		 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017
		 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175
		 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004
		 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875
		 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001
		 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625
		 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002
		 1 0.375 0.62566131 0.38749999 0.62975377 0.38749999 0.68843985 0.375 0.68843985 0.39999998
		 0.63029772 0.39999998 0.68843985 0.41249996 0.62803346 0.41249996 0.68843985 0.42499995
		 0.63037747 0.42499995 0.68843985 0.43749994 0.63372368 0.43749994 0.68843985 0.44999993
		 0.63641351 0.44999993 0.68843985 0.46249992 0.63818419 0.46249992 0.68843985 0.4749999
		 0.63886201 0.4749999 0.68843985 0.48749989 0.63838083 0.48749989 0.68843985 0.49999988
		 0.63678759 0.49999988 0.68843985 0.51249987 0.63423836 0.51249987 0.68843985 0.52499986
		 0.63526314 0.52499986 0.68843985 0.53749985 0.63391989 0.53749985 0.68843985 0.54999983
		 0.63442332 0.54999983 0.68843985 0.56249982 0.63130039 0.56249982 0.68843985 0.57499981
		 0.62941426 0.57499981 0.68843985 0.5874998 0.62595451 0.5874998 0.68843985 0.59999979
		 0.6236639 0.59999979 0.68843985 0.61249977 0.62356275 0.61249977 0.68843985 0.62499976
		 0.62566131 0.62499976 0.68843985 0.62640899 0.064408496 0.64860266 0.10796607 0.5
		 0.15000001 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.6486026 0.89203393 0.62640893 0.93559146 0.5
		 0.83749998 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854
		 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974
		 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5
		 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266
		 0.79546607 0.65625 0.84375 0.58749986 0.38770431 0.59999979 0.38830107 0.61249977
		 0.38595217 0.62499976 0.38256419 0.375 0.38256419 0.38749999 0.38771546 0.39999998
		 0.39446956 0.41249996 0.39091039 0.42499998 0.39282447 0.43749997 0.39524305 0.44999993
		 0.39529002 0.46249992 0.39980191 0.4749999 0.39914191 0.48749989 0.39873752 0.49999988
		 0.39601022 0.51249987 0.39938706 0.52499986 0.39597398 0.53749985 0.39277267 0.54999983
		 0.39387321 0.56249982 0.38923782 0.57499981 0.39102533 0.43749994 0.3125 0.44999993
		 0.3125 0.46249992 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375
		 0.3125 0.38749999 0.3125 0.39999998 0.3125 0.41249996 0.3125 0.42499995 0.3125 0
		 0.050000001 0.050000001 0.050000001 0.050000001 0.1 0 0.1 0.1 0.050000001 0.1 0.1
		 0.15000001 0.050000001 0.15000001 0.1 0.2 0.050000001 0.2 0.1 0.25 0.050000001 0.25
		 0.1 0.30000001 0.050000001 0.30000001 0.1 0.35000002 0.050000001 0.35000002 0.1 0.40000004
		 0.050000001 0.40000004 0.1 0.45000005 0.050000001 0.45000005 0.1 0.50000006 0.050000001
		 0.50000006 0.1 0.55000007 0.050000001 0.55000007 0.1 0.60000008 0.050000001 0.60000008
		 0.1 0.6500001 0.050000001 0.6500001 0.1 0.70000011 0.050000001 0.70000011 0.1 0.75000012
		 0.050000001 0.75000012 0.1 0.80000013 0.050000001 0.80000013 0.1 0.85000014 0.050000001
		 0.85000014 0.1 0.90000015 0.050000001 0.90000015 0.1 0.95000017 0.050000001 0.95000017
		 0.1 1.000000119209 0.050000001 1.000000119209 0.1 0.050000001 0.15000001 0 0.15000001
		 0.1 0.15000001 0.15000001 0.15000001 0.2 0.15000001 0.25 0.15000001 0.30000001 0.15000001
		 0.35000002 0.15000001 0.40000004 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001
		 0.55000007 0.15000001 0.60000008 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001
		 0.75000012 0.15000001 0.80000013 0.15000001;
	setAttr ".uvst[0].uvsp[750:999]" 0.85000014 0.15000001 0.90000015 0.15000001
		 0.95000017 0.15000001 1.000000119209 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001
		 0.2 0.2 0.2 0.25 0.2 0.30000001 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2
		 0.50000006 0.2 0.55000007 0.2 0.60000008 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012
		 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015 0.2 0.95000017 0.2 1.000000119209 0.2
		 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25
		 0.35000002 0.25 0.40000004 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008
		 0.25 0.6500001 0.25 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25
		 0.90000015 0.25 0.95000017 0.25 1.000000119209 0.25 0.050000001 0.30000001 0 0.30000001
		 0.1 0.30000001 0.15000001 0.30000001 0.2 0.30000001 0.25 0.30000001 0.30000001 0.30000001
		 0.35000002 0.30000001 0.40000004 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001
		 0.55000007 0.30000001 0.60000008 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001
		 0.75000012 0.30000001 0.80000013 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001
		 0.95000017 0.30000001 1.000000119209 0.30000001 0.050000001 0.35000002 0 0.35000002
		 0.1 0.35000002 0.15000001 0.35000002 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002
		 0.35000002 0.35000002 0.40000004 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002
		 0.55000007 0.35000002 0.60000008 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002
		 0.75000012 0.35000002 0.80000013 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002
		 0.95000017 0.35000002 1.000000119209 0.35000002 0.050000001 0.40000004 0 0.40000004
		 0.1 0.40000004 0.15000001 0.40000004 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004
		 0.35000002 0.40000004 0.40000004 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004
		 0.55000007 0.40000004 0.60000008 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004
		 0.75000012 0.40000004 0.80000013 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004
		 0.95000017 0.40000004 1.000000119209 0.40000004 0.050000001 0.45000005 0 0.45000005
		 0.1 0.45000005 0.15000001 0.45000005 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005
		 0.35000002 0.45000005 0.40000004 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005
		 0.55000007 0.45000005 0.60000008 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005
		 0.75000012 0.45000005 0.80000013 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005
		 0.95000017 0.45000005 1.000000119209 0.45000005 0.050000001 0.50000006 0 0.50000006
		 0.1 0.50000006 0.15000001 0.50000006 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006
		 0.35000002 0.50000006 0.40000004 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006
		 0.55000007 0.50000006 0.60000008 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006
		 0.75000012 0.50000006 0.80000013 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006
		 0.95000017 0.50000006 1.000000119209 0.50000006 0.050000001 0.55000007 0 0.55000007
		 0.1 0.55000007 0.15000001 0.55000007 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007
		 0.35000002 0.55000007 0.40000004 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007
		 0.55000007 0.55000007 0.60000008 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007
		 0.75000012 0.55000007 0.80000013 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007
		 0.95000017 0.55000007 1.000000119209 0.55000007 0.050000001 0.60000008 0 0.60000008
		 0.1 0.60000008 0.15000001 0.60000008 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008
		 0.35000002 0.60000008 0.40000004 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008
		 0.55000007 0.60000008 0.60000008 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008
		 0.75000012 0.60000008 0.80000013 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008
		 0.95000017 0.60000008 1.000000119209 0.60000008 0.050000001 0.6500001 0 0.6500001
		 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001 0.25 0.6500001 0.30000001 0.6500001
		 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005 0.6500001 0.50000006 0.6500001
		 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001 0.6500001 0.70000011 0.6500001
		 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014 0.6500001 0.90000015 0.6500001
		 0.95000017 0.6500001 1.000000119209 0.6500001 0.050000001 0.70000011 0 0.70000011
		 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011
		 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011
		 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011
		 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011
		 0.95000017 0.70000011 1.000000119209 0.70000011 0.050000001 0.75000012 0 0.75000012
		 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012
		 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012
		 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012;
	setAttr ".uvst[0].uvsp[1000:1129]" 0.75000012 0.75000012 0.80000013 0.75000012
		 0.85000014 0.75000012 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209
		 0.75000012 0.050000001 0.80000013 0 0.80000013 0.1 0.80000013 0.15000001 0.80000013
		 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004
		 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008
		 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013
		 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209
		 0.80000013 0.050000001 0.85000014 0 0.85000014 0.1 0.85000014 0.15000001 0.85000014
		 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209
		 0.85000014 0.050000001 0.90000015 0 0.90000015 0.1 0.90000015 0.15000001 0.90000015
		 0.2 0.90000015 0.25 0.90000015 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004
		 0.90000015 0.45000005 0.90000015 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008
		 0.90000015 0.6500001 0.90000015 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013
		 0.90000015 0.85000014 0.90000015 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209
		 0.90000015 0.050000001 0.95000017 0 0.95000017 0.1 0.95000017 0.15000001 0.95000017
		 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004
		 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008
		 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013
		 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209
		 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002
		 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001
		 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875 0 0.92500001 0 0.97500002 0 0.025
		 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001
		 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004
		 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 928 ".vt";
	setAttr ".vt[0:165]"  -3.06937027 -1.45815814 1.40710044 -3.089087725 -1.45815814 1.4484657
		 -3.11979795 -1.45815814 1.48129344 -3.15849543 -1.45815814 1.50237012 -3.2013917 -1.45815814 1.50963259
		 -3.24428797 -1.45815814 1.50237012 -3.28298545 -1.45815814 1.48129344 -3.31369567 -1.45815814 1.4484657
		 -3.33341289 -1.45815814 1.40710044 -3.3402071 -1.45815814 1.36124659 -3.33341289 -1.45815814 1.31539285
		 -3.31369567 -1.45815814 1.27402747 -3.28298545 -1.45815814 1.24119973 -3.24428797 -1.45815814 1.22012317
		 -3.2013917 -1.45815814 1.21286058 -3.15849543 -1.45815814 1.22012317 -3.11979818 -1.45815814 1.24119985
		 -3.089087725 -1.45815814 1.27402747 -3.069370508 -1.45815814 1.31539285 -3.062576294 -1.45815814 1.36124659
		 -3.061014891 -2.83746552 1.41090536 -3.08197999 -2.83746552 1.45570326 -3.11463404 -2.83746552 1.49125504
		 -3.15578055 -2.83746552 1.51408064 -3.2013917 -2.83746552 1.52194595 -3.24700284 -2.83746552 1.51408064
		 -3.28814936 -2.83746552 1.49125504 -3.3208034 -2.83746552 1.45570326 -3.3417685 -2.83746552 1.41090536
		 -3.34899259 -2.83746552 1.36124659 -3.3417685 -2.83746552 1.31158781 -3.3208034 -2.83746552 1.26678991
		 -3.28814936 -2.83746552 1.23123813 -3.24700284 -2.83746552 1.20841253 -3.2013917 -2.83746552 1.20054734
		 -3.15578055 -2.83746552 1.20841265 -3.11463404 -2.83746552 1.23123825 -3.08197999 -2.83746552 1.26679003
		 -3.061014891 -2.83746552 1.31158781 -3.053790808 -2.83746552 1.36124659 -3.2013917 -1.45815814 1.36124659
		 -3.2013917 -2.83746552 1.36124659 -3.00026941299 -2.63995695 1.20504808 -2.96495819 -2.63271666 1.27912819
		 -2.95279074 -2.63239694 1.36124659 -2.96495819 -2.63902998 1.44336498 -3.00026917458 -2.65196586 1.51744509
		 -3.055267811 -2.65368533 1.57623541 -3.12456989 -2.64652824 1.61398113 -3.2013917 -2.65393734 1.62698734
		 -3.27821374 -2.6645143 1.61398113 -3.34751558 -2.67301655 1.57623541 -3.40251398 -2.67861342 1.51744509
		 -3.4378252 -2.68075609 1.44336498 -3.44999266 -2.67923498 1.36124659 -3.4378252 -2.67419887 1.27912819
		 -3.40251398 -2.66614103 1.20504808 -3.34751558 -2.66938043 1.14625788 -3.2782135 -2.66513467 1.10851216
		 -3.2013917 -2.66672564 1.095505953 -3.12456989 -2.65685463 1.10851216 -3.055267811 -2.65089273 1.14625788
		 -3.27821374 -1.91070569 1.61398113 -3.34751558 -1.91085422 1.57623541 -3.40251398 -1.92511582 1.51744509
		 -3.4378252 -1.92302966 1.44336498 -3.44999266 -1.92175138 1.36124659 -3.4378252 -1.91313064 1.27912819
		 -3.40251398 -1.9238044 1.20504808 -3.34751558 -1.91301608 1.14625788 -3.2782135 -1.90289724 1.10851216
		 -3.2013917 -1.90637577 1.095505953 -3.12456989 -1.89172387 1.10851216 -3.055267811 -1.89737403 1.14625788
		 -3.00026941299 -1.8868767 1.20504808 -2.96495819 -1.88876295 1.27912819 -2.95279074 -1.88133836 1.36124659
		 -2.96495819 -1.87062943 1.44336498 -3.00026917458 -1.88691199 1.51744509 -3.055267811 -1.90826094 1.57623541
		 -3.12456989 -1.89701068 1.61398113 -3.2013917 -1.90306079 1.62698734 -3.1699965 -1.53691113 1.35280657
		 -3.17472172 -1.53691113 1.34353316 -3.18208098 -1.53691113 1.33617377 -3.19135427 -1.53691113 1.33144879
		 -3.20163393 -1.53691113 1.32982063 -3.21191359 -1.53691113 1.33144879 -3.22118688 -1.53691113 1.33617377
		 -3.22854614 -1.53691113 1.34353316 -3.23327136 -1.53691113 1.35280657 -3.23489928 -1.53691113 1.3630861
		 -3.23327136 -1.53691113 1.37336564 -3.22854614 -1.53691113 1.38263905 -3.22118688 -1.53691113 1.38999844
		 -3.21191359 -1.53691113 1.39472342 -3.20163393 -1.53691113 1.39635158 -3.19135427 -1.53691113 1.39472342
		 -3.18208098 -1.53691113 1.38999844 -3.17472172 -1.53691113 1.38263905 -3.16999674 -1.53691113 1.37336564
		 -3.16836858 -1.53691113 1.3630861 -3.13913822 -1.52912152 1.34277999 -3.14847207 -1.52912152 1.3244617
		 -3.16300941 -1.52912152 1.30992413 -3.18132782 -1.52912152 1.30059052 -3.20163393 -1.52912152 1.29737425
		 -3.22194004 -1.52912152 1.30059052 -3.24025846 -1.52912152 1.30992413 -3.25479579 -1.52912152 1.3244617
		 -3.26412964 -1.52912152 1.34277999 -3.26734567 -1.52912152 1.3630861 -3.26412964 -1.52912152 1.38339221
		 -3.25479579 -1.52912152 1.40171051 -3.24025846 -1.52912152 1.41624808 -3.22194004 -1.52912152 1.42558169
		 -3.20163393 -1.52912152 1.42879784 -3.18132782 -1.52912152 1.42558169 -3.16300964 -1.52912152 1.41624808
		 -3.14847207 -1.52912152 1.40171051 -3.13913822 -1.52912152 1.3833921 -3.13592219 -1.52912152 1.3630861
		 -3.10981894 -1.51635194 1.33325362 -3.12353134 -1.51635194 1.30634129 -3.14488912 -1.51635194 1.28498352
		 -3.17180133 -1.51635194 1.27127099 -3.20163393 -1.51635194 1.26654601 -3.23146653 -1.51635194 1.27127099
		 -3.25837874 -1.51635194 1.28498352 -3.27973652 -1.51635194 1.30634129 -3.29344893 -1.51635194 1.33325362
		 -3.2981739 -1.51635194 1.3630861 -3.29344893 -1.51635194 1.39291859 -3.27973652 -1.51635194 1.41983092
		 -3.25837874 -1.51635194 1.44118869 -3.23146653 -1.51635194 1.45490122 -3.20163393 -1.51635194 1.4596262
		 -3.17180133 -1.51635194 1.45490122 -3.14488912 -1.51635194 1.44118869 -3.12353134 -1.51635194 1.41983092
		 -3.10981894 -1.51635194 1.39291859 -3.10509396 -1.51635194 1.3630861 -3.082760096 -1.4989171 1.3244617
		 -3.10051394 -1.4989171 1.28961813 -3.12816596 -1.4989171 1.26196599 -3.16300941 -1.4989171 1.24421239
		 -3.20163393 -1.4989171 1.23809481 -3.24025846 -1.4989171 1.24421239 -3.2751019 -1.4989171 1.26196611
		 -3.30275393 -1.4989171 1.28961813 -3.32050753 -1.4989171 1.3244617 -3.32662511 -1.4989171 1.3630861
		 -3.32050753 -1.4989171 1.40171051 -3.30275393 -1.4989171 1.43655407 -3.2751019 -1.4989171 1.4642061
		 -3.24025846 -1.4989171 1.48195982 -3.20163393 -1.4989171 1.48807728 -3.16300964 -1.4989171 1.48195982
		 -3.12816596 -1.4989171 1.4642061 -3.10051394 -1.4989171 1.43655407 -3.082760334 -1.4989171 1.40171051
		 -3.076642752 -1.4989171 1.3630861 -3.058628559 -1.47724617 1.31662083 -3.079986334 -1.47724617 1.27470398
		 -3.11325169 -1.47724617 1.24143851 -3.15516877 -1.47724617 1.22008073;
	setAttr ".vt[166:331]" -3.20163393 -1.47724617 1.21272135 -3.24809909 -1.47724617 1.22008073
		 -3.29001617 -1.47724617 1.24143851 -3.32328153 -1.47724617 1.27470398 -3.3446393 -1.47724617 1.31662083
		 -3.35199857 -1.47724617 1.3630861 -3.3446393 -1.47724617 1.40955138 -3.32328153 -1.47724617 1.45146823
		 -3.29001617 -1.47724617 1.4847337 -3.24809909 -1.47724617 1.50609136 -3.20163393 -1.47724617 1.51345074
		 -3.15516877 -1.47724617 1.50609136 -3.11325192 -1.47724617 1.4847337 -3.079986334 -1.47724617 1.45146823
		 -3.058628559 -1.47724617 1.40955138 -3.051269293 -1.47724617 1.3630861 -3.038018227 -1.25950503 1.30992413
		 -3.062453985 -1.25950503 1.26196599 -3.10051394 -1.25950503 1.22390628 -3.14847207 -1.25950503 1.1994704
		 -3.20163393 -1.25950503 1.19105041 -3.25479579 -1.25950503 1.1994704 -3.30275393 -1.25950503 1.22390628
		 -3.34081364 -1.25950503 1.26196611 -3.36524963 -1.25950503 1.30992413 -3.37366962 -1.25950503 1.3630861
		 -3.36524963 -1.25950503 1.41624808 -3.34081364 -1.25950503 1.4642061 -3.30275393 -1.25950503 1.50226593
		 -3.25479579 -1.25950503 1.52670169 -3.20163393 -1.25950503 1.5351218 -3.14847207 -1.25950503 1.52670169
		 -3.10051394 -1.25950503 1.50226581 -3.062454224 -1.25950503 1.4642061 -3.038018227 -1.25950503 1.41624808
		 -3.029598236 -1.25950503 1.3630861 -3.021436691 -1.23105395 1.30453646 -3.048348904 -1.23105395 1.25171804
		 -3.090265989 -1.23105395 1.2098012 -3.14308429 -1.23105395 1.18288887 -3.20163393 -1.23105395 1.17361546
		 -3.26018357 -1.23105395 1.18288887 -3.31300187 -1.23105395 1.2098012 -3.35491896 -1.23105395 1.25171804
		 -3.38183117 -1.23105395 1.30453646 -3.39110446 -1.23105395 1.3630861 -3.38183117 -1.23105395 1.42163575
		 -3.35491896 -1.23105395 1.47445416 -3.31300187 -1.23105395 1.51637101 -3.26018357 -1.23105395 1.54328322
		 -3.20163393 -1.23105395 1.55255663 -3.14308429 -1.23105395 1.54328322 -3.090265989 -1.23105395 1.51637101
		 -3.048349142 -1.23105395 1.47445405 -3.021436691 -1.23105395 1.42163575 -3.012163401 -1.23105395 1.3630861
		 -3.0092921257 -1.20022559 1.30059052 -3.038018227 -1.20022559 1.24421239 -3.082760096 -1.20022559 1.1994704
		 -3.13913822 -1.20022559 1.1707443 -3.20163393 -1.20022559 1.16084599 -3.26412964 -1.20022559 1.1707443
		 -3.32050776 -1.20022559 1.1994704 -3.36524963 -1.20022559 1.24421239 -3.39397573 -1.20022559 1.30059052
		 -3.40387392 -1.20022559 1.3630861 -3.39397573 -1.20022559 1.42558169 -3.36524963 -1.20022559 1.48195982
		 -3.32050753 -1.20022559 1.52670169 -3.26412964 -1.20022559 1.55542779 -3.20163393 -1.20022559 1.56532609
		 -3.13913822 -1.20022559 1.55542779 -3.082760334 -1.20022559 1.52670169 -3.038018227 -1.20022559 1.48195982
		 -3.0092921257 -1.20022559 1.42558169 -2.99939394 -1.20022559 1.3630861 -3.0018837452 -1.16777921 1.29818332
		 -3.031716347 -1.16777921 1.23963368 -3.078181505 -1.16777921 1.1931684 -3.13673115 -1.16777921 1.16333592
		 -3.20163393 -1.16777921 1.15305638 -3.26653671 -1.16777921 1.16333592 -3.32508636 -1.16777921 1.1931684
		 -3.37155151 -1.16777921 1.23963368 -3.40138412 -1.16777921 1.29818332 -3.41166377 -1.16777921 1.3630861
		 -3.40138412 -1.16777921 1.42798889 -3.37155151 -1.16777921 1.48653853 -3.32508636 -1.16777921 1.53300369
		 -3.26653671 -1.16777921 1.56283617 -3.20163393 -1.16777921 1.57311583 -3.13673115 -1.16777921 1.56283617
		 -3.078181505 -1.16777921 1.53300369 -3.031716347 -1.16777921 1.48653841 -3.0018837452 -1.16777921 1.42798889
		 -2.99160433 -1.16777921 1.3630861 -2.9993937 -1.13451385 1.29737425 -3.029598236 -1.13451385 1.23809481
		 -3.076642752 -1.13451385 1.19105041 -3.13592219 -1.13451385 1.16084599 -3.20163393 -1.13451385 1.15043831
		 -3.26734567 -1.13451385 1.16084599 -3.32662511 -1.13451385 1.19105041 -3.37366962 -1.13451385 1.23809493
		 -3.40387392 -1.13451385 1.29737437 -3.41428161 -1.13451385 1.3630861 -3.40387392 -1.13451385 1.42879784
		 -3.37366962 -1.13451385 1.48807728 -3.32662511 -1.13451385 1.5351218 -3.26734567 -1.13451385 1.56532609
		 -3.20163393 -1.13451385 1.5757339 -3.13592219 -1.13451385 1.56532609 -3.076642752 -1.13451385 1.53512168
		 -3.029598236 -1.13451385 1.48807728 -2.99939394 -1.13451385 1.42879784 -2.98898625 -1.13451385 1.3630861
		 -3.0018837452 -1.1012485 1.29818332 -3.031716347 -1.1012485 1.23963368 -3.078181505 -1.1012485 1.1931684
		 -3.13673115 -1.1012485 1.16333592 -3.20163393 -1.1012485 1.15305638 -3.26653671 -1.1012485 1.16333592
		 -3.32508636 -1.1012485 1.1931684 -3.37155151 -1.1012485 1.23963368 -3.40138412 -1.1012485 1.29818332
		 -3.41166377 -1.1012485 1.3630861 -3.40138412 -1.1012485 1.42798889 -3.37155151 -1.1012485 1.48653853
		 -3.32508636 -1.1012485 1.53300369 -3.26653671 -1.1012485 1.56283617 -3.20163393 -1.1012485 1.57311583
		 -3.13673115 -1.1012485 1.56283617 -3.078181505 -1.1012485 1.53300369 -3.031716347 -1.1012485 1.48653841
		 -3.0018837452 -1.1012485 1.42798889 -2.99160433 -1.1012485 1.3630861 -3.0092921257 -1.068802118 1.30059052
		 -3.038018227 -1.068802118 1.24421239 -3.082760096 -1.068802118 1.1994704 -3.13913822 -1.068802118 1.1707443
		 -3.20163393 -1.068802118 1.16084599 -3.26412964 -1.068802118 1.1707443 -3.32050776 -1.068802118 1.1994704
		 -3.36524963 -1.068802118 1.24421239 -3.39397573 -1.068802118 1.30059052 -3.40387392 -1.068802118 1.3630861
		 -3.39397573 -1.068802118 1.42558169 -3.36524963 -1.068802118 1.48195982 -3.32050753 -1.068802118 1.52670169
		 -3.26412964 -1.068802118 1.55542779 -3.20163393 -1.068802118 1.56532609 -3.13913822 -1.068802118 1.55542779
		 -3.082760334 -1.068802118 1.52670169 -3.038018227 -1.068802118 1.48195982 -3.0092921257 -1.068802118 1.42558169
		 -2.99939394 -1.068802118 1.3630861 -3.021436691 -1.037973762 1.30453646 -3.048348904 -1.037973762 1.25171804
		 -3.090265989 -1.037973762 1.2098012 -3.14308429 -1.037973762 1.18288887 -3.20163393 -1.037973762 1.17361546
		 -3.26018357 -1.037973762 1.18288887 -3.31300187 -1.037973762 1.2098012 -3.35491896 -1.037973762 1.25171804
		 -3.38183117 -1.037973762 1.30453646 -3.39110446 -1.037973762 1.3630861;
	setAttr ".vt[332:497]" -3.38183117 -1.037973762 1.42163575 -3.35491896 -1.037973762 1.47445416
		 -3.31300187 -1.037973762 1.51637101 -3.26018357 -1.037973762 1.54328322 -3.20163393 -1.037973762 1.55255663
		 -3.14308429 -1.037973762 1.54328322 -3.090265989 -1.037973762 1.51637101 -3.048349142 -1.037973762 1.47445405
		 -3.021436691 -1.037973762 1.42163575 -3.012163401 -1.037973762 1.3630861 -3.038018227 -1.0095226765 1.30992413
		 -3.062453985 -1.0095226765 1.26196599 -3.10051394 -1.0095226765 1.22390628 -3.14847207 -1.0095226765 1.1994704
		 -3.20163393 -1.0095226765 1.19105041 -3.25479579 -1.0095226765 1.1994704 -3.30275393 -1.0095226765 1.22390628
		 -3.34081364 -1.0095226765 1.26196611 -3.36524963 -1.0095226765 1.30992413 -3.37366962 -1.0095226765 1.3630861
		 -3.36524963 -1.0095226765 1.41624808 -3.34081364 -1.0095226765 1.4642061 -3.30275393 -1.0095226765 1.50226593
		 -3.25479579 -1.0095226765 1.52670169 -3.20163393 -1.0095226765 1.5351218 -3.14847207 -1.0095226765 1.52670169
		 -3.10051394 -1.0095226765 1.50226581 -3.062454224 -1.0095226765 1.4642061 -3.038018227 -1.0095226765 1.41624808
		 -3.029598236 -1.0095226765 1.3630861 -3.043808222 -0.86513656 1.25417888 -3.067379236 -0.87857509 1.20991278
		 -3.10409236 -0.88924009 1.17478311 -3.15035319 -0.89608741 1.15222836 -3.20163393 -0.8984468 1.14445662
		 -3.25291467 -0.89608741 1.15222847 -3.2991755 -0.88924009 1.17478311 -3.33588839 -0.87857509 1.2099129
		 -3.35945964 -0.86513656 1.25417888 -3.36758161 -0.85023975 1.30324817 -3.35945964 -0.83534282 1.35231745
		 -3.33588839 -0.82190424 1.39658344 -3.2991755 -0.81123924 1.4317131 -3.25291467 -0.80439198 1.45426786
		 -3.20163393 -0.80203259 1.46203959 -3.15035319 -0.80439198 1.45426786 -3.10409236 -0.8112393 1.4317131
		 -3.067379475 -0.8219043 1.39658344 -3.043808222 -0.83534282 1.35231745 -3.035686255 -0.85023975 1.30324817
		 -3.070440769 -0.85105586 1.25894749 -3.090034246 -0.86222678 1.22215128 -3.12055206 -0.87109208 1.19294953
		 -3.1590066 -0.87678397 1.17420089 -3.20163393 -0.8787452 1.16774046 -3.24426126 -0.87678397 1.17420089
		 -3.2827158 -0.87109208 1.19294953 -3.31323361 -0.86222678 1.22215128 -3.33282709 -0.85105586 1.25894761
		 -3.33957863 -0.83867276 1.29973662 -3.33282709 -0.82628977 1.34052563 -3.31323361 -0.81511891 1.37732196
		 -3.2827158 -0.80625355 1.40652359 -3.24426126 -0.80056167 1.42527223 -3.20163393 -0.79860044 1.43173254
		 -3.1590066 -0.80056167 1.42527223 -3.12055206 -0.80625355 1.40652359 -3.090034246 -0.81511891 1.37732184
		 -3.070440769 -0.82628977 1.34052563 -3.076642752 -0.96247822 1.3630861 -3.10030365 -0.83893132 1.26540709
		 -3.11543703 -0.84755945 1.2369864 -3.13900828 -0.85440677 1.21443176 -3.16870975 -0.85880303 1.19995081
		 -3.20163393 -0.86031783 1.19496107 -3.23455811 -0.85880303 1.19995081 -3.26425958 -0.85440677 1.21443176
		 -3.28783059 -0.84755945 1.2369864 -3.30296421 -0.83893132 1.26540709 -3.3081789 -0.82936698 1.29691148
		 -3.30296421 -0.81980258 1.32841587 -3.28783059 -0.81117451 1.35683644 -3.26425958 -0.80432713 1.37939107
		 -3.23455811 -0.79993093 1.39387202 -3.20163393 -0.79841602 1.39886189 -3.16870975 -0.79993087 1.39387202
		 -3.13900828 -0.80432713 1.37939107 -3.11543727 -0.81117451 1.35683632 -3.10030365 -0.81980258 1.32841587
		 -3.095088959 -0.82936698 1.29691148 -3.13266158 -0.82906133 1.27339816 -3.14296246 -0.83493423 1.25405324
		 -3.1590066 -0.83959496 1.23870099 -3.17922354 -0.84258735 1.22884417 -3.20163393 -0.84361845 1.22544777
		 -3.22404432 -0.84258735 1.22884417 -3.24426126 -0.83959496 1.23870099 -3.2603054 -0.83493423 1.25405324
		 -3.27060628 -0.82906127 1.27339816 -3.27415586 -0.82255119 1.29484224 -3.27060628 -0.81604105 1.31628633
		 -3.2603054 -0.81016815 1.33563125 -3.24426126 -0.80550742 1.3509835 -3.22404432 -0.80251497 1.3608402
		 -3.20163393 -0.80148387 1.36423671 -3.17922354 -0.80251497 1.3608402 -3.1590066 -0.80550742 1.3509835
		 -3.14296246 -0.81016815 1.33563125 -3.13266158 -0.81604105 1.31628633 -3.12911201 -0.82255119 1.29484224
		 -3.16671777 -0.82168907 1.28272426 -3.17193246 -0.82466209 1.27293122 -3.18005466 -0.82702154 1.26515949
		 -3.19028902 -0.82853639 1.26016963 -3.20163393 -0.82905835 1.25845027 -3.21297884 -0.82853639 1.26016963
		 -3.2232132 -0.82702154 1.26515949 -3.2313354 -0.82466209 1.27293122 -3.23655009 -0.82168907 1.28272426
		 -3.23834682 -0.81839347 1.29358006 -3.23655009 -0.81509781 1.30443573 -3.2313354 -0.81212473 1.31422877
		 -3.2232132 -0.80976522 1.3220005 -3.21297884 -0.80825043 1.32699037 -3.20163393 -0.80772847 1.32870972
		 -3.19028902 -0.80825043 1.32699037 -3.18005466 -0.80976522 1.3220005 -3.17193246 -0.81212473 1.31422877
		 -3.16671777 -0.81509781 1.30443573 -3.16492105 -0.81839347 1.29358006 -3.20163393 -1.5395292 1.3630861
		 -3.20163393 -0.91041684 1.32151723 -3.023666143 -0.86082029 1.23835969 -3.050281525 -0.87704247 1.18870711
		 -3.09173584 -0.88991654 1.14930248 -3.1439712 -0.89818215 1.12400317 -3.20187473 -0.90103024 1.11528575
		 -3.25977826 -0.89818209 1.12400329 -3.31201363 -0.88991648 1.14930248 -3.35346794 -0.87704247 1.18870711
		 -3.38008332 -0.86082029 1.23835969 -3.38925409 -0.84283781 1.29340005 -3.38008332 -0.82485539 1.34844041
		 -3.35346794 -0.80863315 1.3980931 -3.31201363 -0.79575914 1.43749762 -3.25977826 -0.78749353 1.46279693
		 -3.20187473 -0.78464538 1.47151434 -3.14397144 -0.78749353 1.46279693 -3.09173584 -0.79575914 1.43749762
		 -3.050281525 -0.80863315 1.39809299 -3.023666382 -0.82485539 1.34844041 -3.014495373 -0.84283781 1.29340005
		 -3.012387514 0.79333144 0.6928705 -3.040687084 0.77576309 0.63909763 -3.084765196 0.76182079 0.59642321
		 -3.14030647 0.75286931 0.56902462 -3.20187473 0.74978477 0.55958366 -3.26344299 0.75286931 0.56902462
		 -3.31898427 0.76182079 0.59642327 -3.36306238 0.77576315 0.63909769 -3.39136195 0.79333144 0.6928705
		 -3.40111327 0.81280613 0.75247818 -3.39136195 0.83228076 0.81208587 -3.36306238 0.8498491 0.86585867
		 -3.31898427 0.86379141 0.90853304 -3.26344275 0.87274295 0.93593168;
	setAttr ".vt[498:663]" -3.20187473 0.87582743 0.94537264 -3.14030671 0.87274295 0.93593162
		 -3.084765196 0.86379141 0.90853304 -3.040687323 0.8498491 0.86585867 -3.012387514 0.83228076 0.81208581
		 -3.0026361942 0.81280613 0.75247818 -3.20187473 -0.84283781 1.29340005 -3.20187473 0.81280613 0.75247818
		 -2.93039036 0.63698393 1.017426968 -2.88272572 0.5992412 0.93134475 -2.86630154 0.56665325 0.83289981
		 -2.88272572 0.54241085 0.73172808 -2.93039036 0.52888644 0.6377334 -3.004629612 0.50789458 0.56649047
		 -3.098176956 0.48450083 0.52398944 -3.20187473 0.48829359 0.50547183 -3.30557251 0.5060904 0.51693588
		 -3.39911962 0.53109884 0.55890942 -3.47335911 0.56087279 0.6272831 -3.52102375 0.59249645 0.71536446
		 -3.53744793 0.62287498 0.81453133 -3.52102375 0.64903432 0.91507667 -3.47335911 0.668414 1.0071582794
		 -3.39911962 0.6953581 1.076456547 -3.30557251 0.70506436 1.12342942 -3.20187473 0.71207488 1.13841748
		 -3.098176956 0.6951254 1.12667668 -3.0046298504 0.67316663 1.083706856 -3.30557251 -0.39873958 0.81255645
		 -3.39911962 -0.38375854 0.85780603 -3.47335911 -0.34358406 0.92278171 -3.52102375 -0.31703615 1.012521505
		 -3.53744793 -0.28636628 1.11159313 -3.52102375 -0.26450974 1.21354425 -3.47335911 -0.22264566 1.29828
		 -3.39911962 -0.2125396 1.37307942 -3.30557251 -0.20988302 1.42235541 -3.20187473 -0.20060693 1.43660331
		 -3.098176956 -0.22329496 1.42673731 -3.0046298504 -0.23131548 1.37921369 -2.93039036 -0.26697165 1.31276178
		 -2.88272572 -0.29375935 1.22310042 -2.86630154 -0.3348757 1.12744188 -2.88272548 -0.37993455 1.03307116
		 -2.93039036 -0.38944173 0.93776405 -3.004629612 -0.38687146 0.858823 -3.098176956 -0.4151783 0.81792718
		 -3.20187473 -0.41301674 0.79994249 -3.24365187 -3.2800231 1.33054328 -3.27128029 -3.2800231 1.33712184
		 -3.29320621 -3.2800231 1.34736812 -3.30728364 -3.2800231 1.3602792 -3.31213427 -3.2800231 1.37459135
		 -3.30728364 -3.2800231 1.3889035 -3.29320621 -3.2800231 1.40181458 -3.27128029 -3.2800231 1.41206086
		 -3.24365187 -3.2800231 1.41863942 -3.21302557 -3.2800231 1.42090631 -3.18239927 -3.2800231 1.41863942
		 -3.15477085 -3.2800231 1.41206086 -3.13284492 -3.2800231 1.40181458 -3.11876774 -3.2800231 1.3889035
		 -3.11391687 -3.2800231 1.37459135 -3.11876774 -3.2800231 1.36027932 -3.13284492 -3.2800231 1.34736812
		 -3.15477085 -3.2800231 1.33712184 -3.18239927 -3.2800231 1.33054328 -3.21302557 -3.2800231 1.32827652
		 -3.27352405 -3.2739706 1.28757977 -3.32810044 -3.2739706 1.3005749 -3.37141252 -3.2739706 1.32081521
		 -3.39922047 -3.2739706 1.34631956 -3.40880251 -3.2739706 1.37459135 -3.39922047 -3.2739706 1.40286314
		 -3.37141252 -3.2739706 1.4283675 -3.32810044 -3.2739706 1.4486078 -3.27352405 -3.2739706 1.46160293
		 -3.21302557 -3.2739706 1.46608067 -3.15252709 -3.2739706 1.46160293 -3.097950697 -3.2739706 1.4486078
		 -3.054638624 -3.2739706 1.4283675 -3.026830673 -3.2739706 1.40286314 -3.017248631 -3.2739706 1.37459135
		 -3.026830673 -3.2739706 1.34631956 -3.054638624 -3.2739706 1.32081521 -3.097950697 -3.2739706 1.3005749
		 -3.15252709 -3.2739706 1.28757977 -3.21302557 -3.2739706 1.28310204 -3.30190659 -3.26404929 1.24675882
		 -3.38208723 -3.26404929 1.26585042 -3.44571877 -3.26404929 1.29558647 -3.48657274 -3.26404929 1.33305597
		 -3.50065017 -3.26404929 1.37459135 -3.48657274 -3.26404929 1.41612673 -3.44571877 -3.26404929 1.45359623
		 -3.38208699 -3.26404929 1.48333216 -3.30190635 -3.26404929 1.50242388 -3.21302557 -3.26404929 1.50900245
		 -3.12414479 -3.26404929 1.50242388 -3.043964148 -3.26404929 1.48333216 -2.98033237 -3.26404929 1.45359623
		 -2.9394784 -3.26404929 1.41612661 -2.92540097 -3.26404929 1.37459135 -2.9394784 -3.26404929 1.33305609
		 -2.98033237 -3.26404929 1.29558659 -3.043964148 -3.26404929 1.26585054 -3.12414479 -3.26404929 1.24675882
		 -3.21302557 -3.26404929 1.24018025 -3.32810044 -3.25050282 1.20908546 -3.43191099 -3.25050282 1.23380363
		 -3.51429534 -3.25050282 1.2723031 -3.56718946 -3.25050282 1.32081521 -3.5854156 -3.25050282 1.37459135
		 -3.56718946 -3.25050282 1.4283675 -3.51429534 -3.25050282 1.4768796 -3.43191075 -3.25050282 1.51537895
		 -3.32810044 -3.25050282 1.54009724 -3.21302557 -3.25050282 1.5486145 -3.097950697 -3.25050282 1.54009724
		 -2.99414039 -3.25050282 1.51537895 -2.9117558 -3.25050282 1.4768796 -2.85886168 -3.25050282 1.4283675
		 -2.84063578 -3.25050282 1.37459135 -2.85886168 -3.25050282 1.32081532 -2.9117558 -3.25050282 1.2723031
		 -2.99414039 -3.25050282 1.23380375 -3.097950697 -3.25050282 1.20908558 -3.21302557 -3.25050282 1.20056832
		 -3.35146093 -3.23366523 1.1754874 -3.47634506 -3.23366523 1.20522344 -3.57545376 -3.23366523 1.2515384
		 -3.63908553 -3.23366523 1.30989861 -3.66101146 -3.23366523 1.37459135 -3.63908553 -3.23366523 1.43928409
		 -3.57545376 -3.23366523 1.49764431 -3.47634506 -3.23366523 1.54395914 -3.3514607 -3.23366523 1.57369518
		 -3.21302557 -3.23366523 1.58394146 -3.074590445 -3.23366523 1.57369518 -2.94970608 -3.23366523 1.54395914
		 -2.85059762 -3.23366523 1.49764431 -2.78696585 -3.23366523 1.43928409 -2.76503992 -3.23366523 1.37459135
		 -2.78696585 -3.23366523 1.30989861 -2.85059762 -3.23366523 1.25153852 -2.94970608 -3.23366523 1.20522356
		 -3.074590445 -3.23366523 1.17548752 -3.21302557 -3.23366523 1.16524124 -3.37141252 -3.21395087 1.14679205
		 -3.51429534 -3.21395087 1.18081367 -3.62768793 -3.21395087 1.23380363 -3.70049047 -3.21395087 1.3005749
		 -3.7255764 -3.21395087 1.37459135 -3.70049047 -3.21395087 1.4486078 -3.62768793 -3.21395087 1.51537907
		 -3.51429534 -3.21395087 1.56836891 -3.37141252 -3.21395087 1.60239053 -3.21302557 -3.21395087 1.61411357
		 -3.054638624 -3.21395087 1.60239053 -2.9117558 -3.21395087 1.56836891 -2.79836345 -3.21395087 1.51537895
		 -2.7255609 -3.21395087 1.4486078 -2.70047498 -3.21395087 1.37459135 -2.7255609 -3.21395087 1.3005749
		 -2.79836345 -3.21395087 1.23380375 -2.9117558 -3.21395087 1.18081379;
	setAttr ".vt[664:829]" -3.054638624 -3.21395087 1.14679217 -3.21302557 -3.21395087 1.13506913
		 -3.38746428 -3.19184542 1.12370586 -3.54482746 -3.19184542 1.16117537 -3.66971183 -3.19184542 1.21953559
		 -3.74989223 -3.19184542 1.29307365 -3.77752066 -3.19184542 1.37459135 -3.74989223 -3.19184542 1.45610905
		 -3.66971159 -3.19184542 1.52964711 -3.54482746 -3.19184542 1.58800721 -3.38746405 -3.19184542 1.62547684
		 -3.21302557 -3.19184542 1.63838792 -3.038587093 -3.19184542 1.62547684 -2.88122368 -3.19184542 1.58800721
		 -2.75633955 -3.19184542 1.52964711 -2.67615891 -3.19184542 1.45610893 -2.64853072 -3.19184542 1.37459135
		 -2.67615891 -3.19184542 1.29307377 -2.75633955 -3.19184542 1.21953559 -2.88122368 -3.19184542 1.16117549
		 -3.038587093 -3.19184542 1.12370598 -3.21302557 -3.19184542 1.11079478 -3.39922047 -3.16789293 1.10679722
		 -3.56718946 -3.16789293 1.14679205 -3.70049047 -3.16789293 1.20908546 -3.78607488 -3.16789293 1.28757977
		 -3.81556511 -3.16789293 1.37459135 -3.78607488 -3.16789293 1.46160293 -3.70049047 -3.16789293 1.54009724
		 -3.56718946 -3.16789293 1.60239065 -3.39922047 -3.16789293 1.64238548 -3.21302557 -3.16789293 1.65616667
		 -3.026830673 -3.16789293 1.64238548 -2.85886168 -3.16789293 1.60239053 -2.7255609 -3.16789293 1.54009724
		 -2.6399765 -3.16789293 1.46160293 -2.61048603 -3.16789293 1.37459135 -2.6399765 -3.16789293 1.28757977
		 -2.7255609 -3.16789293 1.20908558 -2.85886168 -3.16789293 1.14679217 -3.026830673 -3.16789293 1.10679734
		 -3.21302557 -3.16789293 1.093016148 -3.40639234 -3.14268303 1.096482515 -3.58083081 -3.14268303 1.13801789
		 -3.71926618 -3.14268303 1.20271063 -3.80814695 -3.14268303 1.28422832 -3.83877325 -3.14268303 1.37459135
		 -3.80814695 -3.14268303 1.46495438 -3.71926594 -3.14268303 1.54647195 -3.58083081 -3.14268303 1.61116469
		 -3.4063921 -3.14268303 1.65270007 -3.21302557 -3.14268303 1.6670121 -3.019659042 -3.14268303 1.65270007
		 -2.84522033 -3.14268303 1.61116469 -2.7067852 -3.14268303 1.54647195 -2.61790442 -3.14268303 1.46495438
		 -2.58727813 -3.14268303 1.37459135 -2.61790442 -3.14268303 1.28422844 -2.7067852 -3.14268303 1.20271075
		 -2.84522057 -3.14268303 1.13801801 -3.019659042 -3.14268303 1.096482754 -3.21302557 -3.14268303 1.082170725
		 -3.40880251 -3.11683702 1.093015909 -3.5854156 -3.11683702 1.13506901 -3.7255764 -3.11683702 1.2005682
		 -3.81556511 -3.11683702 1.28310192 -3.84657335 -3.11683702 1.37459135 -3.81556511 -3.11683702 1.46608078
		 -3.7255764 -3.11683702 1.5486145 -3.58541536 -3.11683702 1.61411369 -3.40880251 -3.11683702 1.65616667
		 -3.21302557 -3.11683702 1.67065716 -3.017248631 -3.11683702 1.65616667 -2.84063578 -3.11683702 1.61411357
		 -2.70047498 -3.11683702 1.5486145 -2.61048603 -3.11683702 1.46608067 -2.57947826 -3.11683702 1.37459135
		 -2.61048603 -3.11683702 1.28310204 -2.70047498 -3.11683702 1.20056832 -2.84063578 -3.11683702 1.13506913
		 -3.017248631 -3.11683702 1.093016148 -3.21302557 -3.11683702 1.078525543 -3.40639234 -3.09099102 1.096482515
		 -3.58083081 -3.09099102 1.13801789 -3.71926618 -3.09099102 1.20271063 -3.80814695 -3.09099102 1.28422832
		 -3.83877325 -3.09099102 1.37459135 -3.80814695 -3.09099102 1.46495438 -3.71926594 -3.09099102 1.54647195
		 -3.58083081 -3.09099102 1.61116469 -3.4063921 -3.09099102 1.65270007 -3.21302557 -3.09099102 1.6670121
		 -3.019659042 -3.09099102 1.65270007 -2.84522033 -3.09099102 1.61116469 -2.7067852 -3.09099102 1.54647195
		 -2.61790442 -3.09099102 1.46495438 -2.58727813 -3.09099102 1.37459135 -2.61790442 -3.09099102 1.28422844
		 -2.7067852 -3.09099102 1.20271075 -2.84522057 -3.09099102 1.13801801 -3.019659042 -3.09099102 1.096482754
		 -3.21302557 -3.09099102 1.082170725 -3.39922047 -3.065781116 1.10679722 -3.56718946 -3.065781116 1.14679205
		 -3.70049047 -3.065781116 1.20908546 -3.78607488 -3.065781116 1.28757977 -3.81556511 -3.065781116 1.37459135
		 -3.78607488 -3.065781116 1.46160293 -3.70049047 -3.065781116 1.54009724 -3.56718946 -3.065781116 1.60239065
		 -3.39922047 -3.065781116 1.64238548 -3.21302557 -3.065781116 1.65616667 -3.026830673 -3.065781116 1.64238548
		 -2.85886168 -3.065781116 1.60239053 -2.7255609 -3.065781116 1.54009724 -2.6399765 -3.065781116 1.46160293
		 -2.61048603 -3.065781116 1.37459135 -2.6399765 -3.065781116 1.28757977 -2.7255609 -3.065781116 1.20908558
		 -2.85886168 -3.065781116 1.14679217 -3.026830673 -3.065781116 1.10679734 -3.21302557 -3.065781116 1.093016148
		 -3.38746428 -3.041828632 1.12370586 -3.54482746 -3.041828632 1.16117537 -3.66971183 -3.041828632 1.21953559
		 -3.74989223 -3.041828632 1.29307365 -3.77752066 -3.041828632 1.37459135 -3.74989223 -3.041828632 1.45610905
		 -3.66971159 -3.041828632 1.52964711 -3.54482746 -3.041828632 1.58800721 -3.38746405 -3.041828632 1.62547684
		 -3.21302557 -3.041828632 1.63838792 -3.038587093 -3.041828632 1.62547684 -2.88122368 -3.041828632 1.58800721
		 -2.75633955 -3.041828632 1.52964711 -2.67615891 -3.041828632 1.45610893 -2.64853072 -3.041828632 1.37459135
		 -2.67615891 -3.041828632 1.29307377 -2.75633955 -3.041828632 1.21953559 -2.88122368 -3.041828632 1.16117549
		 -3.038587093 -3.041828632 1.12370598 -3.21302557 -3.041828632 1.11079478 -3.37141252 -3.019723177 1.14679205
		 -3.51429534 -3.019723177 1.18081367 -3.62768793 -3.019723177 1.23380363 -3.70049047 -3.019723177 1.3005749
		 -3.7255764 -3.019723177 1.37459135 -3.70049047 -3.019723177 1.4486078 -3.62768793 -3.019723177 1.51537907
		 -3.51429534 -3.019723177 1.56836891 -3.37141252 -3.019723177 1.60239053 -3.21302557 -3.019723177 1.61411357
		 -3.054638624 -3.019723177 1.60239053 -2.9117558 -3.019723177 1.56836891 -2.79836345 -3.019723177 1.51537895
		 -2.7255609 -3.019723177 1.4486078 -2.70047498 -3.019723177 1.37459135 -2.7255609 -3.019723177 1.3005749
		 -2.79836345 -3.019723177 1.23380375 -2.9117558 -3.019723177 1.18081379 -3.054638624 -3.019723177 1.14679217
		 -3.21302557 -3.019723177 1.13506913 -3.35146093 -3.000008821487 1.1754874 -3.47634506 -3.000008821487 1.20522344
		 -3.57545376 -3.000008821487 1.2515384 -3.63908553 -3.000008821487 1.30989861;
	setAttr ".vt[830:927]" -3.66101146 -3.000008821487 1.37459135 -3.63908553 -3.000008821487 1.43928409
		 -3.57545376 -3.000008821487 1.49764431 -3.47634506 -3.000008821487 1.54395914 -3.3514607 -3.000008821487 1.57369518
		 -3.21302557 -3.000008821487 1.58394146 -3.074590445 -3.000008821487 1.57369518 -2.94970608 -3.000008821487 1.54395914
		 -2.85059762 -3.000008821487 1.49764431 -2.78696585 -3.000008821487 1.43928409 -2.76503992 -3.000008821487 1.37459135
		 -2.78696585 -3.000008821487 1.30989861 -2.85059762 -3.000008821487 1.25153852 -2.94970608 -3.000008821487 1.20522356
		 -3.074590445 -3.000008821487 1.17548752 -3.21302557 -3.000008821487 1.16524124 -3.32810044 -2.98317122 1.20908546
		 -3.43191099 -2.98317122 1.23380363 -3.51429534 -2.98317122 1.2723031 -3.56718946 -2.98317122 1.32081521
		 -3.5854156 -2.98317122 1.37459135 -3.56718946 -2.98317122 1.4283675 -3.51429534 -2.98317122 1.4768796
		 -3.43191075 -2.98317122 1.51537895 -3.32810044 -2.98317122 1.54009724 -3.21302557 -2.98317122 1.5486145
		 -3.097950697 -2.98317122 1.54009724 -2.99414039 -2.98317122 1.51537895 -2.9117558 -2.98317122 1.4768796
		 -2.85886168 -2.98317122 1.4283675 -2.84063578 -2.98317122 1.37459135 -2.85886168 -2.98317122 1.32081532
		 -2.9117558 -2.98317122 1.2723031 -2.99414039 -2.98317122 1.23380375 -3.097950697 -2.98317122 1.20908558
		 -3.21302557 -2.98317122 1.20056832 -3.30190659 -2.96962476 1.24675882 -3.38208723 -2.96962476 1.26585042
		 -3.44571877 -2.96962476 1.29558647 -3.48657274 -2.96962476 1.33305597 -3.50065017 -2.96962476 1.37459135
		 -3.48657274 -2.96962476 1.41612673 -3.44571877 -2.96962476 1.45359623 -3.38208699 -2.96962476 1.48333216
		 -3.30190635 -2.96962476 1.50242388 -3.21302557 -2.96962476 1.50900245 -3.12414479 -2.96962476 1.50242388
		 -3.043964148 -2.96962476 1.48333216 -2.98033237 -2.96962476 1.45359623 -2.9394784 -2.96962476 1.41612661
		 -2.92540097 -2.96962476 1.37459135 -2.9394784 -2.96962476 1.33305609 -2.98033237 -2.96962476 1.29558659
		 -3.043964148 -2.96962476 1.26585054 -3.12414479 -2.96962476 1.24675882 -3.21302557 -2.96962476 1.24018025
		 -3.27352405 -2.83594275 1.23404586 -3.32810044 -2.83594275 1.25326157 -3.37141252 -2.83594275 1.28319073
		 -3.39922047 -2.83594275 1.32090378 -3.40880251 -2.83594275 1.36270881 -3.39922047 -2.83594275 1.40451396
		 -3.37141252 -2.83594275 1.44222689 -3.32810044 -2.83594275 1.47215617 -3.27352405 -2.83594275 1.49137175
		 -3.21302557 -2.83594275 1.49799311 -3.15252709 -2.83594275 1.49137175 -3.097950697 -2.83594275 1.47215605
		 -3.054638624 -2.83594275 1.44222689 -3.026830673 -2.83594275 1.40451396 -3.017248631 -2.83594275 1.36270881
		 -3.026830673 -2.83594275 1.32090378 -3.054638624 -2.83594275 1.28319085 -3.097950697 -2.83594275 1.25326169
		 -3.15252709 -2.83594275 1.23404598 -3.21302557 -2.83594275 1.22742462 -3.24365187 -2.82989049 1.29757547
		 -3.27128029 -2.82989049 1.30730307 -3.29320621 -2.82989049 1.32245421 -3.30728364 -2.82989049 1.3415457
		 -3.31213427 -2.82989049 1.36270881 -3.30728364 -2.82989049 1.38387203 -3.29320621 -2.82989049 1.40296352
		 -3.27128029 -2.82989049 1.41811466 -3.24365187 -2.82989049 1.42784226 -3.21302557 -2.82989049 1.43119419
		 -3.18239927 -2.82989049 1.42784226 -3.15477085 -2.82989049 1.41811466 -3.13284492 -2.82989049 1.40296352
		 -3.11876774 -2.82989049 1.38387203 -3.11391687 -2.82989049 1.36270881 -3.11876774 -2.82989049 1.3415457
		 -3.13284492 -2.82989049 1.32245421 -3.15477085 -2.82989049 1.30730307 -3.18239927 -2.82989049 1.29757547
		 -3.21302557 -2.82989049 1.29422355 -3.21302557 -3.28205705 1.37459135 -3.21302557 -2.8278563 1.36270881;
	setAttr -s 1920 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 77 1 1 78 1
		 2 79 1 3 80 1 4 81 1 5 62 1 6 63 1 7 64 1 8 65 1 9 66 1 10 67 1 11 68 1 12 69 1 13 70 1
		 14 71 1 15 72 1 16 73 1 17 74 1 18 75 1 19 76 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1 25 41 1 26 41 1
		 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1 42 37 1 43 38 1 44 39 1 45 20 1 46 21 1 47 22 1 48 23 1 49 24 1 50 25 1
		 51 26 1 52 27 1 53 28 1 54 29 1 55 30 1 56 31 1 57 32 1 58 33 1 59 34 1 60 35 1 61 36 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 42 1 62 50 1 63 51 1
		 64 52 1 65 53 1 66 54 1 67 55 1 68 56 1 69 57 1 70 58 1 71 59 1 72 60 1 73 61 1 74 42 1
		 75 43 1 76 44 1 77 45 1 78 46 1 79 47 1 80 48 1 81 49 1 62 63 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 68 1;
	setAttr ".ed[166:331]" 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 62 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 82 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 102 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 122 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1
		 160 161 1 161 142 1 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1
		 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1
		 178 179 1 179 180 1 180 181 1 181 162 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1
		 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1
		 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1 201 182 1 202 203 1 203 204 1 204 205 1
		 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1
		 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1 220 221 1 221 202 1 222 223 1
		 223 224 1 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1
		 232 233 1 233 234 1;
	setAttr ".ed[332:497]" 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 240 1
		 240 241 1 241 222 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1
		 258 259 1 259 260 1 260 261 1 261 242 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1
		 267 268 1 268 269 1 269 270 1 270 271 1 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1
		 276 277 1 277 278 1 278 279 1 279 280 1 280 281 1 281 262 1 282 283 1 283 284 1 284 285 1
		 285 286 1 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1
		 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1 301 282 1 302 303 1
		 303 304 1 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1
		 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 319 320 1 320 321 1
		 321 302 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1 338 339 1
		 339 340 1 340 341 1 341 322 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1
		 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1
		 357 358 1 358 359 1 359 360 1 360 361 1 361 342 1 362 363 1 363 364 1 364 365 1 365 366 1
		 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1
		 375 376 1 376 377 1 377 378 1 378 379 1 379 380 1 380 381 1 381 362 1 382 383 1 383 384 1
		 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1
		 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 400 1;
	setAttr ".ed[498:663]" 400 401 1 401 382 1 402 403 1 403 404 1 404 405 1 405 406 1
		 406 407 1 407 408 1 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1
		 415 416 1 416 417 1 417 418 1 418 419 1 419 420 1 420 421 1 421 402 1 422 423 1 423 424 1
		 424 425 1 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1 430 431 1 431 432 1 432 433 1
		 433 434 1 434 435 1 435 436 1 436 437 1 437 438 1 438 439 1 439 440 1 440 441 1 441 422 1
		 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1 448 449 1 449 450 1 450 451 1
		 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 456 457 1 457 458 1 458 459 1 459 460 1
		 460 461 1 461 442 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1
		 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1
		 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1
		 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1
		 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1
		 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1
		 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1
		 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1;
	setAttr ".ed[664:829]" 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1
		 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1
		 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1
		 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1
		 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1
		 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1
		 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1
		 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1
		 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1
		 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1
		 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1
		 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1 290 310 1
		 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1 299 319 1
		 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1 308 328 1
		 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1 317 337 1
		 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1 326 346 1
		 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1
		 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1 344 364 1
		 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1;
	setAttr ".ed[830:995]" 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1
		 358 378 1 359 379 1 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1
		 367 387 1 368 388 1 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1
		 376 396 1 377 397 1 378 398 1 379 399 1 380 400 1 381 401 1 382 402 1 383 403 1 384 404 1
		 385 405 1 386 406 1 387 407 1 388 408 1 389 409 1 390 410 1 391 411 1 392 412 1 393 413 1
		 394 414 1 395 415 1 396 416 1 397 417 1 398 418 1 399 419 1 400 420 1 401 421 1 402 422 1
		 403 423 1 404 424 1 405 425 1 406 426 1 407 427 1 408 428 1 409 429 1 410 430 1 411 431 1
		 412 432 1 413 433 1 414 434 1 415 435 1 416 436 1 417 437 1 418 438 1 419 439 1 420 440 1
		 421 441 1 422 442 1 423 443 1 424 444 1 425 445 1 426 446 1 427 447 1 428 448 1 429 449 1
		 430 450 1 431 451 1 432 452 1 433 453 1 434 454 1 435 455 1 436 456 1 437 457 1 438 458 1
		 439 459 1 440 460 1 441 461 1 462 82 1 462 83 1 462 84 1 462 85 1 462 86 1 462 87 1
		 462 88 1 462 89 1 462 90 1 462 91 1 462 92 1 462 93 1 462 94 1 462 95 1 462 96 1
		 462 97 1 462 98 1 462 99 1 462 100 1 462 101 1 442 463 1 443 463 1 444 463 1 445 463 1
		 446 463 1 447 463 1 448 463 1 449 463 1 450 463 1 451 463 1 452 463 1 453 463 1 454 463 1
		 455 463 1 456 463 1 457 463 1 458 463 1 459 463 1 460 463 1 461 463 1 464 465 0 465 466 0
		 466 467 0 467 468 0 468 469 0 469 470 0 470 471 0 471 472 0 472 473 0 473 474 0 474 475 0
		 475 476 0 476 477 0 477 478 0 478 479 0 479 480 0 480 481 0 481 482 0 482 483 0 483 464 0
		 484 485 0 485 486 0 486 487 0 487 488 0 488 489 0 489 490 0 490 491 0 491 492 0 492 493 0
		 493 494 0 494 495 0 495 496 0 496 497 0 497 498 0 498 499 0 499 500 0;
	setAttr ".ed[996:1161]" 500 501 0 501 502 0 502 503 0 503 484 0 464 541 1 465 542 1
		 466 543 1 467 544 1 468 545 1 469 526 1 470 527 1 471 528 1 472 529 1 473 530 1 474 531 1
		 475 532 1 476 533 1 477 534 1 478 535 1 479 536 1 480 537 1 481 538 1 482 539 1 483 540 1
		 504 464 1 504 465 1 504 466 1 504 467 1 504 468 1 504 469 1 504 470 1 504 471 1 504 472 1
		 504 473 1 504 474 1 504 475 1 504 476 1 504 477 1 504 478 1 504 479 1 504 480 1 504 481 1
		 504 482 1 504 483 1 484 505 1 485 505 1 486 505 1 487 505 1 488 505 1 489 505 1 490 505 1
		 491 505 1 492 505 1 493 505 1 494 505 1 495 505 1 496 505 1 497 505 1 498 505 1 499 505 1
		 500 505 1 501 505 1 502 505 1 503 505 1 506 501 1 507 502 1 508 503 1 509 484 1 510 485 1
		 511 486 1 512 487 1 513 488 1 514 489 1 515 490 1 516 491 1 517 492 1 518 493 1 519 494 1
		 520 495 1 521 496 1 522 497 1 523 498 1 524 499 1 525 500 1 506 507 1 507 508 1 508 509 1
		 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1 517 518 1
		 518 519 1 519 520 1 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 506 1 526 514 1
		 527 515 1 528 516 1 529 517 1 530 518 1 531 519 1 532 520 1 533 521 1 534 522 1 535 523 1
		 536 524 1 537 525 1 538 506 1 539 507 1 540 508 1 541 509 1 542 510 1 543 511 1 544 512 1
		 545 513 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 536 537 1 537 538 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1
		 543 544 1 544 545 1 545 526 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1
		 552 553 1 553 554 1 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1
		 561 562 1 562 563 1 563 564 1 564 565 1 565 546 1 566 567 1 567 568 1;
	setAttr ".ed[1162:1327]" 568 569 1 569 570 1 570 571 1 571 572 1 572 573 1 573 574 1
		 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1 582 583 1
		 583 584 1 584 585 1 585 566 1 586 587 1 587 588 1 588 589 1 589 590 1 590 591 1 591 592 1
		 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1 597 598 1 598 599 1 599 600 1 600 601 1
		 601 602 1 602 603 1 603 604 1 604 605 1 605 586 1 606 607 1 607 608 1 608 609 1 609 610 1
		 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1
		 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 606 1 626 627 1 627 628 1
		 628 629 1 629 630 1 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1
		 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 626 1
		 646 647 1 647 648 1 648 649 1 649 650 1 650 651 1 651 652 1 652 653 1 653 654 1 654 655 1
		 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1 663 664 1
		 664 665 1 665 646 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 680 681 1 681 682 1
		 682 683 1 683 684 1 684 685 1 685 666 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1
		 691 692 1 692 693 1 693 694 1 694 695 1 695 696 1 696 697 1 697 698 1 698 699 1 699 700 1
		 700 701 1 701 702 1 702 703 1 703 704 1 704 705 1 705 686 1 706 707 1 707 708 1 708 709 1
		 709 710 1 710 711 1 711 712 1 712 713 1 713 714 1 714 715 1 715 716 1 716 717 1 717 718 1
		 718 719 1 719 720 1 720 721 1 721 722 1 722 723 1 723 724 1 724 725 1 725 706 1 726 727 1
		 727 728 1 728 729 1 729 730 1 730 731 1 731 732 1 732 733 1 733 734 1;
	setAttr ".ed[1328:1493]" 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 744 745 1 745 726 1 746 747 1 747 748 1 748 749 1
		 749 750 1 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1
		 758 759 1 759 760 1 760 761 1 761 762 1 762 763 1 763 764 1 764 765 1 765 746 1 766 767 1
		 767 768 1 768 769 1 769 770 1 770 771 1 771 772 1 772 773 1 773 774 1 774 775 1 775 776 1
		 776 777 1 777 778 1 778 779 1 779 780 1 780 781 1 781 782 1 782 783 1 783 784 1 784 785 1
		 785 766 1 786 787 1 787 788 1 788 789 1 789 790 1 790 791 1 791 792 1 792 793 1 793 794 1
		 794 795 1 795 796 1 796 797 1 797 798 1 798 799 1 799 800 1 800 801 1 801 802 1 802 803 1
		 803 804 1 804 805 1 805 786 1 806 807 1 807 808 1 808 809 1 809 810 1 810 811 1 811 812 1
		 812 813 1 813 814 1 814 815 1 815 816 1 816 817 1 817 818 1 818 819 1 819 820 1 820 821 1
		 821 822 1 822 823 1 823 824 1 824 825 1 825 806 1 826 827 1 827 828 1 828 829 1 829 830 1
		 830 831 1 831 832 1 832 833 1 833 834 1 834 835 1 835 836 1 836 837 1 837 838 1 838 839 1
		 839 840 1 840 841 1 841 842 1 842 843 1 843 844 1 844 845 1 845 826 1 846 847 1 847 848 1
		 848 849 1 849 850 1 850 851 1 851 852 1 852 853 1 853 854 1 854 855 1 855 856 1 856 857 1
		 857 858 1 858 859 1 859 860 1 860 861 1 861 862 1 862 863 1 863 864 1 864 865 1 865 846 1
		 866 867 1 867 868 1 868 869 1 869 870 1 870 871 1 871 872 1 872 873 1 873 874 1 874 875 1
		 875 876 1 876 877 1 877 878 1 878 879 1 879 880 1 880 881 1 881 882 1 882 883 1 883 884 1
		 884 885 1 885 866 1 886 887 1 887 888 1 888 889 1 889 890 1 890 891 1 891 892 1 892 893 1
		 893 894 1 894 895 1 895 896 1 896 897 1 897 898 1 898 899 1 899 900 1;
	setAttr ".ed[1494:1659]" 900 901 1 901 902 1 902 903 1 903 904 1 904 905 1 905 886 1
		 906 907 1 907 908 1 908 909 1 909 910 1 910 911 1 911 912 1 912 913 1 913 914 1 914 915 1
		 915 916 1 916 917 1 917 918 1 918 919 1 919 920 1 920 921 1 921 922 1 922 923 1 923 924 1
		 924 925 1 925 906 1 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1 552 572 1
		 553 573 1 554 574 1 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1 561 581 1
		 562 582 1 563 583 1 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1 570 590 1
		 571 591 1 572 592 1 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1 579 599 1
		 580 600 1 581 601 1 582 602 1 583 603 1 584 604 1 585 605 1 586 606 1 587 607 1 588 608 1
		 589 609 1 590 610 1 591 611 1 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1
		 598 618 1 599 619 1 600 620 1 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1
		 607 627 1 608 628 1 609 629 1 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1
		 616 636 1 617 637 1 618 638 1 619 639 1 620 640 1 621 641 1 622 642 1 623 643 1 624 644 1
		 625 645 1 626 646 1 627 647 1 628 648 1 629 649 1 630 650 1 631 651 1 632 652 1 633 653 1
		 634 654 1 635 655 1 636 656 1 637 657 1 638 658 1 639 659 1 640 660 1 641 661 1 642 662 1
		 643 663 1 644 664 1 645 665 1 646 666 1 647 667 1 648 668 1 649 669 1 650 670 1 651 671 1
		 652 672 1 653 673 1 654 674 1 655 675 1 656 676 1 657 677 1 658 678 1 659 679 1 660 680 1
		 661 681 1 662 682 1 663 683 1 664 684 1 665 685 1 666 686 1 667 687 1 668 688 1 669 689 1
		 670 690 1 671 691 1 672 692 1 673 693 1 674 694 1 675 695 1 676 696 1 677 697 1 678 698 1
		 679 699 1 680 700 1 681 701 1 682 702 1 683 703 1 684 704 1 685 705 1;
	setAttr ".ed[1660:1825]" 686 706 1 687 707 1 688 708 1 689 709 1 690 710 1 691 711 1
		 692 712 1 693 713 1 694 714 1 695 715 1 696 716 1 697 717 1 698 718 1 699 719 1 700 720 1
		 701 721 1 702 722 1 703 723 1 704 724 1 705 725 1 706 726 1 707 727 1 708 728 1 709 729 1
		 710 730 1 711 731 1 712 732 1 713 733 1 714 734 1 715 735 1 716 736 1 717 737 1 718 738 1
		 719 739 1 720 740 1 721 741 1 722 742 1 723 743 1 724 744 1 725 745 1 726 746 1 727 747 1
		 728 748 1 729 749 1 730 750 1 731 751 1 732 752 1 733 753 1 734 754 1 735 755 1 736 756 1
		 737 757 1 738 758 1 739 759 1 740 760 1 741 761 1 742 762 1 743 763 1 744 764 1 745 765 1
		 746 766 1 747 767 1 748 768 1 749 769 1 750 770 1 751 771 1 752 772 1 753 773 1 754 774 1
		 755 775 1 756 776 1 757 777 1 758 778 1 759 779 1 760 780 1 761 781 1 762 782 1 763 783 1
		 764 784 1 765 785 1 766 786 1 767 787 1 768 788 1 769 789 1 770 790 1 771 791 1 772 792 1
		 773 793 1 774 794 1 775 795 1 776 796 1 777 797 1 778 798 1 779 799 1 780 800 1 781 801 1
		 782 802 1 783 803 1 784 804 1 785 805 1 786 806 1 787 807 1 788 808 1 789 809 1 790 810 1
		 791 811 1 792 812 1 793 813 1 794 814 1 795 815 1 796 816 1 797 817 1 798 818 1 799 819 1
		 800 820 1 801 821 1 802 822 1 803 823 1 804 824 1 805 825 1 806 826 1 807 827 1 808 828 1
		 809 829 1 810 830 1 811 831 1 812 832 1 813 833 1 814 834 1 815 835 1 816 836 1 817 837 1
		 818 838 1 819 839 1 820 840 1 821 841 1 822 842 1 823 843 1 824 844 1 825 845 1 826 846 1
		 827 847 1 828 848 1 829 849 1 830 850 1 831 851 1 832 852 1 833 853 1 834 854 1 835 855 1
		 836 856 1 837 857 1 838 858 1 839 859 1 840 860 1 841 861 1 842 862 1 843 863 1 844 864 1
		 845 865 1 846 866 1 847 867 1 848 868 1 849 869 1 850 870 1 851 871 1;
	setAttr ".ed[1826:1919]" 852 872 1 853 873 1 854 874 1 855 875 1 856 876 1 857 877 1
		 858 878 1 859 879 1 860 880 1 861 881 1 862 882 1 863 883 1 864 884 1 865 885 1 866 886 1
		 867 887 1 868 888 1 869 889 1 870 890 1 871 891 1 872 892 1 873 893 1 874 894 1 875 895 1
		 876 896 1 877 897 1 878 898 1 879 899 1 880 900 1 881 901 1 882 902 1 883 903 1 884 904 1
		 885 905 1 886 906 1 887 907 1 888 908 1 889 909 1 890 910 1 891 911 1 892 912 1 893 913 1
		 894 914 1 895 915 1 896 916 1 897 917 1 898 918 1 899 919 1 900 920 1 901 921 1 902 922 1
		 903 923 1 904 924 1 905 925 1 926 546 1 926 547 1 926 548 1 926 549 1 926 550 1 926 551 1
		 926 552 1 926 553 1 926 554 1 926 555 1 926 556 1 926 557 1 926 558 1 926 559 1 926 560 1
		 926 561 1 926 562 1 926 563 1 926 564 1 926 565 1 906 927 1 907 927 1 908 927 1 909 927 1
		 910 927 1 911 927 1 912 927 1 913 927 1 914 927 1 915 927 1 916 927 1 917 927 1 918 927 1
		 919 927 1 920 927 1 921 927 1 922 927 1 923 927 1 924 927 1 925 927 1;
	setAttr -s 1000 -ch 3840 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 123 104 -21 -104
		mu 0 4 88 89 42 41
		f 4 124 105 -22 -105
		mu 0 4 89 90 43 42
		f 4 125 106 -23 -106
		mu 0 4 90 91 44 43
		f 4 126 107 -24 -107
		mu 0 4 91 92 45 44
		f 4 127 108 -25 -108
		mu 0 4 92 93 46 45
		f 4 128 109 -26 -109
		mu 0 4 93 94 47 46
		f 4 129 110 -27 -110
		mu 0 4 94 95 48 47
		f 4 130 111 -28 -111
		mu 0 4 95 96 49 48
		f 4 131 112 -29 -112
		mu 0 4 96 97 50 49
		f 4 132 113 -30 -113
		mu 0 4 97 98 51 50
		f 4 133 114 -31 -114
		mu 0 4 98 99 52 51
		f 4 134 115 -32 -115
		mu 0 4 99 100 53 52
		f 4 135 116 -33 -116
		mu 0 4 100 101 54 53
		f 4 136 117 -34 -117
		mu 0 4 101 102 55 54
		f 4 137 118 -35 -118
		mu 0 4 102 103 56 55
		f 4 138 119 -36 -119
		mu 0 4 103 104 57 56
		f 4 139 100 -37 -120
		mu 0 4 104 84 58 57
		f 4 120 101 -38 -101
		mu 0 4 84 85 59 58
		f 4 121 102 -39 -102
		mu 0 4 85 86 60 59
		f 4 122 103 -40 -103
		mu 0 4 86 87 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83
		f 4 172 153 -121 -153
		mu 0 4 117 118 85 84
		f 4 173 154 -122 -154
		mu 0 4 118 119 86 85
		f 4 174 155 -123 -155
		mu 0 4 119 120 87 86
		f 4 175 156 -124 -156
		mu 0 4 121 122 89 88
		f 4 176 157 -125 -157
		mu 0 4 122 123 90 89
		f 4 177 158 -126 -158
		mu 0 4 123 124 91 90
		f 4 178 159 -127 -159
		mu 0 4 124 125 92 91
		f 4 179 140 -128 -160
		mu 0 4 125 105 93 92
		f 4 160 141 -129 -141
		mu 0 4 105 106 94 93
		f 4 161 142 -130 -142
		mu 0 4 106 107 95 94
		f 4 162 143 -131 -143
		mu 0 4 107 108 96 95
		f 4 163 144 -132 -144
		mu 0 4 108 109 97 96
		f 4 164 145 -133 -145
		mu 0 4 109 110 98 97
		f 4 165 146 -134 -146
		mu 0 4 110 111 99 98
		f 4 166 147 -135 -147
		mu 0 4 111 112 100 99
		f 4 167 148 -136 -148
		mu 0 4 112 113 101 100
		f 4 168 149 -137 -149
		mu 0 4 113 114 102 101
		f 4 169 150 -138 -150
		mu 0 4 114 115 103 102
		f 4 170 151 -139 -151
		mu 0 4 115 116 104 103
		f 4 171 152 -140 -152
		mu 0 4 116 117 84 104
		f 4 5 46 -161 -46
		mu 0 4 25 26 106 105
		f 4 6 47 -162 -47
		mu 0 4 26 27 107 106
		f 4 7 48 -163 -48
		mu 0 4 27 28 108 107
		f 4 8 49 -164 -49
		mu 0 4 28 29 109 108
		f 4 9 50 -165 -50
		mu 0 4 29 30 110 109
		f 4 10 51 -166 -51
		mu 0 4 30 31 111 110
		f 4 11 52 -167 -52
		mu 0 4 31 32 112 111
		f 4 12 53 -168 -53
		mu 0 4 32 33 113 112
		f 4 13 54 -169 -54
		mu 0 4 33 34 114 113
		f 4 14 55 -170 -55
		mu 0 4 34 35 115 114
		f 4 15 56 -171 -56
		mu 0 4 35 36 116 115
		f 4 16 57 -172 -57
		mu 0 4 36 37 117 116
		f 4 17 58 -173 -58
		mu 0 4 37 38 118 117
		f 4 18 59 -174 -59
		mu 0 4 38 39 119 118
		f 4 19 40 -175 -60
		mu 0 4 39 40 120 119
		f 4 0 41 -176 -41
		mu 0 4 20 21 122 121
		f 4 1 42 -177 -42
		mu 0 4 21 22 123 122
		f 4 2 43 -178 -43
		mu 0 4 22 23 124 123
		f 4 3 44 -179 -44
		mu 0 4 23 24 125 124
		f 4 4 45 -180 -45
		mu 0 4 24 25 105 125
		f 4 180 561 -201 -561
		mu 0 4 126 127 128 129
		f 4 181 562 -202 -562
		mu 0 4 127 130 131 128
		f 4 182 563 -203 -563
		mu 0 4 130 132 133 131
		f 4 183 564 -204 -564
		mu 0 4 132 134 135 133
		f 4 184 565 -205 -565
		mu 0 4 134 136 137 135
		f 4 185 566 -206 -566
		mu 0 4 136 138 139 137
		f 4 186 567 -207 -567
		mu 0 4 138 140 141 139
		f 4 187 568 -208 -568
		mu 0 4 140 142 143 141
		f 4 188 569 -209 -569
		mu 0 4 142 144 145 143
		f 4 189 570 -210 -570
		mu 0 4 144 146 147 145
		f 4 190 571 -211 -571
		mu 0 4 146 148 149 147
		f 4 191 572 -212 -572
		mu 0 4 148 150 151 149
		f 4 192 573 -213 -573
		mu 0 4 150 152 153 151
		f 4 193 574 -214 -574
		mu 0 4 152 154 155 153
		f 4 194 575 -215 -575
		mu 0 4 154 156 157 155
		f 4 195 576 -216 -576
		mu 0 4 156 158 159 157
		f 4 196 577 -217 -577
		mu 0 4 158 160 161 159
		f 4 197 578 -218 -578
		mu 0 4 160 162 163 161
		f 4 198 579 -219 -579
		mu 0 4 162 164 165 163
		f 4 199 560 -220 -580
		mu 0 4 164 166 167 165
		f 4 200 581 -221 -581
		mu 0 4 129 128 168 169
		f 4 201 582 -222 -582
		mu 0 4 128 131 170 168
		f 4 202 583 -223 -583
		mu 0 4 131 133 171 170
		f 4 203 584 -224 -584
		mu 0 4 133 135 172 171
		f 4 204 585 -225 -585
		mu 0 4 135 137 173 172
		f 4 205 586 -226 -586
		mu 0 4 137 139 174 173
		f 4 206 587 -227 -587
		mu 0 4 139 141 175 174
		f 4 207 588 -228 -588
		mu 0 4 141 143 176 175
		f 4 208 589 -229 -589
		mu 0 4 143 145 177 176
		f 4 209 590 -230 -590
		mu 0 4 145 147 178 177
		f 4 210 591 -231 -591
		mu 0 4 147 149 179 178
		f 4 211 592 -232 -592
		mu 0 4 149 151 180 179
		f 4 212 593 -233 -593
		mu 0 4 151 153 181 180
		f 4 213 594 -234 -594
		mu 0 4 153 155 182 181
		f 4 214 595 -235 -595
		mu 0 4 155 157 183 182
		f 4 215 596 -236 -596
		mu 0 4 157 159 184 183
		f 4 216 597 -237 -597
		mu 0 4 159 161 185 184
		f 4 217 598 -238 -598
		mu 0 4 161 163 186 185
		f 4 218 599 -239 -599
		mu 0 4 163 165 187 186
		f 4 219 580 -240 -600
		mu 0 4 165 167 188 187
		f 4 220 601 -241 -601
		mu 0 4 169 168 189 190
		f 4 221 602 -242 -602
		mu 0 4 168 170 191 189
		f 4 222 603 -243 -603
		mu 0 4 170 171 192 191
		f 4 223 604 -244 -604
		mu 0 4 171 172 193 192
		f 4 224 605 -245 -605
		mu 0 4 172 173 194 193
		f 4 225 606 -246 -606
		mu 0 4 173 174 195 194
		f 4 226 607 -247 -607
		mu 0 4 174 175 196 195
		f 4 227 608 -248 -608
		mu 0 4 175 176 197 196
		f 4 228 609 -249 -609
		mu 0 4 176 177 198 197
		f 4 229 610 -250 -610
		mu 0 4 177 178 199 198
		f 4 230 611 -251 -611
		mu 0 4 178 179 200 199
		f 4 231 612 -252 -612
		mu 0 4 179 180 201 200
		f 4 232 613 -253 -613
		mu 0 4 180 181 202 201
		f 4 233 614 -254 -614
		mu 0 4 181 182 203 202
		f 4 234 615 -255 -615
		mu 0 4 182 183 204 203
		f 4 235 616 -256 -616
		mu 0 4 183 184 205 204
		f 4 236 617 -257 -617
		mu 0 4 184 185 206 205
		f 4 237 618 -258 -618
		mu 0 4 185 186 207 206
		f 4 238 619 -259 -619
		mu 0 4 186 187 208 207
		f 4 239 600 -260 -620
		mu 0 4 187 188 209 208
		f 4 240 621 -261 -621
		mu 0 4 190 189 210 211
		f 4 241 622 -262 -622
		mu 0 4 189 191 212 210
		f 4 242 623 -263 -623
		mu 0 4 191 192 213 212
		f 4 243 624 -264 -624
		mu 0 4 192 193 214 213
		f 4 244 625 -265 -625
		mu 0 4 193 194 215 214
		f 4 245 626 -266 -626
		mu 0 4 194 195 216 215
		f 4 246 627 -267 -627
		mu 0 4 195 196 217 216
		f 4 247 628 -268 -628
		mu 0 4 196 197 218 217
		f 4 248 629 -269 -629
		mu 0 4 197 198 219 218
		f 4 249 630 -270 -630
		mu 0 4 198 199 220 219
		f 4 250 631 -271 -631
		mu 0 4 199 200 221 220
		f 4 251 632 -272 -632
		mu 0 4 200 201 222 221
		f 4 252 633 -273 -633
		mu 0 4 201 202 223 222
		f 4 253 634 -274 -634
		mu 0 4 202 203 224 223
		f 4 254 635 -275 -635
		mu 0 4 203 204 225 224
		f 4 255 636 -276 -636
		mu 0 4 204 205 226 225
		f 4 256 637 -277 -637
		mu 0 4 205 206 227 226
		f 4 257 638 -278 -638
		mu 0 4 206 207 228 227
		f 4 258 639 -279 -639
		mu 0 4 207 208 229 228
		f 4 259 620 -280 -640
		mu 0 4 208 209 230 229
		f 4 260 641 -281 -641
		mu 0 4 211 210 231 232
		f 4 261 642 -282 -642
		mu 0 4 210 212 233 231
		f 4 262 643 -283 -643
		mu 0 4 212 213 234 233
		f 4 263 644 -284 -644
		mu 0 4 213 214 235 234
		f 4 264 645 -285 -645
		mu 0 4 214 215 236 235
		f 4 265 646 -286 -646
		mu 0 4 215 216 237 236
		f 4 266 647 -287 -647
		mu 0 4 216 217 238 237
		f 4 267 648 -288 -648
		mu 0 4 217 218 239 238
		f 4 268 649 -289 -649
		mu 0 4 218 219 240 239
		f 4 269 650 -290 -650
		mu 0 4 219 220 241 240
		f 4 270 651 -291 -651
		mu 0 4 220 221 242 241
		f 4 271 652 -292 -652
		mu 0 4 221 222 243 242
		f 4 272 653 -293 -653
		mu 0 4 222 223 244 243
		f 4 273 654 -294 -654
		mu 0 4 223 224 245 244
		f 4 274 655 -295 -655
		mu 0 4 224 225 246 245
		f 4 275 656 -296 -656
		mu 0 4 225 226 247 246
		f 4 276 657 -297 -657
		mu 0 4 226 227 248 247
		f 4 277 658 -298 -658
		mu 0 4 227 228 249 248
		f 4 278 659 -299 -659
		mu 0 4 228 229 250 249
		f 4 279 640 -300 -660
		mu 0 4 229 230 251 250
		f 4 280 661 -301 -661
		mu 0 4 232 231 252 253
		f 4 281 662 -302 -662
		mu 0 4 231 233 254 252
		f 4 282 663 -303 -663
		mu 0 4 233 234 255 254
		f 4 283 664 -304 -664
		mu 0 4 234 235 256 255
		f 4 284 665 -305 -665
		mu 0 4 235 236 257 256
		f 4 285 666 -306 -666
		mu 0 4 236 237 258 257
		f 4 286 667 -307 -667
		mu 0 4 237 238 259 258
		f 4 287 668 -308 -668
		mu 0 4 238 239 260 259
		f 4 288 669 -309 -669
		mu 0 4 239 240 261 260
		f 4 289 670 -310 -670
		mu 0 4 240 241 262 261
		f 4 290 671 -311 -671
		mu 0 4 241 242 263 262
		f 4 291 672 -312 -672
		mu 0 4 242 243 264 263
		f 4 292 673 -313 -673
		mu 0 4 243 244 265 264
		f 4 293 674 -314 -674
		mu 0 4 244 245 266 265
		f 4 294 675 -315 -675
		mu 0 4 245 246 267 266
		f 4 295 676 -316 -676
		mu 0 4 246 247 268 267
		f 4 296 677 -317 -677
		mu 0 4 247 248 269 268
		f 4 297 678 -318 -678
		mu 0 4 248 249 270 269
		f 4 298 679 -319 -679
		mu 0 4 249 250 271 270
		f 4 299 660 -320 -680
		mu 0 4 250 251 272 271
		f 4 300 681 -321 -681
		mu 0 4 253 252 273 274
		f 4 301 682 -322 -682
		mu 0 4 252 254 275 273
		f 4 302 683 -323 -683
		mu 0 4 254 255 276 275
		f 4 303 684 -324 -684
		mu 0 4 255 256 277 276
		f 4 304 685 -325 -685
		mu 0 4 256 257 278 277
		f 4 305 686 -326 -686
		mu 0 4 257 258 279 278
		f 4 306 687 -327 -687
		mu 0 4 258 259 280 279
		f 4 307 688 -328 -688
		mu 0 4 259 260 281 280
		f 4 308 689 -329 -689
		mu 0 4 260 261 282 281
		f 4 309 690 -330 -690
		mu 0 4 261 262 283 282
		f 4 310 691 -331 -691
		mu 0 4 262 263 284 283
		f 4 311 692 -332 -692
		mu 0 4 263 264 285 284
		f 4 312 693 -333 -693
		mu 0 4 264 265 286 285
		f 4 313 694 -334 -694
		mu 0 4 265 266 287 286
		f 4 314 695 -335 -695
		mu 0 4 266 267 288 287
		f 4 315 696 -336 -696
		mu 0 4 267 268 289 288
		f 4 316 697 -337 -697
		mu 0 4 268 269 290 289
		f 4 317 698 -338 -698
		mu 0 4 269 270 291 290
		f 4 318 699 -339 -699
		mu 0 4 270 271 292 291
		f 4 319 680 -340 -700
		mu 0 4 271 272 293 292
		f 4 320 701 -341 -701
		mu 0 4 274 273 294 295
		f 4 321 702 -342 -702
		mu 0 4 273 275 296 294
		f 4 322 703 -343 -703
		mu 0 4 275 276 297 296
		f 4 323 704 -344 -704
		mu 0 4 276 277 298 297
		f 4 324 705 -345 -705
		mu 0 4 277 278 299 298
		f 4 325 706 -346 -706
		mu 0 4 278 279 300 299
		f 4 326 707 -347 -707
		mu 0 4 279 280 301 300
		f 4 327 708 -348 -708
		mu 0 4 280 281 302 301
		f 4 328 709 -349 -709
		mu 0 4 281 282 303 302
		f 4 329 710 -350 -710
		mu 0 4 282 283 304 303
		f 4 330 711 -351 -711
		mu 0 4 283 284 305 304
		f 4 331 712 -352 -712
		mu 0 4 284 285 306 305
		f 4 332 713 -353 -713
		mu 0 4 285 286 307 306
		f 4 333 714 -354 -714
		mu 0 4 286 287 308 307
		f 4 334 715 -355 -715
		mu 0 4 287 288 309 308
		f 4 335 716 -356 -716
		mu 0 4 288 289 310 309
		f 4 336 717 -357 -717
		mu 0 4 289 290 311 310
		f 4 337 718 -358 -718
		mu 0 4 290 291 312 311
		f 4 338 719 -359 -719
		mu 0 4 291 292 313 312
		f 4 339 700 -360 -720
		mu 0 4 292 293 314 313
		f 4 340 721 -361 -721
		mu 0 4 295 294 315 316
		f 4 341 722 -362 -722
		mu 0 4 294 296 317 315
		f 4 342 723 -363 -723
		mu 0 4 296 297 318 317
		f 4 343 724 -364 -724
		mu 0 4 297 298 319 318
		f 4 344 725 -365 -725
		mu 0 4 298 299 320 319
		f 4 345 726 -366 -726
		mu 0 4 299 300 321 320
		f 4 346 727 -367 -727
		mu 0 4 300 301 322 321
		f 4 347 728 -368 -728
		mu 0 4 301 302 323 322
		f 4 348 729 -369 -729
		mu 0 4 302 303 324 323
		f 4 349 730 -370 -730
		mu 0 4 303 304 325 324
		f 4 350 731 -371 -731
		mu 0 4 304 305 326 325
		f 4 351 732 -372 -732
		mu 0 4 305 306 327 326
		f 4 352 733 -373 -733
		mu 0 4 306 307 328 327
		f 4 353 734 -374 -734
		mu 0 4 307 308 329 328
		f 4 354 735 -375 -735
		mu 0 4 308 309 330 329
		f 4 355 736 -376 -736
		mu 0 4 309 310 331 330
		f 4 356 737 -377 -737
		mu 0 4 310 311 332 331
		f 4 357 738 -378 -738
		mu 0 4 311 312 333 332
		f 4 358 739 -379 -739
		mu 0 4 312 313 334 333
		f 4 359 720 -380 -740
		mu 0 4 313 314 335 334
		f 4 360 741 -381 -741
		mu 0 4 316 315 336 337
		f 4 361 742 -382 -742
		mu 0 4 315 317 338 336
		f 4 362 743 -383 -743
		mu 0 4 317 318 339 338
		f 4 363 744 -384 -744
		mu 0 4 318 319 340 339
		f 4 364 745 -385 -745
		mu 0 4 319 320 341 340
		f 4 365 746 -386 -746
		mu 0 4 320 321 342 341
		f 4 366 747 -387 -747
		mu 0 4 321 322 343 342
		f 4 367 748 -388 -748
		mu 0 4 322 323 344 343
		f 4 368 749 -389 -749
		mu 0 4 323 324 345 344
		f 4 369 750 -390 -750
		mu 0 4 324 325 346 345
		f 4 370 751 -391 -751
		mu 0 4 325 326 347 346
		f 4 371 752 -392 -752
		mu 0 4 326 327 348 347
		f 4 372 753 -393 -753
		mu 0 4 327 328 349 348
		f 4 373 754 -394 -754
		mu 0 4 328 329 350 349
		f 4 374 755 -395 -755
		mu 0 4 329 330 351 350
		f 4 375 756 -396 -756
		mu 0 4 330 331 352 351
		f 4 376 757 -397 -757
		mu 0 4 331 332 353 352
		f 4 377 758 -398 -758
		mu 0 4 332 333 354 353
		f 4 378 759 -399 -759
		mu 0 4 333 334 355 354
		f 4 379 740 -400 -760
		mu 0 4 334 335 356 355
		f 4 380 761 -401 -761
		mu 0 4 337 336 357 358
		f 4 381 762 -402 -762
		mu 0 4 336 338 359 357
		f 4 382 763 -403 -763
		mu 0 4 338 339 360 359
		f 4 383 764 -404 -764
		mu 0 4 339 340 361 360
		f 4 384 765 -405 -765
		mu 0 4 340 341 362 361
		f 4 385 766 -406 -766
		mu 0 4 341 342 363 362
		f 4 386 767 -407 -767
		mu 0 4 342 343 364 363
		f 4 387 768 -408 -768
		mu 0 4 343 344 365 364
		f 4 388 769 -409 -769
		mu 0 4 344 345 366 365
		f 4 389 770 -410 -770
		mu 0 4 345 346 367 366
		f 4 390 771 -411 -771
		mu 0 4 346 347 368 367
		f 4 391 772 -412 -772
		mu 0 4 347 348 369 368
		f 4 392 773 -413 -773
		mu 0 4 348 349 370 369
		f 4 393 774 -414 -774
		mu 0 4 349 350 371 370
		f 4 394 775 -415 -775
		mu 0 4 350 351 372 371
		f 4 395 776 -416 -776
		mu 0 4 351 352 373 372
		f 4 396 777 -417 -777
		mu 0 4 352 353 374 373
		f 4 397 778 -418 -778
		mu 0 4 353 354 375 374
		f 4 398 779 -419 -779
		mu 0 4 354 355 376 375
		f 4 399 760 -420 -780
		mu 0 4 355 356 377 376
		f 4 400 781 -421 -781
		mu 0 4 358 357 378 379
		f 4 401 782 -422 -782
		mu 0 4 357 359 380 378
		f 4 402 783 -423 -783
		mu 0 4 359 360 381 380
		f 4 403 784 -424 -784
		mu 0 4 360 361 382 381
		f 4 404 785 -425 -785
		mu 0 4 361 362 383 382
		f 4 405 786 -426 -786
		mu 0 4 362 363 384 383
		f 4 406 787 -427 -787
		mu 0 4 363 364 385 384
		f 4 407 788 -428 -788
		mu 0 4 364 365 386 385
		f 4 408 789 -429 -789
		mu 0 4 365 366 387 386
		f 4 409 790 -430 -790
		mu 0 4 366 367 388 387
		f 4 410 791 -431 -791
		mu 0 4 367 368 389 388
		f 4 411 792 -432 -792
		mu 0 4 368 369 390 389
		f 4 412 793 -433 -793
		mu 0 4 369 370 391 390
		f 4 413 794 -434 -794
		mu 0 4 370 371 392 391
		f 4 414 795 -435 -795
		mu 0 4 371 372 393 392
		f 4 415 796 -436 -796
		mu 0 4 372 373 394 393
		f 4 416 797 -437 -797
		mu 0 4 373 374 395 394
		f 4 417 798 -438 -798
		mu 0 4 374 375 396 395
		f 4 418 799 -439 -799
		mu 0 4 375 376 397 396
		f 4 419 780 -440 -800
		mu 0 4 376 377 398 397
		f 4 420 801 -441 -801
		mu 0 4 379 378 399 400
		f 4 421 802 -442 -802
		mu 0 4 378 380 401 399
		f 4 422 803 -443 -803
		mu 0 4 380 381 402 401
		f 4 423 804 -444 -804
		mu 0 4 381 382 403 402
		f 4 424 805 -445 -805
		mu 0 4 382 383 404 403
		f 4 425 806 -446 -806
		mu 0 4 383 384 405 404
		f 4 426 807 -447 -807
		mu 0 4 384 385 406 405
		f 4 427 808 -448 -808
		mu 0 4 385 386 407 406
		f 4 428 809 -449 -809
		mu 0 4 386 387 408 407
		f 4 429 810 -450 -810
		mu 0 4 387 388 409 408
		f 4 430 811 -451 -811
		mu 0 4 388 389 410 409
		f 4 431 812 -452 -812
		mu 0 4 389 390 411 410
		f 4 432 813 -453 -813
		mu 0 4 390 391 412 411
		f 4 433 814 -454 -814
		mu 0 4 391 392 413 412
		f 4 434 815 -455 -815
		mu 0 4 392 393 414 413
		f 4 435 816 -456 -816
		mu 0 4 393 394 415 414
		f 4 436 817 -457 -817
		mu 0 4 394 395 416 415
		f 4 437 818 -458 -818
		mu 0 4 395 396 417 416
		f 4 438 819 -459 -819
		mu 0 4 396 397 418 417
		f 4 439 800 -460 -820
		mu 0 4 397 398 419 418
		f 4 440 821 -461 -821
		mu 0 4 400 399 420 421
		f 4 441 822 -462 -822
		mu 0 4 399 401 422 420
		f 4 442 823 -463 -823
		mu 0 4 401 402 423 422
		f 4 443 824 -464 -824
		mu 0 4 402 403 424 423
		f 4 444 825 -465 -825
		mu 0 4 403 404 425 424
		f 4 445 826 -466 -826
		mu 0 4 404 405 426 425
		f 4 446 827 -467 -827
		mu 0 4 405 406 427 426
		f 4 447 828 -468 -828
		mu 0 4 406 407 428 427
		f 4 448 829 -469 -829
		mu 0 4 407 408 429 428
		f 4 449 830 -470 -830
		mu 0 4 408 409 430 429
		f 4 450 831 -471 -831
		mu 0 4 409 410 431 430
		f 4 451 832 -472 -832
		mu 0 4 410 411 432 431
		f 4 452 833 -473 -833
		mu 0 4 411 412 433 432
		f 4 453 834 -474 -834
		mu 0 4 412 413 434 433
		f 4 454 835 -475 -835
		mu 0 4 413 414 435 434
		f 4 455 836 -476 -836
		mu 0 4 414 415 436 435
		f 4 456 837 -477 -837
		mu 0 4 415 416 437 436
		f 4 457 838 -478 -838
		mu 0 4 416 417 438 437
		f 4 458 839 -479 -839
		mu 0 4 417 418 439 438
		f 4 459 820 -480 -840
		mu 0 4 418 419 440 439
		f 4 460 841 -481 -841
		mu 0 4 421 420 441 442
		f 4 461 842 -482 -842
		mu 0 4 420 422 443 441
		f 4 462 843 -483 -843
		mu 0 4 422 423 444 443
		f 4 463 844 -484 -844
		mu 0 4 423 424 445 444
		f 4 464 845 -485 -845
		mu 0 4 424 425 446 445
		f 4 465 846 -486 -846
		mu 0 4 425 426 447 446
		f 4 466 847 -487 -847
		mu 0 4 426 427 448 447
		f 4 467 848 -488 -848
		mu 0 4 427 428 449 448
		f 4 468 849 -489 -849
		mu 0 4 428 429 450 449
		f 4 469 850 -490 -850
		mu 0 4 429 430 451 450
		f 4 470 851 -491 -851
		mu 0 4 430 431 452 451
		f 4 471 852 -492 -852
		mu 0 4 431 432 453 452
		f 4 472 853 -493 -853
		mu 0 4 432 433 454 453
		f 4 473 854 -494 -854
		mu 0 4 433 434 455 454
		f 4 474 855 -495 -855
		mu 0 4 434 435 456 455
		f 4 475 856 -496 -856
		mu 0 4 435 436 457 456
		f 4 476 857 -497 -857
		mu 0 4 436 437 458 457
		f 4 477 858 -498 -858
		mu 0 4 437 438 459 458
		f 4 478 859 -499 -859
		mu 0 4 438 439 460 459
		f 4 479 840 -500 -860
		mu 0 4 439 440 461 460
		f 4 480 861 -501 -861
		mu 0 4 442 441 462 463
		f 4 481 862 -502 -862
		mu 0 4 441 443 464 462
		f 4 482 863 -503 -863
		mu 0 4 443 444 465 464
		f 4 483 864 -504 -864
		mu 0 4 444 445 466 465
		f 4 484 865 -505 -865
		mu 0 4 445 446 467 466
		f 4 485 866 -506 -866
		mu 0 4 446 447 468 467
		f 4 486 867 -507 -867
		mu 0 4 447 448 469 468
		f 4 487 868 -508 -868
		mu 0 4 448 449 470 469
		f 4 488 869 -509 -869
		mu 0 4 449 450 471 470
		f 4 489 870 -510 -870
		mu 0 4 450 451 472 471
		f 4 490 871 -511 -871
		mu 0 4 451 452 473 472
		f 4 491 872 -512 -872
		mu 0 4 452 453 474 473
		f 4 492 873 -513 -873
		mu 0 4 453 454 475 474
		f 4 493 874 -514 -874
		mu 0 4 454 455 476 475
		f 4 494 875 -515 -875
		mu 0 4 455 456 477 476
		f 4 495 876 -516 -876
		mu 0 4 456 457 478 477
		f 4 496 877 -517 -877
		mu 0 4 457 458 479 478
		f 4 497 878 -518 -878
		mu 0 4 458 459 480 479
		f 4 498 879 -519 -879
		mu 0 4 459 460 481 480
		f 4 499 860 -520 -880
		mu 0 4 460 461 482 481
		f 4 500 881 -521 -881
		mu 0 4 463 462 483 484
		f 4 501 882 -522 -882
		mu 0 4 462 464 485 483
		f 4 502 883 -523 -883
		mu 0 4 464 465 486 485
		f 4 503 884 -524 -884
		mu 0 4 465 466 487 486
		f 4 504 885 -525 -885
		mu 0 4 466 467 488 487
		f 4 505 886 -526 -886
		mu 0 4 467 468 489 488
		f 4 506 887 -527 -887
		mu 0 4 468 469 490 489
		f 4 507 888 -528 -888
		mu 0 4 469 470 491 490
		f 4 508 889 -529 -889
		mu 0 4 470 471 492 491
		f 4 509 890 -530 -890
		mu 0 4 471 472 493 492
		f 4 510 891 -531 -891
		mu 0 4 472 473 494 493
		f 4 511 892 -532 -892
		mu 0 4 473 474 495 494
		f 4 512 893 -533 -893
		mu 0 4 474 475 496 495
		f 4 513 894 -534 -894
		mu 0 4 475 476 497 496
		f 4 514 895 -535 -895
		mu 0 4 476 477 498 497
		f 4 515 896 -536 -896
		mu 0 4 477 478 499 498
		f 4 516 897 -537 -897
		mu 0 4 478 479 500 499
		f 4 517 898 -538 -898
		mu 0 4 479 480 501 500
		f 4 518 899 -539 -899
		mu 0 4 480 481 502 501
		f 4 519 880 -540 -900
		mu 0 4 481 482 503 502
		f 4 520 901 -541 -901
		mu 0 4 484 483 504 505
		f 4 521 902 -542 -902
		mu 0 4 483 485 506 504
		f 4 522 903 -543 -903
		mu 0 4 485 486 507 506
		f 4 523 904 -544 -904
		mu 0 4 486 487 508 507
		f 4 524 905 -545 -905
		mu 0 4 487 488 509 508
		f 4 525 906 -546 -906
		mu 0 4 488 489 510 509
		f 4 526 907 -547 -907
		mu 0 4 489 490 511 510
		f 4 527 908 -548 -908
		mu 0 4 490 491 512 511
		f 4 528 909 -549 -909
		mu 0 4 491 492 513 512
		f 4 529 910 -550 -910
		mu 0 4 492 493 514 513
		f 4 530 911 -551 -911
		mu 0 4 493 494 515 514
		f 4 531 912 -552 -912
		mu 0 4 494 495 516 515
		f 4 532 913 -553 -913
		mu 0 4 495 496 517 516
		f 4 533 914 -554 -914
		mu 0 4 496 497 518 517
		f 4 534 915 -555 -915
		mu 0 4 497 498 519 518
		f 4 535 916 -556 -916
		mu 0 4 498 499 520 519
		f 4 536 917 -557 -917
		mu 0 4 499 500 521 520
		f 4 537 918 -558 -918
		mu 0 4 500 501 522 521
		f 4 538 919 -559 -919
		mu 0 4 501 502 523 522
		f 4 539 900 -560 -920
		mu 0 4 502 503 524 523
		f 3 -181 -921 921
		mu 0 3 127 126 525
		f 3 -182 -922 922
		mu 0 3 130 127 526
		f 3 -183 -923 923
		mu 0 3 132 130 527
		f 3 -184 -924 924
		mu 0 3 134 132 528
		f 3 -185 -925 925
		mu 0 3 136 134 529
		f 3 -186 -926 926
		mu 0 3 138 136 530
		f 3 -187 -927 927
		mu 0 3 140 138 531
		f 3 -188 -928 928
		mu 0 3 142 140 532
		f 3 -189 -929 929
		mu 0 3 144 142 533
		f 3 -190 -930 930
		mu 0 3 146 144 534
		f 3 -191 -931 931
		mu 0 3 148 146 535
		f 3 -192 -932 932
		mu 0 3 150 148 536
		f 3 -193 -933 933
		mu 0 3 152 150 537
		f 3 -194 -934 934
		mu 0 3 154 152 538
		f 3 -195 -935 935
		mu 0 3 156 154 539
		f 3 -196 -936 936
		mu 0 3 158 156 540
		f 3 -197 -937 937
		mu 0 3 160 158 541
		f 3 -198 -938 938
		mu 0 3 162 160 542
		f 3 -199 -939 939
		mu 0 3 164 162 543
		f 3 -200 -940 920
		mu 0 3 166 164 544
		f 3 540 941 -941
		mu 0 3 505 504 545
		f 3 541 942 -942
		mu 0 3 504 506 546
		f 3 542 943 -943
		mu 0 3 506 507 547
		f 3 543 944 -944
		mu 0 3 507 508 548
		f 3 544 945 -945
		mu 0 3 508 509 549
		f 3 545 946 -946
		mu 0 3 509 510 550
		f 3 546 947 -947
		mu 0 3 510 511 551
		f 3 547 948 -948
		mu 0 3 511 512 552
		f 3 548 949 -949
		mu 0 3 512 513 553
		f 3 549 950 -950
		mu 0 3 513 514 554
		f 3 550 951 -951
		mu 0 3 514 515 555
		f 3 551 952 -952
		mu 0 3 515 516 556
		f 3 552 953 -953
		mu 0 3 516 517 557
		f 3 553 954 -954
		mu 0 3 517 518 558
		f 3 554 955 -955
		mu 0 3 518 519 559
		f 3 555 956 -956
		mu 0 3 519 520 560
		f 3 556 957 -957
		mu 0 3 520 521 561
		f 3 557 958 -958
		mu 0 3 521 522 562
		f 3 558 959 -959
		mu 0 3 522 523 563
		f 3 559 940 -960
		mu 0 3 523 524 564;
	setAttr ".fc[500:999]"
		f 4 1083 1064 -981 -1064
		mu 0 4 565 566 567 568
		f 4 1084 1065 -982 -1065
		mu 0 4 566 569 570 567
		f 4 1085 1066 -983 -1066
		mu 0 4 569 571 572 570
		f 4 1086 1067 -984 -1067
		mu 0 4 571 573 574 572
		f 4 1087 1068 -985 -1068
		mu 0 4 573 575 576 574
		f 4 1088 1069 -986 -1069
		mu 0 4 575 577 578 576
		f 4 1089 1070 -987 -1070
		mu 0 4 577 579 580 578
		f 4 1090 1071 -988 -1071
		mu 0 4 579 581 582 580
		f 4 1091 1072 -989 -1072
		mu 0 4 581 583 584 582
		f 4 1092 1073 -990 -1073
		mu 0 4 583 585 586 584
		f 4 1093 1074 -991 -1074
		mu 0 4 585 587 588 586
		f 4 1094 1075 -992 -1075
		mu 0 4 587 589 590 588
		f 4 1095 1076 -993 -1076
		mu 0 4 589 591 592 590
		f 4 1096 1077 -994 -1077
		mu 0 4 591 593 594 592
		f 4 1097 1078 -995 -1078
		mu 0 4 593 595 596 594
		f 4 1098 1079 -996 -1079
		mu 0 4 595 597 598 596
		f 4 1099 1060 -997 -1080
		mu 0 4 597 599 600 598
		f 4 1080 1061 -998 -1061
		mu 0 4 599 601 602 600
		f 4 1081 1062 -999 -1062
		mu 0 4 601 603 604 602
		f 4 1082 1063 -1000 -1063
		mu 0 4 603 605 606 604
		f 3 -961 -1021 1021
		mu 0 3 607 608 609
		f 3 -962 -1022 1022
		mu 0 3 610 607 609
		f 3 -963 -1023 1023
		mu 0 3 611 610 609
		f 3 -964 -1024 1024
		mu 0 3 612 611 609
		f 3 -965 -1025 1025
		mu 0 3 613 612 609
		f 3 -966 -1026 1026
		mu 0 3 614 613 609
		f 3 -967 -1027 1027
		mu 0 3 615 614 609
		f 3 -968 -1028 1028
		mu 0 3 616 615 609
		f 3 -969 -1029 1029
		mu 0 3 617 616 609
		f 3 -970 -1030 1030
		mu 0 3 618 617 609
		f 3 -971 -1031 1031
		mu 0 3 619 618 609
		f 3 -972 -1032 1032
		mu 0 3 620 619 609
		f 3 -973 -1033 1033
		mu 0 3 621 620 609
		f 3 -974 -1034 1034
		mu 0 3 622 621 609
		f 3 -975 -1035 1035
		mu 0 3 623 622 609
		f 3 -976 -1036 1036
		mu 0 3 624 623 609
		f 3 -977 -1037 1037
		mu 0 3 625 624 609
		f 3 -978 -1038 1038
		mu 0 3 626 625 609
		f 3 -979 -1039 1039
		mu 0 3 627 626 609
		f 3 -980 -1040 1020
		mu 0 3 608 627 609
		f 3 980 1041 -1041
		mu 0 3 628 629 630
		f 3 981 1042 -1042
		mu 0 3 629 631 630
		f 3 982 1043 -1043
		mu 0 3 631 632 630
		f 3 983 1044 -1044
		mu 0 3 632 633 630
		f 3 984 1045 -1045
		mu 0 3 633 634 630
		f 3 985 1046 -1046
		mu 0 3 634 635 630
		f 3 986 1047 -1047
		mu 0 3 635 636 630
		f 3 987 1048 -1048
		mu 0 3 636 637 630
		f 3 988 1049 -1049
		mu 0 3 637 638 630
		f 3 989 1050 -1050
		mu 0 3 638 639 630
		f 3 990 1051 -1051
		mu 0 3 639 640 630
		f 3 991 1052 -1052
		mu 0 3 640 641 630
		f 3 992 1053 -1053
		mu 0 3 641 642 630
		f 3 993 1054 -1054
		mu 0 3 642 643 630
		f 3 994 1055 -1055
		mu 0 3 643 644 630
		f 3 995 1056 -1056
		mu 0 3 644 645 630
		f 3 996 1057 -1057
		mu 0 3 645 646 630
		f 3 997 1058 -1058
		mu 0 3 646 647 630
		f 3 998 1059 -1059
		mu 0 3 647 648 630
		f 3 999 1040 -1060
		mu 0 3 648 628 630
		f 4 1132 1113 -1081 -1113
		mu 0 4 649 650 601 599
		f 4 1133 1114 -1082 -1114
		mu 0 4 650 651 603 601
		f 4 1134 1115 -1083 -1115
		mu 0 4 651 652 605 603
		f 4 1135 1116 -1084 -1116
		mu 0 4 653 654 566 565
		f 4 1136 1117 -1085 -1117
		mu 0 4 654 655 569 566
		f 4 1137 1118 -1086 -1118
		mu 0 4 655 656 571 569
		f 4 1138 1119 -1087 -1119
		mu 0 4 656 657 573 571
		f 4 1139 1100 -1088 -1120
		mu 0 4 657 658 575 573
		f 4 1120 1101 -1089 -1101
		mu 0 4 658 659 577 575
		f 4 1121 1102 -1090 -1102
		mu 0 4 659 660 579 577
		f 4 1122 1103 -1091 -1103
		mu 0 4 660 661 581 579
		f 4 1123 1104 -1092 -1104
		mu 0 4 661 662 583 581
		f 4 1124 1105 -1093 -1105
		mu 0 4 662 663 585 583
		f 4 1125 1106 -1094 -1106
		mu 0 4 663 664 587 585
		f 4 1126 1107 -1095 -1107
		mu 0 4 664 665 589 587
		f 4 1127 1108 -1096 -1108
		mu 0 4 665 666 591 589
		f 4 1128 1109 -1097 -1109
		mu 0 4 666 667 593 591
		f 4 1129 1110 -1098 -1110
		mu 0 4 667 668 595 593
		f 4 1130 1111 -1099 -1111
		mu 0 4 668 669 597 595
		f 4 1131 1112 -1100 -1112
		mu 0 4 669 649 599 597
		f 4 965 1006 -1121 -1006
		mu 0 4 670 671 659 658
		f 4 966 1007 -1122 -1007
		mu 0 4 671 672 660 659
		f 4 967 1008 -1123 -1008
		mu 0 4 672 673 661 660
		f 4 968 1009 -1124 -1009
		mu 0 4 673 674 662 661
		f 4 969 1010 -1125 -1010
		mu 0 4 674 675 663 662
		f 4 970 1011 -1126 -1011
		mu 0 4 675 676 664 663
		f 4 971 1012 -1127 -1012
		mu 0 4 676 677 665 664
		f 4 972 1013 -1128 -1013
		mu 0 4 677 678 666 665
		f 4 973 1014 -1129 -1014
		mu 0 4 678 679 667 666
		f 4 974 1015 -1130 -1015
		mu 0 4 679 680 668 667
		f 4 975 1016 -1131 -1016
		mu 0 4 680 681 669 668
		f 4 976 1017 -1132 -1017
		mu 0 4 681 682 649 669
		f 4 977 1018 -1133 -1018
		mu 0 4 682 683 650 649
		f 4 978 1019 -1134 -1019
		mu 0 4 683 684 651 650
		f 4 979 1000 -1135 -1020
		mu 0 4 684 685 652 651
		f 4 960 1001 -1136 -1001
		mu 0 4 686 687 654 653
		f 4 961 1002 -1137 -1002
		mu 0 4 687 688 655 654
		f 4 962 1003 -1138 -1003
		mu 0 4 688 689 656 655
		f 4 963 1004 -1139 -1004
		mu 0 4 689 690 657 656
		f 4 964 1005 -1140 -1005
		mu 0 4 690 670 658 657
		f 4 1140 1521 -1161 -1521
		mu 0 4 691 692 693 694
		f 4 1141 1522 -1162 -1522
		mu 0 4 692 695 696 693
		f 4 1142 1523 -1163 -1523
		mu 0 4 695 697 698 696
		f 4 1143 1524 -1164 -1524
		mu 0 4 697 699 700 698
		f 4 1144 1525 -1165 -1525
		mu 0 4 699 701 702 700
		f 4 1145 1526 -1166 -1526
		mu 0 4 701 703 704 702
		f 4 1146 1527 -1167 -1527
		mu 0 4 703 705 706 704
		f 4 1147 1528 -1168 -1528
		mu 0 4 705 707 708 706
		f 4 1148 1529 -1169 -1529
		mu 0 4 707 709 710 708
		f 4 1149 1530 -1170 -1530
		mu 0 4 709 711 712 710
		f 4 1150 1531 -1171 -1531
		mu 0 4 711 713 714 712
		f 4 1151 1532 -1172 -1532
		mu 0 4 713 715 716 714
		f 4 1152 1533 -1173 -1533
		mu 0 4 715 717 718 716
		f 4 1153 1534 -1174 -1534
		mu 0 4 717 719 720 718
		f 4 1154 1535 -1175 -1535
		mu 0 4 719 721 722 720
		f 4 1155 1536 -1176 -1536
		mu 0 4 721 723 724 722
		f 4 1156 1537 -1177 -1537
		mu 0 4 723 725 726 724
		f 4 1157 1538 -1178 -1538
		mu 0 4 725 727 728 726
		f 4 1158 1539 -1179 -1539
		mu 0 4 727 729 730 728
		f 4 1159 1520 -1180 -1540
		mu 0 4 729 731 732 730
		f 4 1160 1541 -1181 -1541
		mu 0 4 694 693 733 734
		f 4 1161 1542 -1182 -1542
		mu 0 4 693 696 735 733
		f 4 1162 1543 -1183 -1543
		mu 0 4 696 698 736 735
		f 4 1163 1544 -1184 -1544
		mu 0 4 698 700 737 736
		f 4 1164 1545 -1185 -1545
		mu 0 4 700 702 738 737
		f 4 1165 1546 -1186 -1546
		mu 0 4 702 704 739 738
		f 4 1166 1547 -1187 -1547
		mu 0 4 704 706 740 739
		f 4 1167 1548 -1188 -1548
		mu 0 4 706 708 741 740
		f 4 1168 1549 -1189 -1549
		mu 0 4 708 710 742 741
		f 4 1169 1550 -1190 -1550
		mu 0 4 710 712 743 742
		f 4 1170 1551 -1191 -1551
		mu 0 4 712 714 744 743
		f 4 1171 1552 -1192 -1552
		mu 0 4 714 716 745 744
		f 4 1172 1553 -1193 -1553
		mu 0 4 716 718 746 745
		f 4 1173 1554 -1194 -1554
		mu 0 4 718 720 747 746
		f 4 1174 1555 -1195 -1555
		mu 0 4 720 722 748 747
		f 4 1175 1556 -1196 -1556
		mu 0 4 722 724 749 748
		f 4 1176 1557 -1197 -1557
		mu 0 4 724 726 750 749
		f 4 1177 1558 -1198 -1558
		mu 0 4 726 728 751 750
		f 4 1178 1559 -1199 -1559
		mu 0 4 728 730 752 751
		f 4 1179 1540 -1200 -1560
		mu 0 4 730 732 753 752
		f 4 1180 1561 -1201 -1561
		mu 0 4 734 733 754 755
		f 4 1181 1562 -1202 -1562
		mu 0 4 733 735 756 754
		f 4 1182 1563 -1203 -1563
		mu 0 4 735 736 757 756
		f 4 1183 1564 -1204 -1564
		mu 0 4 736 737 758 757
		f 4 1184 1565 -1205 -1565
		mu 0 4 737 738 759 758
		f 4 1185 1566 -1206 -1566
		mu 0 4 738 739 760 759
		f 4 1186 1567 -1207 -1567
		mu 0 4 739 740 761 760
		f 4 1187 1568 -1208 -1568
		mu 0 4 740 741 762 761
		f 4 1188 1569 -1209 -1569
		mu 0 4 741 742 763 762
		f 4 1189 1570 -1210 -1570
		mu 0 4 742 743 764 763
		f 4 1190 1571 -1211 -1571
		mu 0 4 743 744 765 764
		f 4 1191 1572 -1212 -1572
		mu 0 4 744 745 766 765
		f 4 1192 1573 -1213 -1573
		mu 0 4 745 746 767 766
		f 4 1193 1574 -1214 -1574
		mu 0 4 746 747 768 767
		f 4 1194 1575 -1215 -1575
		mu 0 4 747 748 769 768
		f 4 1195 1576 -1216 -1576
		mu 0 4 748 749 770 769
		f 4 1196 1577 -1217 -1577
		mu 0 4 749 750 771 770
		f 4 1197 1578 -1218 -1578
		mu 0 4 750 751 772 771
		f 4 1198 1579 -1219 -1579
		mu 0 4 751 752 773 772
		f 4 1199 1560 -1220 -1580
		mu 0 4 752 753 774 773
		f 4 1200 1581 -1221 -1581
		mu 0 4 755 754 775 776
		f 4 1201 1582 -1222 -1582
		mu 0 4 754 756 777 775
		f 4 1202 1583 -1223 -1583
		mu 0 4 756 757 778 777
		f 4 1203 1584 -1224 -1584
		mu 0 4 757 758 779 778
		f 4 1204 1585 -1225 -1585
		mu 0 4 758 759 780 779
		f 4 1205 1586 -1226 -1586
		mu 0 4 759 760 781 780
		f 4 1206 1587 -1227 -1587
		mu 0 4 760 761 782 781
		f 4 1207 1588 -1228 -1588
		mu 0 4 761 762 783 782
		f 4 1208 1589 -1229 -1589
		mu 0 4 762 763 784 783
		f 4 1209 1590 -1230 -1590
		mu 0 4 763 764 785 784
		f 4 1210 1591 -1231 -1591
		mu 0 4 764 765 786 785
		f 4 1211 1592 -1232 -1592
		mu 0 4 765 766 787 786
		f 4 1212 1593 -1233 -1593
		mu 0 4 766 767 788 787
		f 4 1213 1594 -1234 -1594
		mu 0 4 767 768 789 788
		f 4 1214 1595 -1235 -1595
		mu 0 4 768 769 790 789
		f 4 1215 1596 -1236 -1596
		mu 0 4 769 770 791 790
		f 4 1216 1597 -1237 -1597
		mu 0 4 770 771 792 791
		f 4 1217 1598 -1238 -1598
		mu 0 4 771 772 793 792
		f 4 1218 1599 -1239 -1599
		mu 0 4 772 773 794 793
		f 4 1219 1580 -1240 -1600
		mu 0 4 773 774 795 794
		f 4 1220 1601 -1241 -1601
		mu 0 4 776 775 796 797
		f 4 1221 1602 -1242 -1602
		mu 0 4 775 777 798 796
		f 4 1222 1603 -1243 -1603
		mu 0 4 777 778 799 798
		f 4 1223 1604 -1244 -1604
		mu 0 4 778 779 800 799
		f 4 1224 1605 -1245 -1605
		mu 0 4 779 780 801 800
		f 4 1225 1606 -1246 -1606
		mu 0 4 780 781 802 801
		f 4 1226 1607 -1247 -1607
		mu 0 4 781 782 803 802
		f 4 1227 1608 -1248 -1608
		mu 0 4 782 783 804 803
		f 4 1228 1609 -1249 -1609
		mu 0 4 783 784 805 804
		f 4 1229 1610 -1250 -1610
		mu 0 4 784 785 806 805
		f 4 1230 1611 -1251 -1611
		mu 0 4 785 786 807 806
		f 4 1231 1612 -1252 -1612
		mu 0 4 786 787 808 807
		f 4 1232 1613 -1253 -1613
		mu 0 4 787 788 809 808
		f 4 1233 1614 -1254 -1614
		mu 0 4 788 789 810 809
		f 4 1234 1615 -1255 -1615
		mu 0 4 789 790 811 810
		f 4 1235 1616 -1256 -1616
		mu 0 4 790 791 812 811
		f 4 1236 1617 -1257 -1617
		mu 0 4 791 792 813 812
		f 4 1237 1618 -1258 -1618
		mu 0 4 792 793 814 813
		f 4 1238 1619 -1259 -1619
		mu 0 4 793 794 815 814
		f 4 1239 1600 -1260 -1620
		mu 0 4 794 795 816 815
		f 4 1240 1621 -1261 -1621
		mu 0 4 797 796 817 818
		f 4 1241 1622 -1262 -1622
		mu 0 4 796 798 819 817
		f 4 1242 1623 -1263 -1623
		mu 0 4 798 799 820 819
		f 4 1243 1624 -1264 -1624
		mu 0 4 799 800 821 820
		f 4 1244 1625 -1265 -1625
		mu 0 4 800 801 822 821
		f 4 1245 1626 -1266 -1626
		mu 0 4 801 802 823 822
		f 4 1246 1627 -1267 -1627
		mu 0 4 802 803 824 823
		f 4 1247 1628 -1268 -1628
		mu 0 4 803 804 825 824
		f 4 1248 1629 -1269 -1629
		mu 0 4 804 805 826 825
		f 4 1249 1630 -1270 -1630
		mu 0 4 805 806 827 826
		f 4 1250 1631 -1271 -1631
		mu 0 4 806 807 828 827
		f 4 1251 1632 -1272 -1632
		mu 0 4 807 808 829 828
		f 4 1252 1633 -1273 -1633
		mu 0 4 808 809 830 829
		f 4 1253 1634 -1274 -1634
		mu 0 4 809 810 831 830
		f 4 1254 1635 -1275 -1635
		mu 0 4 810 811 832 831
		f 4 1255 1636 -1276 -1636
		mu 0 4 811 812 833 832
		f 4 1256 1637 -1277 -1637
		mu 0 4 812 813 834 833
		f 4 1257 1638 -1278 -1638
		mu 0 4 813 814 835 834
		f 4 1258 1639 -1279 -1639
		mu 0 4 814 815 836 835
		f 4 1259 1620 -1280 -1640
		mu 0 4 815 816 837 836
		f 4 1260 1641 -1281 -1641
		mu 0 4 818 817 838 839
		f 4 1261 1642 -1282 -1642
		mu 0 4 817 819 840 838
		f 4 1262 1643 -1283 -1643
		mu 0 4 819 820 841 840
		f 4 1263 1644 -1284 -1644
		mu 0 4 820 821 842 841
		f 4 1264 1645 -1285 -1645
		mu 0 4 821 822 843 842
		f 4 1265 1646 -1286 -1646
		mu 0 4 822 823 844 843
		f 4 1266 1647 -1287 -1647
		mu 0 4 823 824 845 844
		f 4 1267 1648 -1288 -1648
		mu 0 4 824 825 846 845
		f 4 1268 1649 -1289 -1649
		mu 0 4 825 826 847 846
		f 4 1269 1650 -1290 -1650
		mu 0 4 826 827 848 847
		f 4 1270 1651 -1291 -1651
		mu 0 4 827 828 849 848
		f 4 1271 1652 -1292 -1652
		mu 0 4 828 829 850 849
		f 4 1272 1653 -1293 -1653
		mu 0 4 829 830 851 850
		f 4 1273 1654 -1294 -1654
		mu 0 4 830 831 852 851
		f 4 1274 1655 -1295 -1655
		mu 0 4 831 832 853 852
		f 4 1275 1656 -1296 -1656
		mu 0 4 832 833 854 853
		f 4 1276 1657 -1297 -1657
		mu 0 4 833 834 855 854
		f 4 1277 1658 -1298 -1658
		mu 0 4 834 835 856 855
		f 4 1278 1659 -1299 -1659
		mu 0 4 835 836 857 856
		f 4 1279 1640 -1300 -1660
		mu 0 4 836 837 858 857
		f 4 1280 1661 -1301 -1661
		mu 0 4 839 838 859 860
		f 4 1281 1662 -1302 -1662
		mu 0 4 838 840 861 859
		f 4 1282 1663 -1303 -1663
		mu 0 4 840 841 862 861
		f 4 1283 1664 -1304 -1664
		mu 0 4 841 842 863 862
		f 4 1284 1665 -1305 -1665
		mu 0 4 842 843 864 863
		f 4 1285 1666 -1306 -1666
		mu 0 4 843 844 865 864
		f 4 1286 1667 -1307 -1667
		mu 0 4 844 845 866 865
		f 4 1287 1668 -1308 -1668
		mu 0 4 845 846 867 866
		f 4 1288 1669 -1309 -1669
		mu 0 4 846 847 868 867
		f 4 1289 1670 -1310 -1670
		mu 0 4 847 848 869 868
		f 4 1290 1671 -1311 -1671
		mu 0 4 848 849 870 869
		f 4 1291 1672 -1312 -1672
		mu 0 4 849 850 871 870
		f 4 1292 1673 -1313 -1673
		mu 0 4 850 851 872 871
		f 4 1293 1674 -1314 -1674
		mu 0 4 851 852 873 872
		f 4 1294 1675 -1315 -1675
		mu 0 4 852 853 874 873
		f 4 1295 1676 -1316 -1676
		mu 0 4 853 854 875 874
		f 4 1296 1677 -1317 -1677
		mu 0 4 854 855 876 875
		f 4 1297 1678 -1318 -1678
		mu 0 4 855 856 877 876
		f 4 1298 1679 -1319 -1679
		mu 0 4 856 857 878 877
		f 4 1299 1660 -1320 -1680
		mu 0 4 857 858 879 878
		f 4 1300 1681 -1321 -1681
		mu 0 4 860 859 880 881
		f 4 1301 1682 -1322 -1682
		mu 0 4 859 861 882 880
		f 4 1302 1683 -1323 -1683
		mu 0 4 861 862 883 882
		f 4 1303 1684 -1324 -1684
		mu 0 4 862 863 884 883
		f 4 1304 1685 -1325 -1685
		mu 0 4 863 864 885 884
		f 4 1305 1686 -1326 -1686
		mu 0 4 864 865 886 885
		f 4 1306 1687 -1327 -1687
		mu 0 4 865 866 887 886
		f 4 1307 1688 -1328 -1688
		mu 0 4 866 867 888 887
		f 4 1308 1689 -1329 -1689
		mu 0 4 867 868 889 888
		f 4 1309 1690 -1330 -1690
		mu 0 4 868 869 890 889
		f 4 1310 1691 -1331 -1691
		mu 0 4 869 870 891 890
		f 4 1311 1692 -1332 -1692
		mu 0 4 870 871 892 891
		f 4 1312 1693 -1333 -1693
		mu 0 4 871 872 893 892
		f 4 1313 1694 -1334 -1694
		mu 0 4 872 873 894 893
		f 4 1314 1695 -1335 -1695
		mu 0 4 873 874 895 894
		f 4 1315 1696 -1336 -1696
		mu 0 4 874 875 896 895
		f 4 1316 1697 -1337 -1697
		mu 0 4 875 876 897 896
		f 4 1317 1698 -1338 -1698
		mu 0 4 876 877 898 897
		f 4 1318 1699 -1339 -1699
		mu 0 4 877 878 899 898
		f 4 1319 1680 -1340 -1700
		mu 0 4 878 879 900 899
		f 4 1320 1701 -1341 -1701
		mu 0 4 881 880 901 902
		f 4 1321 1702 -1342 -1702
		mu 0 4 880 882 903 901
		f 4 1322 1703 -1343 -1703
		mu 0 4 882 883 904 903
		f 4 1323 1704 -1344 -1704
		mu 0 4 883 884 905 904
		f 4 1324 1705 -1345 -1705
		mu 0 4 884 885 906 905
		f 4 1325 1706 -1346 -1706
		mu 0 4 885 886 907 906
		f 4 1326 1707 -1347 -1707
		mu 0 4 886 887 908 907
		f 4 1327 1708 -1348 -1708
		mu 0 4 887 888 909 908
		f 4 1328 1709 -1349 -1709
		mu 0 4 888 889 910 909
		f 4 1329 1710 -1350 -1710
		mu 0 4 889 890 911 910
		f 4 1330 1711 -1351 -1711
		mu 0 4 890 891 912 911
		f 4 1331 1712 -1352 -1712
		mu 0 4 891 892 913 912
		f 4 1332 1713 -1353 -1713
		mu 0 4 892 893 914 913
		f 4 1333 1714 -1354 -1714
		mu 0 4 893 894 915 914
		f 4 1334 1715 -1355 -1715
		mu 0 4 894 895 916 915
		f 4 1335 1716 -1356 -1716
		mu 0 4 895 896 917 916
		f 4 1336 1717 -1357 -1717
		mu 0 4 896 897 918 917
		f 4 1337 1718 -1358 -1718
		mu 0 4 897 898 919 918
		f 4 1338 1719 -1359 -1719
		mu 0 4 898 899 920 919
		f 4 1339 1700 -1360 -1720
		mu 0 4 899 900 921 920
		f 4 1340 1721 -1361 -1721
		mu 0 4 902 901 922 923
		f 4 1341 1722 -1362 -1722
		mu 0 4 901 903 924 922
		f 4 1342 1723 -1363 -1723
		mu 0 4 903 904 925 924
		f 4 1343 1724 -1364 -1724
		mu 0 4 904 905 926 925
		f 4 1344 1725 -1365 -1725
		mu 0 4 905 906 927 926
		f 4 1345 1726 -1366 -1726
		mu 0 4 906 907 928 927
		f 4 1346 1727 -1367 -1727
		mu 0 4 907 908 929 928
		f 4 1347 1728 -1368 -1728
		mu 0 4 908 909 930 929
		f 4 1348 1729 -1369 -1729
		mu 0 4 909 910 931 930
		f 4 1349 1730 -1370 -1730
		mu 0 4 910 911 932 931
		f 4 1350 1731 -1371 -1731
		mu 0 4 911 912 933 932
		f 4 1351 1732 -1372 -1732
		mu 0 4 912 913 934 933
		f 4 1352 1733 -1373 -1733
		mu 0 4 913 914 935 934
		f 4 1353 1734 -1374 -1734
		mu 0 4 914 915 936 935
		f 4 1354 1735 -1375 -1735
		mu 0 4 915 916 937 936
		f 4 1355 1736 -1376 -1736
		mu 0 4 916 917 938 937
		f 4 1356 1737 -1377 -1737
		mu 0 4 917 918 939 938
		f 4 1357 1738 -1378 -1738
		mu 0 4 918 919 940 939
		f 4 1358 1739 -1379 -1739
		mu 0 4 919 920 941 940
		f 4 1359 1720 -1380 -1740
		mu 0 4 920 921 942 941
		f 4 1360 1741 -1381 -1741
		mu 0 4 923 922 943 944
		f 4 1361 1742 -1382 -1742
		mu 0 4 922 924 945 943
		f 4 1362 1743 -1383 -1743
		mu 0 4 924 925 946 945
		f 4 1363 1744 -1384 -1744
		mu 0 4 925 926 947 946
		f 4 1364 1745 -1385 -1745
		mu 0 4 926 927 948 947
		f 4 1365 1746 -1386 -1746
		mu 0 4 927 928 949 948
		f 4 1366 1747 -1387 -1747
		mu 0 4 928 929 950 949
		f 4 1367 1748 -1388 -1748
		mu 0 4 929 930 951 950
		f 4 1368 1749 -1389 -1749
		mu 0 4 930 931 952 951
		f 4 1369 1750 -1390 -1750
		mu 0 4 931 932 953 952
		f 4 1370 1751 -1391 -1751
		mu 0 4 932 933 954 953
		f 4 1371 1752 -1392 -1752
		mu 0 4 933 934 955 954
		f 4 1372 1753 -1393 -1753
		mu 0 4 934 935 956 955
		f 4 1373 1754 -1394 -1754
		mu 0 4 935 936 957 956
		f 4 1374 1755 -1395 -1755
		mu 0 4 936 937 958 957
		f 4 1375 1756 -1396 -1756
		mu 0 4 937 938 959 958
		f 4 1376 1757 -1397 -1757
		mu 0 4 938 939 960 959
		f 4 1377 1758 -1398 -1758
		mu 0 4 939 940 961 960
		f 4 1378 1759 -1399 -1759
		mu 0 4 940 941 962 961
		f 4 1379 1740 -1400 -1760
		mu 0 4 941 942 963 962
		f 4 1380 1761 -1401 -1761
		mu 0 4 944 943 964 965
		f 4 1381 1762 -1402 -1762
		mu 0 4 943 945 966 964
		f 4 1382 1763 -1403 -1763
		mu 0 4 945 946 967 966
		f 4 1383 1764 -1404 -1764
		mu 0 4 946 947 968 967
		f 4 1384 1765 -1405 -1765
		mu 0 4 947 948 969 968
		f 4 1385 1766 -1406 -1766
		mu 0 4 948 949 970 969
		f 4 1386 1767 -1407 -1767
		mu 0 4 949 950 971 970
		f 4 1387 1768 -1408 -1768
		mu 0 4 950 951 972 971
		f 4 1388 1769 -1409 -1769
		mu 0 4 951 952 973 972
		f 4 1389 1770 -1410 -1770
		mu 0 4 952 953 974 973
		f 4 1390 1771 -1411 -1771
		mu 0 4 953 954 975 974
		f 4 1391 1772 -1412 -1772
		mu 0 4 954 955 976 975
		f 4 1392 1773 -1413 -1773
		mu 0 4 955 956 977 976
		f 4 1393 1774 -1414 -1774
		mu 0 4 956 957 978 977
		f 4 1394 1775 -1415 -1775
		mu 0 4 957 958 979 978
		f 4 1395 1776 -1416 -1776
		mu 0 4 958 959 980 979
		f 4 1396 1777 -1417 -1777
		mu 0 4 959 960 981 980
		f 4 1397 1778 -1418 -1778
		mu 0 4 960 961 982 981
		f 4 1398 1779 -1419 -1779
		mu 0 4 961 962 983 982
		f 4 1399 1760 -1420 -1780
		mu 0 4 962 963 984 983
		f 4 1400 1781 -1421 -1781
		mu 0 4 965 964 985 986
		f 4 1401 1782 -1422 -1782
		mu 0 4 964 966 987 985
		f 4 1402 1783 -1423 -1783
		mu 0 4 966 967 988 987
		f 4 1403 1784 -1424 -1784
		mu 0 4 967 968 989 988
		f 4 1404 1785 -1425 -1785
		mu 0 4 968 969 990 989
		f 4 1405 1786 -1426 -1786
		mu 0 4 969 970 991 990
		f 4 1406 1787 -1427 -1787
		mu 0 4 970 971 992 991
		f 4 1407 1788 -1428 -1788
		mu 0 4 971 972 993 992
		f 4 1408 1789 -1429 -1789
		mu 0 4 972 973 994 993
		f 4 1409 1790 -1430 -1790
		mu 0 4 973 974 995 994
		f 4 1410 1791 -1431 -1791
		mu 0 4 974 975 996 995
		f 4 1411 1792 -1432 -1792
		mu 0 4 975 976 997 996
		f 4 1412 1793 -1433 -1793
		mu 0 4 976 977 998 997
		f 4 1413 1794 -1434 -1794
		mu 0 4 977 978 999 998
		f 4 1414 1795 -1435 -1795
		mu 0 4 978 979 1000 999
		f 4 1415 1796 -1436 -1796
		mu 0 4 979 980 1001 1000
		f 4 1416 1797 -1437 -1797
		mu 0 4 980 981 1002 1001
		f 4 1417 1798 -1438 -1798
		mu 0 4 981 982 1003 1002
		f 4 1418 1799 -1439 -1799
		mu 0 4 982 983 1004 1003
		f 4 1419 1780 -1440 -1800
		mu 0 4 983 984 1005 1004
		f 4 1420 1801 -1441 -1801
		mu 0 4 986 985 1006 1007
		f 4 1421 1802 -1442 -1802
		mu 0 4 985 987 1008 1006
		f 4 1422 1803 -1443 -1803
		mu 0 4 987 988 1009 1008
		f 4 1423 1804 -1444 -1804
		mu 0 4 988 989 1010 1009
		f 4 1424 1805 -1445 -1805
		mu 0 4 989 990 1011 1010
		f 4 1425 1806 -1446 -1806
		mu 0 4 990 991 1012 1011
		f 4 1426 1807 -1447 -1807
		mu 0 4 991 992 1013 1012
		f 4 1427 1808 -1448 -1808
		mu 0 4 992 993 1014 1013
		f 4 1428 1809 -1449 -1809
		mu 0 4 993 994 1015 1014
		f 4 1429 1810 -1450 -1810
		mu 0 4 994 995 1016 1015
		f 4 1430 1811 -1451 -1811
		mu 0 4 995 996 1017 1016
		f 4 1431 1812 -1452 -1812
		mu 0 4 996 997 1018 1017
		f 4 1432 1813 -1453 -1813
		mu 0 4 997 998 1019 1018
		f 4 1433 1814 -1454 -1814
		mu 0 4 998 999 1020 1019
		f 4 1434 1815 -1455 -1815
		mu 0 4 999 1000 1021 1020
		f 4 1435 1816 -1456 -1816
		mu 0 4 1000 1001 1022 1021
		f 4 1436 1817 -1457 -1817
		mu 0 4 1001 1002 1023 1022
		f 4 1437 1818 -1458 -1818
		mu 0 4 1002 1003 1024 1023
		f 4 1438 1819 -1459 -1819
		mu 0 4 1003 1004 1025 1024
		f 4 1439 1800 -1460 -1820
		mu 0 4 1004 1005 1026 1025
		f 4 1440 1821 -1461 -1821
		mu 0 4 1007 1006 1027 1028
		f 4 1441 1822 -1462 -1822
		mu 0 4 1006 1008 1029 1027
		f 4 1442 1823 -1463 -1823
		mu 0 4 1008 1009 1030 1029
		f 4 1443 1824 -1464 -1824
		mu 0 4 1009 1010 1031 1030
		f 4 1444 1825 -1465 -1825
		mu 0 4 1010 1011 1032 1031
		f 4 1445 1826 -1466 -1826
		mu 0 4 1011 1012 1033 1032
		f 4 1446 1827 -1467 -1827
		mu 0 4 1012 1013 1034 1033
		f 4 1447 1828 -1468 -1828
		mu 0 4 1013 1014 1035 1034
		f 4 1448 1829 -1469 -1829
		mu 0 4 1014 1015 1036 1035
		f 4 1449 1830 -1470 -1830
		mu 0 4 1015 1016 1037 1036
		f 4 1450 1831 -1471 -1831
		mu 0 4 1016 1017 1038 1037
		f 4 1451 1832 -1472 -1832
		mu 0 4 1017 1018 1039 1038
		f 4 1452 1833 -1473 -1833
		mu 0 4 1018 1019 1040 1039
		f 4 1453 1834 -1474 -1834
		mu 0 4 1019 1020 1041 1040
		f 4 1454 1835 -1475 -1835
		mu 0 4 1020 1021 1042 1041
		f 4 1455 1836 -1476 -1836
		mu 0 4 1021 1022 1043 1042
		f 4 1456 1837 -1477 -1837
		mu 0 4 1022 1023 1044 1043
		f 4 1457 1838 -1478 -1838
		mu 0 4 1023 1024 1045 1044
		f 4 1458 1839 -1479 -1839
		mu 0 4 1024 1025 1046 1045
		f 4 1459 1820 -1480 -1840
		mu 0 4 1025 1026 1047 1046
		f 4 1460 1841 -1481 -1841
		mu 0 4 1028 1027 1048 1049
		f 4 1461 1842 -1482 -1842
		mu 0 4 1027 1029 1050 1048
		f 4 1462 1843 -1483 -1843
		mu 0 4 1029 1030 1051 1050
		f 4 1463 1844 -1484 -1844
		mu 0 4 1030 1031 1052 1051
		f 4 1464 1845 -1485 -1845
		mu 0 4 1031 1032 1053 1052
		f 4 1465 1846 -1486 -1846
		mu 0 4 1032 1033 1054 1053
		f 4 1466 1847 -1487 -1847
		mu 0 4 1033 1034 1055 1054
		f 4 1467 1848 -1488 -1848
		mu 0 4 1034 1035 1056 1055
		f 4 1468 1849 -1489 -1849
		mu 0 4 1035 1036 1057 1056
		f 4 1469 1850 -1490 -1850
		mu 0 4 1036 1037 1058 1057
		f 4 1470 1851 -1491 -1851
		mu 0 4 1037 1038 1059 1058
		f 4 1471 1852 -1492 -1852
		mu 0 4 1038 1039 1060 1059
		f 4 1472 1853 -1493 -1853
		mu 0 4 1039 1040 1061 1060
		f 4 1473 1854 -1494 -1854
		mu 0 4 1040 1041 1062 1061
		f 4 1474 1855 -1495 -1855
		mu 0 4 1041 1042 1063 1062
		f 4 1475 1856 -1496 -1856
		mu 0 4 1042 1043 1064 1063
		f 4 1476 1857 -1497 -1857
		mu 0 4 1043 1044 1065 1064
		f 4 1477 1858 -1498 -1858
		mu 0 4 1044 1045 1066 1065
		f 4 1478 1859 -1499 -1859
		mu 0 4 1045 1046 1067 1066
		f 4 1479 1840 -1500 -1860
		mu 0 4 1046 1047 1068 1067
		f 4 1480 1861 -1501 -1861
		mu 0 4 1049 1048 1069 1070
		f 4 1481 1862 -1502 -1862
		mu 0 4 1048 1050 1071 1069
		f 4 1482 1863 -1503 -1863
		mu 0 4 1050 1051 1072 1071
		f 4 1483 1864 -1504 -1864
		mu 0 4 1051 1052 1073 1072
		f 4 1484 1865 -1505 -1865
		mu 0 4 1052 1053 1074 1073
		f 4 1485 1866 -1506 -1866
		mu 0 4 1053 1054 1075 1074
		f 4 1486 1867 -1507 -1867
		mu 0 4 1054 1055 1076 1075
		f 4 1487 1868 -1508 -1868
		mu 0 4 1055 1056 1077 1076
		f 4 1488 1869 -1509 -1869
		mu 0 4 1056 1057 1078 1077
		f 4 1489 1870 -1510 -1870
		mu 0 4 1057 1058 1079 1078
		f 4 1490 1871 -1511 -1871
		mu 0 4 1058 1059 1080 1079
		f 4 1491 1872 -1512 -1872
		mu 0 4 1059 1060 1081 1080
		f 4 1492 1873 -1513 -1873
		mu 0 4 1060 1061 1082 1081
		f 4 1493 1874 -1514 -1874
		mu 0 4 1061 1062 1083 1082
		f 4 1494 1875 -1515 -1875
		mu 0 4 1062 1063 1084 1083
		f 4 1495 1876 -1516 -1876
		mu 0 4 1063 1064 1085 1084
		f 4 1496 1877 -1517 -1877
		mu 0 4 1064 1065 1086 1085
		f 4 1497 1878 -1518 -1878
		mu 0 4 1065 1066 1087 1086
		f 4 1498 1879 -1519 -1879
		mu 0 4 1066 1067 1088 1087
		f 4 1499 1860 -1520 -1880
		mu 0 4 1067 1068 1089 1088
		f 3 -1141 -1881 1881
		mu 0 3 692 691 1090
		f 3 -1142 -1882 1882
		mu 0 3 695 692 1091
		f 3 -1143 -1883 1883
		mu 0 3 697 695 1092
		f 3 -1144 -1884 1884
		mu 0 3 699 697 1093
		f 3 -1145 -1885 1885
		mu 0 3 701 699 1094
		f 3 -1146 -1886 1886
		mu 0 3 703 701 1095
		f 3 -1147 -1887 1887
		mu 0 3 705 703 1096
		f 3 -1148 -1888 1888
		mu 0 3 707 705 1097
		f 3 -1149 -1889 1889
		mu 0 3 709 707 1098
		f 3 -1150 -1890 1890
		mu 0 3 711 709 1099
		f 3 -1151 -1891 1891
		mu 0 3 713 711 1100
		f 3 -1152 -1892 1892
		mu 0 3 715 713 1101
		f 3 -1153 -1893 1893
		mu 0 3 717 715 1102
		f 3 -1154 -1894 1894
		mu 0 3 719 717 1103
		f 3 -1155 -1895 1895
		mu 0 3 721 719 1104
		f 3 -1156 -1896 1896
		mu 0 3 723 721 1105
		f 3 -1157 -1897 1897
		mu 0 3 725 723 1106
		f 3 -1158 -1898 1898
		mu 0 3 727 725 1107
		f 3 -1159 -1899 1899
		mu 0 3 729 727 1108
		f 3 -1160 -1900 1880
		mu 0 3 731 729 1109
		f 3 1500 1901 -1901
		mu 0 3 1070 1069 1110
		f 3 1501 1902 -1902
		mu 0 3 1069 1071 1111
		f 3 1502 1903 -1903
		mu 0 3 1071 1072 1112
		f 3 1503 1904 -1904
		mu 0 3 1072 1073 1113
		f 3 1504 1905 -1905
		mu 0 3 1073 1074 1114
		f 3 1505 1906 -1906
		mu 0 3 1074 1075 1115
		f 3 1506 1907 -1907
		mu 0 3 1075 1076 1116
		f 3 1507 1908 -1908
		mu 0 3 1076 1077 1117
		f 3 1508 1909 -1909
		mu 0 3 1077 1078 1118
		f 3 1509 1910 -1910
		mu 0 3 1078 1079 1119
		f 3 1510 1911 -1911
		mu 0 3 1079 1080 1120
		f 3 1511 1912 -1912
		mu 0 3 1080 1081 1121
		f 3 1512 1913 -1913
		mu 0 3 1081 1082 1122
		f 3 1513 1914 -1914
		mu 0 3 1082 1083 1123
		f 3 1514 1915 -1915
		mu 0 3 1083 1084 1124
		f 3 1515 1916 -1916
		mu 0 3 1084 1085 1125
		f 3 1516 1917 -1917
		mu 0 3 1085 1086 1126
		f 3 1517 1918 -1918
		mu 0 3 1086 1087 1127
		f 3 1518 1919 -1919
		mu 0 3 1087 1088 1128
		f 3 1519 1900 -1920
		mu 0 3 1088 1089 1129;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder7";
	rename -uid "AB332BC9-4238-554D-8F7E-3ABFD8687CAE";
	setAttr ".t" -type "double3" 6.1779849145899721 -0.48455962961390675 -0.95781886584257458 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1.3764276579665362 1.3764276579665362 1.3764276579665362 ;
	setAttr ".rp" -type "double3" -3.2130256709969882 -1.1825178681627266 1.0520774272618247 ;
	setAttr ".sp" -type "double3" -3.2130256709969882 -1.1825178681627266 1.0520774272618247 ;
createNode transform -n "polySurface5" -p "pCylinder7";
	rename -uid "5821A16B-4F7F-05D0-8699-E29438BA03C5";
createNode transform -n "transform22" -p "polySurface5";
	rename -uid "022AC6A8-4CD0-E523-80CD-25BCBC30BCBD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform22";
	rename -uid "60019394-47C3-9E24-B31F-4583AAFEFAE1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "pCylinder7";
	rename -uid "7ECE0A01-4684-2EC9-4920-A7AF13C235BF";
createNode transform -n "transform23" -p "polySurface6";
	rename -uid "F593BE51-4485-9E95-A5CC-9EB017D595B5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform23";
	rename -uid "5A5B6E3E-48C3-C931-C60C-E386D33A3ABB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7" -p "pCylinder7";
	rename -uid "E3039908-4A27-A203-BCD8-82B10ECF836C";
createNode transform -n "transform24" -p "|pCylinder7|polySurface7";
	rename -uid "2BFDBA14-482A-56B7-3B66-148EF0E2A1B5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform24";
	rename -uid "670B956B-43A6-F814-9DC7-D090C51CFCA9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform13" -p "pCylinder7";
	rename -uid "1156BCCC-449A-E08C-329D-219443B63E80";
	setAttr ".v" no;
createNode mesh -n "pCylinder7Shape" -p "transform13";
	rename -uid "78F8E9F8-429A-6058-6DEE-E4964AF3CF26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:999]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1130 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.5874998
		 0.62595451 0.59999979 0.6236639 0.61249977 0.62356275 0.62499976 0.62566131 0.375
		 0.62566131 0.38749999 0.62975377 0.39999998 0.63029772 0.41249996 0.62803346 0.42499995
		 0.63037747 0.43749994 0.63372368 0.44999993 0.63641351 0.46249992 0.63818419 0.4749999
		 0.63886201 0.48749989 0.63838083 0.49999988 0.63678759 0.51249987 0.63423836 0.52499986
		 0.63526314 0.53749985 0.63391989 0.54999983 0.63442332 0.56249982 0.63130039 0.57499981
		 0.62941426 0.43749997 0.39524305 0.44999993 0.39529002 0.46249992 0.39980191 0.4749999
		 0.39914191 0.48749989 0.39873752 0.49999988 0.39601022 0.51249987 0.39938706 0.52499986
		 0.39597398 0.53749985 0.39277267 0.54999983 0.39387321 0.56249982 0.38923782 0.57499981
		 0.39102533 0.58749986 0.38770431 0.59999979 0.38830107 0.61249977 0.38595217 0.62499976
		 0.38256419 0.375 0.38256419 0.38749999 0.38771546 0.39999998 0.39446956 0.41249996
		 0.39091039 0.42499998 0.39282447 0 0.050000001 0.050000001 0.050000001 0.050000001
		 0.1 0 0.1 0.1 0.050000001 0.1 0.1 0.15000001 0.050000001 0.15000001 0.1 0.2 0.050000001
		 0.2 0.1 0.25 0.050000001 0.25 0.1 0.30000001 0.050000001 0.30000001 0.1 0.35000002
		 0.050000001 0.35000002 0.1 0.40000004 0.050000001 0.40000004 0.1 0.45000005 0.050000001
		 0.45000005 0.1 0.50000006 0.050000001 0.50000006 0.1 0.55000007 0.050000001 0.55000007
		 0.1 0.60000008 0.050000001 0.60000008 0.1 0.6500001 0.050000001 0.6500001 0.1 0.70000011
		 0.050000001 0.70000011 0.1 0.75000012 0.050000001 0.75000012 0.1 0.80000013 0.050000001
		 0.80000013 0.1 0.85000014 0.050000001 0.85000014 0.1 0.90000015 0.050000001 0.90000015
		 0.1 0.95000017 0.050000001 0.95000017 0.1 1.000000119209 0.050000001 1.000000119209
		 0.1 0.050000001 0.15000001 0 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0.050000001 0.30000001 0 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001;
	setAttr ".uvst[0].uvsp[250:499]" 0.95000017 0.30000001 1.000000119209 0.30000001
		 0.050000001 0.35000002 0 0.35000002 0.1 0.35000002 0.15000001 0.35000002 0.2 0.35000002
		 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004 0.35000002
		 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008 0.35000002
		 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013 0.35000002
		 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0.050000001 0.40000004 0 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0.050000001 0.45000005 0 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0.050000001 0.50000006 0 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0.050000001 0.55000007 0 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0.050000001 0.60000008 0 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008 0.95000017 0.60000008 1.000000119209
		 0.60000008 0.050000001 0.6500001 0 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2
		 0.6500001 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001
		 0.45000005 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001
		 0.6500001 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001
		 0.85000014 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001
		 0.050000001 0.70000011 0 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011
		 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011
		 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011
		 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011
		 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209
		 0.70000011 0.050000001 0.75000012 0 0.75000012 0.1 0.75000012 0.15000001 0.75000012
		 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004
		 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008
		 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013
		 0.75000012 0.85000014 0.75000012 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209
		 0.75000012 0.050000001 0.80000013 0 0.80000013 0.1 0.80000013 0.15000001 0.80000013
		 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004
		 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008
		 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013
		 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209
		 0.80000013 0.050000001 0.85000014 0 0.85000014 0.1 0.85000014 0.15000001 0.85000014
		 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209
		 0.85000014 0.050000001 0.90000015 0 0.90000015 0.1 0.90000015 0.15000001 0.90000015
		 0.2 0.90000015 0.25 0.90000015 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004
		 0.90000015 0.45000005 0.90000015 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008
		 0.90000015 0.6500001 0.90000015 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013
		 0.90000015;
	setAttr ".uvst[0].uvsp[500:749]" 0.85000014 0.90000015 0.90000015 0.90000015
		 0.95000017 0.90000015 1.000000119209 0.90000015 0.050000001 0.95000017 0 0.95000017
		 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017
		 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017
		 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017
		 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017
		 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175
		 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004
		 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875
		 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001
		 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625
		 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002
		 1 0.375 0.62566131 0.38749999 0.62975377 0.38749999 0.68843985 0.375 0.68843985 0.39999998
		 0.63029772 0.39999998 0.68843985 0.41249996 0.62803346 0.41249996 0.68843985 0.42499995
		 0.63037747 0.42499995 0.68843985 0.43749994 0.63372368 0.43749994 0.68843985 0.44999993
		 0.63641351 0.44999993 0.68843985 0.46249992 0.63818419 0.46249992 0.68843985 0.4749999
		 0.63886201 0.4749999 0.68843985 0.48749989 0.63838083 0.48749989 0.68843985 0.49999988
		 0.63678759 0.49999988 0.68843985 0.51249987 0.63423836 0.51249987 0.68843985 0.52499986
		 0.63526314 0.52499986 0.68843985 0.53749985 0.63391989 0.53749985 0.68843985 0.54999983
		 0.63442332 0.54999983 0.68843985 0.56249982 0.63130039 0.56249982 0.68843985 0.57499981
		 0.62941426 0.57499981 0.68843985 0.5874998 0.62595451 0.5874998 0.68843985 0.59999979
		 0.6236639 0.59999979 0.68843985 0.61249977 0.62356275 0.61249977 0.68843985 0.62499976
		 0.62566131 0.62499976 0.68843985 0.62640899 0.064408496 0.64860266 0.10796607 0.5
		 0.15000001 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.6486026 0.89203393 0.62640893 0.93559146 0.5
		 0.83749998 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854
		 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974
		 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5
		 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266
		 0.79546607 0.65625 0.84375 0.58749986 0.38770431 0.59999979 0.38830107 0.61249977
		 0.38595217 0.62499976 0.38256419 0.375 0.38256419 0.38749999 0.38771546 0.39999998
		 0.39446956 0.41249996 0.39091039 0.42499998 0.39282447 0.43749997 0.39524305 0.44999993
		 0.39529002 0.46249992 0.39980191 0.4749999 0.39914191 0.48749989 0.39873752 0.49999988
		 0.39601022 0.51249987 0.39938706 0.52499986 0.39597398 0.53749985 0.39277267 0.54999983
		 0.39387321 0.56249982 0.38923782 0.57499981 0.39102533 0.43749994 0.3125 0.44999993
		 0.3125 0.46249992 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375
		 0.3125 0.38749999 0.3125 0.39999998 0.3125 0.41249996 0.3125 0.42499995 0.3125 0
		 0.050000001 0.050000001 0.050000001 0.050000001 0.1 0 0.1 0.1 0.050000001 0.1 0.1
		 0.15000001 0.050000001 0.15000001 0.1 0.2 0.050000001 0.2 0.1 0.25 0.050000001 0.25
		 0.1 0.30000001 0.050000001 0.30000001 0.1 0.35000002 0.050000001 0.35000002 0.1 0.40000004
		 0.050000001 0.40000004 0.1 0.45000005 0.050000001 0.45000005 0.1 0.50000006 0.050000001
		 0.50000006 0.1 0.55000007 0.050000001 0.55000007 0.1 0.60000008 0.050000001 0.60000008
		 0.1 0.6500001 0.050000001 0.6500001 0.1 0.70000011 0.050000001 0.70000011 0.1 0.75000012
		 0.050000001 0.75000012 0.1 0.80000013 0.050000001 0.80000013 0.1 0.85000014 0.050000001
		 0.85000014 0.1 0.90000015 0.050000001 0.90000015 0.1 0.95000017 0.050000001 0.95000017
		 0.1 1.000000119209 0.050000001 1.000000119209 0.1 0.050000001 0.15000001 0 0.15000001
		 0.1 0.15000001 0.15000001 0.15000001 0.2 0.15000001 0.25 0.15000001 0.30000001 0.15000001
		 0.35000002 0.15000001 0.40000004 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001
		 0.55000007 0.15000001 0.60000008 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001
		 0.75000012 0.15000001 0.80000013 0.15000001;
	setAttr ".uvst[0].uvsp[750:999]" 0.85000014 0.15000001 0.90000015 0.15000001
		 0.95000017 0.15000001 1.000000119209 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001
		 0.2 0.2 0.2 0.25 0.2 0.30000001 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2
		 0.50000006 0.2 0.55000007 0.2 0.60000008 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012
		 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015 0.2 0.95000017 0.2 1.000000119209 0.2
		 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25
		 0.35000002 0.25 0.40000004 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008
		 0.25 0.6500001 0.25 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25
		 0.90000015 0.25 0.95000017 0.25 1.000000119209 0.25 0.050000001 0.30000001 0 0.30000001
		 0.1 0.30000001 0.15000001 0.30000001 0.2 0.30000001 0.25 0.30000001 0.30000001 0.30000001
		 0.35000002 0.30000001 0.40000004 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001
		 0.55000007 0.30000001 0.60000008 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001
		 0.75000012 0.30000001 0.80000013 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001
		 0.95000017 0.30000001 1.000000119209 0.30000001 0.050000001 0.35000002 0 0.35000002
		 0.1 0.35000002 0.15000001 0.35000002 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002
		 0.35000002 0.35000002 0.40000004 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002
		 0.55000007 0.35000002 0.60000008 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002
		 0.75000012 0.35000002 0.80000013 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002
		 0.95000017 0.35000002 1.000000119209 0.35000002 0.050000001 0.40000004 0 0.40000004
		 0.1 0.40000004 0.15000001 0.40000004 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004
		 0.35000002 0.40000004 0.40000004 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004
		 0.55000007 0.40000004 0.60000008 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004
		 0.75000012 0.40000004 0.80000013 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004
		 0.95000017 0.40000004 1.000000119209 0.40000004 0.050000001 0.45000005 0 0.45000005
		 0.1 0.45000005 0.15000001 0.45000005 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005
		 0.35000002 0.45000005 0.40000004 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005
		 0.55000007 0.45000005 0.60000008 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005
		 0.75000012 0.45000005 0.80000013 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005
		 0.95000017 0.45000005 1.000000119209 0.45000005 0.050000001 0.50000006 0 0.50000006
		 0.1 0.50000006 0.15000001 0.50000006 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006
		 0.35000002 0.50000006 0.40000004 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006
		 0.55000007 0.50000006 0.60000008 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006
		 0.75000012 0.50000006 0.80000013 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006
		 0.95000017 0.50000006 1.000000119209 0.50000006 0.050000001 0.55000007 0 0.55000007
		 0.1 0.55000007 0.15000001 0.55000007 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007
		 0.35000002 0.55000007 0.40000004 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007
		 0.55000007 0.55000007 0.60000008 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007
		 0.75000012 0.55000007 0.80000013 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007
		 0.95000017 0.55000007 1.000000119209 0.55000007 0.050000001 0.60000008 0 0.60000008
		 0.1 0.60000008 0.15000001 0.60000008 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008
		 0.35000002 0.60000008 0.40000004 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008
		 0.55000007 0.60000008 0.60000008 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008
		 0.75000012 0.60000008 0.80000013 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008
		 0.95000017 0.60000008 1.000000119209 0.60000008 0.050000001 0.6500001 0 0.6500001
		 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001 0.25 0.6500001 0.30000001 0.6500001
		 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005 0.6500001 0.50000006 0.6500001
		 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001 0.6500001 0.70000011 0.6500001
		 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014 0.6500001 0.90000015 0.6500001
		 0.95000017 0.6500001 1.000000119209 0.6500001 0.050000001 0.70000011 0 0.70000011
		 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011
		 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011
		 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011
		 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011
		 0.95000017 0.70000011 1.000000119209 0.70000011 0.050000001 0.75000012 0 0.75000012
		 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012
		 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012
		 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012;
	setAttr ".uvst[0].uvsp[1000:1129]" 0.75000012 0.75000012 0.80000013 0.75000012
		 0.85000014 0.75000012 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209
		 0.75000012 0.050000001 0.80000013 0 0.80000013 0.1 0.80000013 0.15000001 0.80000013
		 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004
		 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008
		 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013
		 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209
		 0.80000013 0.050000001 0.85000014 0 0.85000014 0.1 0.85000014 0.15000001 0.85000014
		 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209
		 0.85000014 0.050000001 0.90000015 0 0.90000015 0.1 0.90000015 0.15000001 0.90000015
		 0.2 0.90000015 0.25 0.90000015 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004
		 0.90000015 0.45000005 0.90000015 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008
		 0.90000015 0.6500001 0.90000015 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013
		 0.90000015 0.85000014 0.90000015 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209
		 0.90000015 0.050000001 0.95000017 0 0.95000017 0.1 0.95000017 0.15000001 0.95000017
		 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004
		 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008
		 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013
		 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209
		 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002
		 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001
		 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875 0 0.92500001 0 0.97500002 0 0.025
		 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001
		 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004
		 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 928 ".vt";
	setAttr ".vt[0:165]"  -3.06937027 -1.45815814 1.40710044 -3.089087725 -1.45815814 1.4484657
		 -3.11979795 -1.45815814 1.48129344 -3.15849543 -1.45815814 1.50237012 -3.2013917 -1.45815814 1.50963259
		 -3.24428797 -1.45815814 1.50237012 -3.28298545 -1.45815814 1.48129344 -3.31369567 -1.45815814 1.4484657
		 -3.33341289 -1.45815814 1.40710044 -3.3402071 -1.45815814 1.36124659 -3.33341289 -1.45815814 1.31539285
		 -3.31369567 -1.45815814 1.27402747 -3.28298545 -1.45815814 1.24119973 -3.24428797 -1.45815814 1.22012317
		 -3.2013917 -1.45815814 1.21286058 -3.15849543 -1.45815814 1.22012317 -3.11979818 -1.45815814 1.24119985
		 -3.089087725 -1.45815814 1.27402747 -3.069370508 -1.45815814 1.31539285 -3.062576294 -1.45815814 1.36124659
		 -3.061014891 -2.83746552 1.41090536 -3.08197999 -2.83746552 1.45570326 -3.11463404 -2.83746552 1.49125504
		 -3.15578055 -2.83746552 1.51408064 -3.2013917 -2.83746552 1.52194595 -3.24700284 -2.83746552 1.51408064
		 -3.28814936 -2.83746552 1.49125504 -3.3208034 -2.83746552 1.45570326 -3.3417685 -2.83746552 1.41090536
		 -3.34899259 -2.83746552 1.36124659 -3.3417685 -2.83746552 1.31158781 -3.3208034 -2.83746552 1.26678991
		 -3.28814936 -2.83746552 1.23123813 -3.24700284 -2.83746552 1.20841253 -3.2013917 -2.83746552 1.20054734
		 -3.15578055 -2.83746552 1.20841265 -3.11463404 -2.83746552 1.23123825 -3.08197999 -2.83746552 1.26679003
		 -3.061014891 -2.83746552 1.31158781 -3.053790808 -2.83746552 1.36124659 -3.2013917 -1.45815814 1.36124659
		 -3.2013917 -2.83746552 1.36124659 -3.00026941299 -2.63995695 1.20504808 -2.96495819 -2.63271666 1.27912819
		 -2.95279074 -2.63239694 1.36124659 -2.96495819 -2.63902998 1.44336498 -3.00026917458 -2.65196586 1.51744509
		 -3.055267811 -2.65368533 1.57623541 -3.12456989 -2.64652824 1.61398113 -3.2013917 -2.65393734 1.62698734
		 -3.27821374 -2.6645143 1.61398113 -3.34751558 -2.67301655 1.57623541 -3.40251398 -2.67861342 1.51744509
		 -3.4378252 -2.68075609 1.44336498 -3.44999266 -2.67923498 1.36124659 -3.4378252 -2.67419887 1.27912819
		 -3.40251398 -2.66614103 1.20504808 -3.34751558 -2.66938043 1.14625788 -3.2782135 -2.66513467 1.10851216
		 -3.2013917 -2.66672564 1.095505953 -3.12456989 -2.65685463 1.10851216 -3.055267811 -2.65089273 1.14625788
		 -3.27821374 -1.91070569 1.61398113 -3.34751558 -1.91085422 1.57623541 -3.40251398 -1.92511582 1.51744509
		 -3.4378252 -1.92302966 1.44336498 -3.44999266 -1.92175138 1.36124659 -3.4378252 -1.91313064 1.27912819
		 -3.40251398 -1.9238044 1.20504808 -3.34751558 -1.91301608 1.14625788 -3.2782135 -1.90289724 1.10851216
		 -3.2013917 -1.90637577 1.095505953 -3.12456989 -1.89172387 1.10851216 -3.055267811 -1.89737403 1.14625788
		 -3.00026941299 -1.8868767 1.20504808 -2.96495819 -1.88876295 1.27912819 -2.95279074 -1.88133836 1.36124659
		 -2.96495819 -1.87062943 1.44336498 -3.00026917458 -1.88691199 1.51744509 -3.055267811 -1.90826094 1.57623541
		 -3.12456989 -1.89701068 1.61398113 -3.2013917 -1.90306079 1.62698734 -3.1699965 -1.53691113 1.35280657
		 -3.17472172 -1.53691113 1.34353316 -3.18208098 -1.53691113 1.33617377 -3.19135427 -1.53691113 1.33144879
		 -3.20163393 -1.53691113 1.32982063 -3.21191359 -1.53691113 1.33144879 -3.22118688 -1.53691113 1.33617377
		 -3.22854614 -1.53691113 1.34353316 -3.23327136 -1.53691113 1.35280657 -3.23489928 -1.53691113 1.3630861
		 -3.23327136 -1.53691113 1.37336564 -3.22854614 -1.53691113 1.38263905 -3.22118688 -1.53691113 1.38999844
		 -3.21191359 -1.53691113 1.39472342 -3.20163393 -1.53691113 1.39635158 -3.19135427 -1.53691113 1.39472342
		 -3.18208098 -1.53691113 1.38999844 -3.17472172 -1.53691113 1.38263905 -3.16999674 -1.53691113 1.37336564
		 -3.16836858 -1.53691113 1.3630861 -3.13913822 -1.52912152 1.34277999 -3.14847207 -1.52912152 1.3244617
		 -3.16300941 -1.52912152 1.30992413 -3.18132782 -1.52912152 1.30059052 -3.20163393 -1.52912152 1.29737425
		 -3.22194004 -1.52912152 1.30059052 -3.24025846 -1.52912152 1.30992413 -3.25479579 -1.52912152 1.3244617
		 -3.26412964 -1.52912152 1.34277999 -3.26734567 -1.52912152 1.3630861 -3.26412964 -1.52912152 1.38339221
		 -3.25479579 -1.52912152 1.40171051 -3.24025846 -1.52912152 1.41624808 -3.22194004 -1.52912152 1.42558169
		 -3.20163393 -1.52912152 1.42879784 -3.18132782 -1.52912152 1.42558169 -3.16300964 -1.52912152 1.41624808
		 -3.14847207 -1.52912152 1.40171051 -3.13913822 -1.52912152 1.3833921 -3.13592219 -1.52912152 1.3630861
		 -3.10981894 -1.51635194 1.33325362 -3.12353134 -1.51635194 1.30634129 -3.14488912 -1.51635194 1.28498352
		 -3.17180133 -1.51635194 1.27127099 -3.20163393 -1.51635194 1.26654601 -3.23146653 -1.51635194 1.27127099
		 -3.25837874 -1.51635194 1.28498352 -3.27973652 -1.51635194 1.30634129 -3.29344893 -1.51635194 1.33325362
		 -3.2981739 -1.51635194 1.3630861 -3.29344893 -1.51635194 1.39291859 -3.27973652 -1.51635194 1.41983092
		 -3.25837874 -1.51635194 1.44118869 -3.23146653 -1.51635194 1.45490122 -3.20163393 -1.51635194 1.4596262
		 -3.17180133 -1.51635194 1.45490122 -3.14488912 -1.51635194 1.44118869 -3.12353134 -1.51635194 1.41983092
		 -3.10981894 -1.51635194 1.39291859 -3.10509396 -1.51635194 1.3630861 -3.082760096 -1.4989171 1.3244617
		 -3.10051394 -1.4989171 1.28961813 -3.12816596 -1.4989171 1.26196599 -3.16300941 -1.4989171 1.24421239
		 -3.20163393 -1.4989171 1.23809481 -3.24025846 -1.4989171 1.24421239 -3.2751019 -1.4989171 1.26196611
		 -3.30275393 -1.4989171 1.28961813 -3.32050753 -1.4989171 1.3244617 -3.32662511 -1.4989171 1.3630861
		 -3.32050753 -1.4989171 1.40171051 -3.30275393 -1.4989171 1.43655407 -3.2751019 -1.4989171 1.4642061
		 -3.24025846 -1.4989171 1.48195982 -3.20163393 -1.4989171 1.48807728 -3.16300964 -1.4989171 1.48195982
		 -3.12816596 -1.4989171 1.4642061 -3.10051394 -1.4989171 1.43655407 -3.082760334 -1.4989171 1.40171051
		 -3.076642752 -1.4989171 1.3630861 -3.058628559 -1.47724617 1.31662083 -3.079986334 -1.47724617 1.27470398
		 -3.11325169 -1.47724617 1.24143851 -3.15516877 -1.47724617 1.22008073;
	setAttr ".vt[166:331]" -3.20163393 -1.47724617 1.21272135 -3.24809909 -1.47724617 1.22008073
		 -3.29001617 -1.47724617 1.24143851 -3.32328153 -1.47724617 1.27470398 -3.3446393 -1.47724617 1.31662083
		 -3.35199857 -1.47724617 1.3630861 -3.3446393 -1.47724617 1.40955138 -3.32328153 -1.47724617 1.45146823
		 -3.29001617 -1.47724617 1.4847337 -3.24809909 -1.47724617 1.50609136 -3.20163393 -1.47724617 1.51345074
		 -3.15516877 -1.47724617 1.50609136 -3.11325192 -1.47724617 1.4847337 -3.079986334 -1.47724617 1.45146823
		 -3.058628559 -1.47724617 1.40955138 -3.051269293 -1.47724617 1.3630861 -3.038018227 -1.25950503 1.30992413
		 -3.062453985 -1.25950503 1.26196599 -3.10051394 -1.25950503 1.22390628 -3.14847207 -1.25950503 1.1994704
		 -3.20163393 -1.25950503 1.19105041 -3.25479579 -1.25950503 1.1994704 -3.30275393 -1.25950503 1.22390628
		 -3.34081364 -1.25950503 1.26196611 -3.36524963 -1.25950503 1.30992413 -3.37366962 -1.25950503 1.3630861
		 -3.36524963 -1.25950503 1.41624808 -3.34081364 -1.25950503 1.4642061 -3.30275393 -1.25950503 1.50226593
		 -3.25479579 -1.25950503 1.52670169 -3.20163393 -1.25950503 1.5351218 -3.14847207 -1.25950503 1.52670169
		 -3.10051394 -1.25950503 1.50226581 -3.062454224 -1.25950503 1.4642061 -3.038018227 -1.25950503 1.41624808
		 -3.029598236 -1.25950503 1.3630861 -3.021436691 -1.23105395 1.30453646 -3.048348904 -1.23105395 1.25171804
		 -3.090265989 -1.23105395 1.2098012 -3.14308429 -1.23105395 1.18288887 -3.20163393 -1.23105395 1.17361546
		 -3.26018357 -1.23105395 1.18288887 -3.31300187 -1.23105395 1.2098012 -3.35491896 -1.23105395 1.25171804
		 -3.38183117 -1.23105395 1.30453646 -3.39110446 -1.23105395 1.3630861 -3.38183117 -1.23105395 1.42163575
		 -3.35491896 -1.23105395 1.47445416 -3.31300187 -1.23105395 1.51637101 -3.26018357 -1.23105395 1.54328322
		 -3.20163393 -1.23105395 1.55255663 -3.14308429 -1.23105395 1.54328322 -3.090265989 -1.23105395 1.51637101
		 -3.048349142 -1.23105395 1.47445405 -3.021436691 -1.23105395 1.42163575 -3.012163401 -1.23105395 1.3630861
		 -3.0092921257 -1.20022559 1.30059052 -3.038018227 -1.20022559 1.24421239 -3.082760096 -1.20022559 1.1994704
		 -3.13913822 -1.20022559 1.1707443 -3.20163393 -1.20022559 1.16084599 -3.26412964 -1.20022559 1.1707443
		 -3.32050776 -1.20022559 1.1994704 -3.36524963 -1.20022559 1.24421239 -3.39397573 -1.20022559 1.30059052
		 -3.40387392 -1.20022559 1.3630861 -3.39397573 -1.20022559 1.42558169 -3.36524963 -1.20022559 1.48195982
		 -3.32050753 -1.20022559 1.52670169 -3.26412964 -1.20022559 1.55542779 -3.20163393 -1.20022559 1.56532609
		 -3.13913822 -1.20022559 1.55542779 -3.082760334 -1.20022559 1.52670169 -3.038018227 -1.20022559 1.48195982
		 -3.0092921257 -1.20022559 1.42558169 -2.99939394 -1.20022559 1.3630861 -3.0018837452 -1.16777921 1.29818332
		 -3.031716347 -1.16777921 1.23963368 -3.078181505 -1.16777921 1.1931684 -3.13673115 -1.16777921 1.16333592
		 -3.20163393 -1.16777921 1.15305638 -3.26653671 -1.16777921 1.16333592 -3.32508636 -1.16777921 1.1931684
		 -3.37155151 -1.16777921 1.23963368 -3.40138412 -1.16777921 1.29818332 -3.41166377 -1.16777921 1.3630861
		 -3.40138412 -1.16777921 1.42798889 -3.37155151 -1.16777921 1.48653853 -3.32508636 -1.16777921 1.53300369
		 -3.26653671 -1.16777921 1.56283617 -3.20163393 -1.16777921 1.57311583 -3.13673115 -1.16777921 1.56283617
		 -3.078181505 -1.16777921 1.53300369 -3.031716347 -1.16777921 1.48653841 -3.0018837452 -1.16777921 1.42798889
		 -2.99160433 -1.16777921 1.3630861 -2.9993937 -1.13451385 1.29737425 -3.029598236 -1.13451385 1.23809481
		 -3.076642752 -1.13451385 1.19105041 -3.13592219 -1.13451385 1.16084599 -3.20163393 -1.13451385 1.15043831
		 -3.26734567 -1.13451385 1.16084599 -3.32662511 -1.13451385 1.19105041 -3.37366962 -1.13451385 1.23809493
		 -3.40387392 -1.13451385 1.29737437 -3.41428161 -1.13451385 1.3630861 -3.40387392 -1.13451385 1.42879784
		 -3.37366962 -1.13451385 1.48807728 -3.32662511 -1.13451385 1.5351218 -3.26734567 -1.13451385 1.56532609
		 -3.20163393 -1.13451385 1.5757339 -3.13592219 -1.13451385 1.56532609 -3.076642752 -1.13451385 1.53512168
		 -3.029598236 -1.13451385 1.48807728 -2.99939394 -1.13451385 1.42879784 -2.98898625 -1.13451385 1.3630861
		 -3.0018837452 -1.1012485 1.29818332 -3.031716347 -1.1012485 1.23963368 -3.078181505 -1.1012485 1.1931684
		 -3.13673115 -1.1012485 1.16333592 -3.20163393 -1.1012485 1.15305638 -3.26653671 -1.1012485 1.16333592
		 -3.32508636 -1.1012485 1.1931684 -3.37155151 -1.1012485 1.23963368 -3.40138412 -1.1012485 1.29818332
		 -3.41166377 -1.1012485 1.3630861 -3.40138412 -1.1012485 1.42798889 -3.37155151 -1.1012485 1.48653853
		 -3.32508636 -1.1012485 1.53300369 -3.26653671 -1.1012485 1.56283617 -3.20163393 -1.1012485 1.57311583
		 -3.13673115 -1.1012485 1.56283617 -3.078181505 -1.1012485 1.53300369 -3.031716347 -1.1012485 1.48653841
		 -3.0018837452 -1.1012485 1.42798889 -2.99160433 -1.1012485 1.3630861 -3.0092921257 -1.068802118 1.30059052
		 -3.038018227 -1.068802118 1.24421239 -3.082760096 -1.068802118 1.1994704 -3.13913822 -1.068802118 1.1707443
		 -3.20163393 -1.068802118 1.16084599 -3.26412964 -1.068802118 1.1707443 -3.32050776 -1.068802118 1.1994704
		 -3.36524963 -1.068802118 1.24421239 -3.39397573 -1.068802118 1.30059052 -3.40387392 -1.068802118 1.3630861
		 -3.39397573 -1.068802118 1.42558169 -3.36524963 -1.068802118 1.48195982 -3.32050753 -1.068802118 1.52670169
		 -3.26412964 -1.068802118 1.55542779 -3.20163393 -1.068802118 1.56532609 -3.13913822 -1.068802118 1.55542779
		 -3.082760334 -1.068802118 1.52670169 -3.038018227 -1.068802118 1.48195982 -3.0092921257 -1.068802118 1.42558169
		 -2.99939394 -1.068802118 1.3630861 -3.021436691 -1.037973762 1.30453646 -3.048348904 -1.037973762 1.25171804
		 -3.090265989 -1.037973762 1.2098012 -3.14308429 -1.037973762 1.18288887 -3.20163393 -1.037973762 1.17361546
		 -3.26018357 -1.037973762 1.18288887 -3.31300187 -1.037973762 1.2098012 -3.35491896 -1.037973762 1.25171804
		 -3.38183117 -1.037973762 1.30453646 -3.39110446 -1.037973762 1.3630861;
	setAttr ".vt[332:497]" -3.38183117 -1.037973762 1.42163575 -3.35491896 -1.037973762 1.47445416
		 -3.31300187 -1.037973762 1.51637101 -3.26018357 -1.037973762 1.54328322 -3.20163393 -1.037973762 1.55255663
		 -3.14308429 -1.037973762 1.54328322 -3.090265989 -1.037973762 1.51637101 -3.048349142 -1.037973762 1.47445405
		 -3.021436691 -1.037973762 1.42163575 -3.012163401 -1.037973762 1.3630861 -3.038018227 -1.0095226765 1.30992413
		 -3.062453985 -1.0095226765 1.26196599 -3.10051394 -1.0095226765 1.22390628 -3.14847207 -1.0095226765 1.1994704
		 -3.20163393 -1.0095226765 1.19105041 -3.25479579 -1.0095226765 1.1994704 -3.30275393 -1.0095226765 1.22390628
		 -3.34081364 -1.0095226765 1.26196611 -3.36524963 -1.0095226765 1.30992413 -3.37366962 -1.0095226765 1.3630861
		 -3.36524963 -1.0095226765 1.41624808 -3.34081364 -1.0095226765 1.4642061 -3.30275393 -1.0095226765 1.50226593
		 -3.25479579 -1.0095226765 1.52670169 -3.20163393 -1.0095226765 1.5351218 -3.14847207 -1.0095226765 1.52670169
		 -3.10051394 -1.0095226765 1.50226581 -3.062454224 -1.0095226765 1.4642061 -3.038018227 -1.0095226765 1.41624808
		 -3.029598236 -1.0095226765 1.3630861 -3.043808222 -0.86513656 1.25417888 -3.067379236 -0.87857509 1.20991278
		 -3.10409236 -0.88924009 1.17478311 -3.15035319 -0.89608741 1.15222836 -3.20163393 -0.8984468 1.14445662
		 -3.25291467 -0.89608741 1.15222847 -3.2991755 -0.88924009 1.17478311 -3.33588839 -0.87857509 1.2099129
		 -3.35945964 -0.86513656 1.25417888 -3.36758161 -0.85023975 1.30324817 -3.35945964 -0.83534282 1.35231745
		 -3.33588839 -0.82190424 1.39658344 -3.2991755 -0.81123924 1.4317131 -3.25291467 -0.80439198 1.45426786
		 -3.20163393 -0.80203259 1.46203959 -3.15035319 -0.80439198 1.45426786 -3.10409236 -0.8112393 1.4317131
		 -3.067379475 -0.8219043 1.39658344 -3.043808222 -0.83534282 1.35231745 -3.035686255 -0.85023975 1.30324817
		 -3.070440769 -0.85105586 1.25894749 -3.090034246 -0.86222678 1.22215128 -3.12055206 -0.87109208 1.19294953
		 -3.1590066 -0.87678397 1.17420089 -3.20163393 -0.8787452 1.16774046 -3.24426126 -0.87678397 1.17420089
		 -3.2827158 -0.87109208 1.19294953 -3.31323361 -0.86222678 1.22215128 -3.33282709 -0.85105586 1.25894761
		 -3.33957863 -0.83867276 1.29973662 -3.33282709 -0.82628977 1.34052563 -3.31323361 -0.81511891 1.37732196
		 -3.2827158 -0.80625355 1.40652359 -3.24426126 -0.80056167 1.42527223 -3.20163393 -0.79860044 1.43173254
		 -3.1590066 -0.80056167 1.42527223 -3.12055206 -0.80625355 1.40652359 -3.090034246 -0.81511891 1.37732184
		 -3.070440769 -0.82628977 1.34052563 -3.076642752 -0.96247822 1.3630861 -3.10030365 -0.83893132 1.26540709
		 -3.11543703 -0.84755945 1.2369864 -3.13900828 -0.85440677 1.21443176 -3.16870975 -0.85880303 1.19995081
		 -3.20163393 -0.86031783 1.19496107 -3.23455811 -0.85880303 1.19995081 -3.26425958 -0.85440677 1.21443176
		 -3.28783059 -0.84755945 1.2369864 -3.30296421 -0.83893132 1.26540709 -3.3081789 -0.82936698 1.29691148
		 -3.30296421 -0.81980258 1.32841587 -3.28783059 -0.81117451 1.35683644 -3.26425958 -0.80432713 1.37939107
		 -3.23455811 -0.79993093 1.39387202 -3.20163393 -0.79841602 1.39886189 -3.16870975 -0.79993087 1.39387202
		 -3.13900828 -0.80432713 1.37939107 -3.11543727 -0.81117451 1.35683632 -3.10030365 -0.81980258 1.32841587
		 -3.095088959 -0.82936698 1.29691148 -3.13266158 -0.82906133 1.27339816 -3.14296246 -0.83493423 1.25405324
		 -3.1590066 -0.83959496 1.23870099 -3.17922354 -0.84258735 1.22884417 -3.20163393 -0.84361845 1.22544777
		 -3.22404432 -0.84258735 1.22884417 -3.24426126 -0.83959496 1.23870099 -3.2603054 -0.83493423 1.25405324
		 -3.27060628 -0.82906127 1.27339816 -3.27415586 -0.82255119 1.29484224 -3.27060628 -0.81604105 1.31628633
		 -3.2603054 -0.81016815 1.33563125 -3.24426126 -0.80550742 1.3509835 -3.22404432 -0.80251497 1.3608402
		 -3.20163393 -0.80148387 1.36423671 -3.17922354 -0.80251497 1.3608402 -3.1590066 -0.80550742 1.3509835
		 -3.14296246 -0.81016815 1.33563125 -3.13266158 -0.81604105 1.31628633 -3.12911201 -0.82255119 1.29484224
		 -3.16671777 -0.82168907 1.28272426 -3.17193246 -0.82466209 1.27293122 -3.18005466 -0.82702154 1.26515949
		 -3.19028902 -0.82853639 1.26016963 -3.20163393 -0.82905835 1.25845027 -3.21297884 -0.82853639 1.26016963
		 -3.2232132 -0.82702154 1.26515949 -3.2313354 -0.82466209 1.27293122 -3.23655009 -0.82168907 1.28272426
		 -3.23834682 -0.81839347 1.29358006 -3.23655009 -0.81509781 1.30443573 -3.2313354 -0.81212473 1.31422877
		 -3.2232132 -0.80976522 1.3220005 -3.21297884 -0.80825043 1.32699037 -3.20163393 -0.80772847 1.32870972
		 -3.19028902 -0.80825043 1.32699037 -3.18005466 -0.80976522 1.3220005 -3.17193246 -0.81212473 1.31422877
		 -3.16671777 -0.81509781 1.30443573 -3.16492105 -0.81839347 1.29358006 -3.20163393 -1.5395292 1.3630861
		 -3.20163393 -0.91041684 1.32151723 -3.023666143 -0.86082029 1.23835969 -3.050281525 -0.87704247 1.18870711
		 -3.09173584 -0.88991654 1.14930248 -3.1439712 -0.89818215 1.12400317 -3.20187473 -0.90103024 1.11528575
		 -3.25977826 -0.89818209 1.12400329 -3.31201363 -0.88991648 1.14930248 -3.35346794 -0.87704247 1.18870711
		 -3.38008332 -0.86082029 1.23835969 -3.38925409 -0.84283781 1.29340005 -3.38008332 -0.82485539 1.34844041
		 -3.35346794 -0.80863315 1.3980931 -3.31201363 -0.79575914 1.43749762 -3.25977826 -0.78749353 1.46279693
		 -3.20187473 -0.78464538 1.47151434 -3.14397144 -0.78749353 1.46279693 -3.09173584 -0.79575914 1.43749762
		 -3.050281525 -0.80863315 1.39809299 -3.023666382 -0.82485539 1.34844041 -3.014495373 -0.84283781 1.29340005
		 -3.012387514 0.79333144 0.6928705 -3.040687084 0.77576309 0.63909763 -3.084765196 0.76182079 0.59642321
		 -3.14030647 0.75286931 0.56902462 -3.20187473 0.74978477 0.55958366 -3.26344299 0.75286931 0.56902462
		 -3.31898427 0.76182079 0.59642327 -3.36306238 0.77576315 0.63909769 -3.39136195 0.79333144 0.6928705
		 -3.40111327 0.81280613 0.75247818 -3.39136195 0.83228076 0.81208587 -3.36306238 0.8498491 0.86585867
		 -3.31898427 0.86379141 0.90853304 -3.26344275 0.87274295 0.93593168;
	setAttr ".vt[498:663]" -3.20187473 0.87582743 0.94537264 -3.14030671 0.87274295 0.93593162
		 -3.084765196 0.86379141 0.90853304 -3.040687323 0.8498491 0.86585867 -3.012387514 0.83228076 0.81208581
		 -3.0026361942 0.81280613 0.75247818 -3.20187473 -0.84283781 1.29340005 -3.20187473 0.81280613 0.75247818
		 -2.93039036 0.63698393 1.017426968 -2.88272572 0.5992412 0.93134475 -2.86630154 0.56665325 0.83289981
		 -2.88272572 0.54241085 0.73172808 -2.93039036 0.52888644 0.6377334 -3.004629612 0.50789458 0.56649047
		 -3.098176956 0.48450083 0.52398944 -3.20187473 0.48829359 0.50547183 -3.30557251 0.5060904 0.51693588
		 -3.39911962 0.53109884 0.55890942 -3.47335911 0.56087279 0.6272831 -3.52102375 0.59249645 0.71536446
		 -3.53744793 0.62287498 0.81453133 -3.52102375 0.64903432 0.91507667 -3.47335911 0.668414 1.0071582794
		 -3.39911962 0.6953581 1.076456547 -3.30557251 0.70506436 1.12342942 -3.20187473 0.71207488 1.13841748
		 -3.098176956 0.6951254 1.12667668 -3.0046298504 0.67316663 1.083706856 -3.30557251 -0.39873958 0.81255645
		 -3.39911962 -0.38375854 0.85780603 -3.47335911 -0.34358406 0.92278171 -3.52102375 -0.31703615 1.012521505
		 -3.53744793 -0.28636628 1.11159313 -3.52102375 -0.26450974 1.21354425 -3.47335911 -0.22264566 1.29828
		 -3.39911962 -0.2125396 1.37307942 -3.30557251 -0.20988302 1.42235541 -3.20187473 -0.20060693 1.43660331
		 -3.098176956 -0.22329496 1.42673731 -3.0046298504 -0.23131548 1.37921369 -2.93039036 -0.26697165 1.31276178
		 -2.88272572 -0.29375935 1.22310042 -2.86630154 -0.3348757 1.12744188 -2.88272548 -0.37993455 1.03307116
		 -2.93039036 -0.38944173 0.93776405 -3.004629612 -0.38687146 0.858823 -3.098176956 -0.4151783 0.81792718
		 -3.20187473 -0.41301674 0.79994249 -3.24365187 -3.2800231 1.33054328 -3.27128029 -3.2800231 1.33712184
		 -3.29320621 -3.2800231 1.34736812 -3.30728364 -3.2800231 1.3602792 -3.31213427 -3.2800231 1.37459135
		 -3.30728364 -3.2800231 1.3889035 -3.29320621 -3.2800231 1.40181458 -3.27128029 -3.2800231 1.41206086
		 -3.24365187 -3.2800231 1.41863942 -3.21302557 -3.2800231 1.42090631 -3.18239927 -3.2800231 1.41863942
		 -3.15477085 -3.2800231 1.41206086 -3.13284492 -3.2800231 1.40181458 -3.11876774 -3.2800231 1.3889035
		 -3.11391687 -3.2800231 1.37459135 -3.11876774 -3.2800231 1.36027932 -3.13284492 -3.2800231 1.34736812
		 -3.15477085 -3.2800231 1.33712184 -3.18239927 -3.2800231 1.33054328 -3.21302557 -3.2800231 1.32827652
		 -3.27352405 -3.2739706 1.28757977 -3.32810044 -3.2739706 1.3005749 -3.37141252 -3.2739706 1.32081521
		 -3.39922047 -3.2739706 1.34631956 -3.40880251 -3.2739706 1.37459135 -3.39922047 -3.2739706 1.40286314
		 -3.37141252 -3.2739706 1.4283675 -3.32810044 -3.2739706 1.4486078 -3.27352405 -3.2739706 1.46160293
		 -3.21302557 -3.2739706 1.46608067 -3.15252709 -3.2739706 1.46160293 -3.097950697 -3.2739706 1.4486078
		 -3.054638624 -3.2739706 1.4283675 -3.026830673 -3.2739706 1.40286314 -3.017248631 -3.2739706 1.37459135
		 -3.026830673 -3.2739706 1.34631956 -3.054638624 -3.2739706 1.32081521 -3.097950697 -3.2739706 1.3005749
		 -3.15252709 -3.2739706 1.28757977 -3.21302557 -3.2739706 1.28310204 -3.30190659 -3.26404929 1.24675882
		 -3.38208723 -3.26404929 1.26585042 -3.44571877 -3.26404929 1.29558647 -3.48657274 -3.26404929 1.33305597
		 -3.50065017 -3.26404929 1.37459135 -3.48657274 -3.26404929 1.41612673 -3.44571877 -3.26404929 1.45359623
		 -3.38208699 -3.26404929 1.48333216 -3.30190635 -3.26404929 1.50242388 -3.21302557 -3.26404929 1.50900245
		 -3.12414479 -3.26404929 1.50242388 -3.043964148 -3.26404929 1.48333216 -2.98033237 -3.26404929 1.45359623
		 -2.9394784 -3.26404929 1.41612661 -2.92540097 -3.26404929 1.37459135 -2.9394784 -3.26404929 1.33305609
		 -2.98033237 -3.26404929 1.29558659 -3.043964148 -3.26404929 1.26585054 -3.12414479 -3.26404929 1.24675882
		 -3.21302557 -3.26404929 1.24018025 -3.32810044 -3.25050282 1.20908546 -3.43191099 -3.25050282 1.23380363
		 -3.51429534 -3.25050282 1.2723031 -3.56718946 -3.25050282 1.32081521 -3.5854156 -3.25050282 1.37459135
		 -3.56718946 -3.25050282 1.4283675 -3.51429534 -3.25050282 1.4768796 -3.43191075 -3.25050282 1.51537895
		 -3.32810044 -3.25050282 1.54009724 -3.21302557 -3.25050282 1.5486145 -3.097950697 -3.25050282 1.54009724
		 -2.99414039 -3.25050282 1.51537895 -2.9117558 -3.25050282 1.4768796 -2.85886168 -3.25050282 1.4283675
		 -2.84063578 -3.25050282 1.37459135 -2.85886168 -3.25050282 1.32081532 -2.9117558 -3.25050282 1.2723031
		 -2.99414039 -3.25050282 1.23380375 -3.097950697 -3.25050282 1.20908558 -3.21302557 -3.25050282 1.20056832
		 -3.35146093 -3.23366523 1.1754874 -3.47634506 -3.23366523 1.20522344 -3.57545376 -3.23366523 1.2515384
		 -3.63908553 -3.23366523 1.30989861 -3.66101146 -3.23366523 1.37459135 -3.63908553 -3.23366523 1.43928409
		 -3.57545376 -3.23366523 1.49764431 -3.47634506 -3.23366523 1.54395914 -3.3514607 -3.23366523 1.57369518
		 -3.21302557 -3.23366523 1.58394146 -3.074590445 -3.23366523 1.57369518 -2.94970608 -3.23366523 1.54395914
		 -2.85059762 -3.23366523 1.49764431 -2.78696585 -3.23366523 1.43928409 -2.76503992 -3.23366523 1.37459135
		 -2.78696585 -3.23366523 1.30989861 -2.85059762 -3.23366523 1.25153852 -2.94970608 -3.23366523 1.20522356
		 -3.074590445 -3.23366523 1.17548752 -3.21302557 -3.23366523 1.16524124 -3.37141252 -3.21395087 1.14679205
		 -3.51429534 -3.21395087 1.18081367 -3.62768793 -3.21395087 1.23380363 -3.70049047 -3.21395087 1.3005749
		 -3.7255764 -3.21395087 1.37459135 -3.70049047 -3.21395087 1.4486078 -3.62768793 -3.21395087 1.51537907
		 -3.51429534 -3.21395087 1.56836891 -3.37141252 -3.21395087 1.60239053 -3.21302557 -3.21395087 1.61411357
		 -3.054638624 -3.21395087 1.60239053 -2.9117558 -3.21395087 1.56836891 -2.79836345 -3.21395087 1.51537895
		 -2.7255609 -3.21395087 1.4486078 -2.70047498 -3.21395087 1.37459135 -2.7255609 -3.21395087 1.3005749
		 -2.79836345 -3.21395087 1.23380375 -2.9117558 -3.21395087 1.18081379;
	setAttr ".vt[664:829]" -3.054638624 -3.21395087 1.14679217 -3.21302557 -3.21395087 1.13506913
		 -3.38746428 -3.19184542 1.12370586 -3.54482746 -3.19184542 1.16117537 -3.66971183 -3.19184542 1.21953559
		 -3.74989223 -3.19184542 1.29307365 -3.77752066 -3.19184542 1.37459135 -3.74989223 -3.19184542 1.45610905
		 -3.66971159 -3.19184542 1.52964711 -3.54482746 -3.19184542 1.58800721 -3.38746405 -3.19184542 1.62547684
		 -3.21302557 -3.19184542 1.63838792 -3.038587093 -3.19184542 1.62547684 -2.88122368 -3.19184542 1.58800721
		 -2.75633955 -3.19184542 1.52964711 -2.67615891 -3.19184542 1.45610893 -2.64853072 -3.19184542 1.37459135
		 -2.67615891 -3.19184542 1.29307377 -2.75633955 -3.19184542 1.21953559 -2.88122368 -3.19184542 1.16117549
		 -3.038587093 -3.19184542 1.12370598 -3.21302557 -3.19184542 1.11079478 -3.39922047 -3.16789293 1.10679722
		 -3.56718946 -3.16789293 1.14679205 -3.70049047 -3.16789293 1.20908546 -3.78607488 -3.16789293 1.28757977
		 -3.81556511 -3.16789293 1.37459135 -3.78607488 -3.16789293 1.46160293 -3.70049047 -3.16789293 1.54009724
		 -3.56718946 -3.16789293 1.60239065 -3.39922047 -3.16789293 1.64238548 -3.21302557 -3.16789293 1.65616667
		 -3.026830673 -3.16789293 1.64238548 -2.85886168 -3.16789293 1.60239053 -2.7255609 -3.16789293 1.54009724
		 -2.6399765 -3.16789293 1.46160293 -2.61048603 -3.16789293 1.37459135 -2.6399765 -3.16789293 1.28757977
		 -2.7255609 -3.16789293 1.20908558 -2.85886168 -3.16789293 1.14679217 -3.026830673 -3.16789293 1.10679734
		 -3.21302557 -3.16789293 1.093016148 -3.40639234 -3.14268303 1.096482515 -3.58083081 -3.14268303 1.13801789
		 -3.71926618 -3.14268303 1.20271063 -3.80814695 -3.14268303 1.28422832 -3.83877325 -3.14268303 1.37459135
		 -3.80814695 -3.14268303 1.46495438 -3.71926594 -3.14268303 1.54647195 -3.58083081 -3.14268303 1.61116469
		 -3.4063921 -3.14268303 1.65270007 -3.21302557 -3.14268303 1.6670121 -3.019659042 -3.14268303 1.65270007
		 -2.84522033 -3.14268303 1.61116469 -2.7067852 -3.14268303 1.54647195 -2.61790442 -3.14268303 1.46495438
		 -2.58727813 -3.14268303 1.37459135 -2.61790442 -3.14268303 1.28422844 -2.7067852 -3.14268303 1.20271075
		 -2.84522057 -3.14268303 1.13801801 -3.019659042 -3.14268303 1.096482754 -3.21302557 -3.14268303 1.082170725
		 -3.40880251 -3.11683702 1.093015909 -3.5854156 -3.11683702 1.13506901 -3.7255764 -3.11683702 1.2005682
		 -3.81556511 -3.11683702 1.28310192 -3.84657335 -3.11683702 1.37459135 -3.81556511 -3.11683702 1.46608078
		 -3.7255764 -3.11683702 1.5486145 -3.58541536 -3.11683702 1.61411369 -3.40880251 -3.11683702 1.65616667
		 -3.21302557 -3.11683702 1.67065716 -3.017248631 -3.11683702 1.65616667 -2.84063578 -3.11683702 1.61411357
		 -2.70047498 -3.11683702 1.5486145 -2.61048603 -3.11683702 1.46608067 -2.57947826 -3.11683702 1.37459135
		 -2.61048603 -3.11683702 1.28310204 -2.70047498 -3.11683702 1.20056832 -2.84063578 -3.11683702 1.13506913
		 -3.017248631 -3.11683702 1.093016148 -3.21302557 -3.11683702 1.078525543 -3.40639234 -3.09099102 1.096482515
		 -3.58083081 -3.09099102 1.13801789 -3.71926618 -3.09099102 1.20271063 -3.80814695 -3.09099102 1.28422832
		 -3.83877325 -3.09099102 1.37459135 -3.80814695 -3.09099102 1.46495438 -3.71926594 -3.09099102 1.54647195
		 -3.58083081 -3.09099102 1.61116469 -3.4063921 -3.09099102 1.65270007 -3.21302557 -3.09099102 1.6670121
		 -3.019659042 -3.09099102 1.65270007 -2.84522033 -3.09099102 1.61116469 -2.7067852 -3.09099102 1.54647195
		 -2.61790442 -3.09099102 1.46495438 -2.58727813 -3.09099102 1.37459135 -2.61790442 -3.09099102 1.28422844
		 -2.7067852 -3.09099102 1.20271075 -2.84522057 -3.09099102 1.13801801 -3.019659042 -3.09099102 1.096482754
		 -3.21302557 -3.09099102 1.082170725 -3.39922047 -3.065781116 1.10679722 -3.56718946 -3.065781116 1.14679205
		 -3.70049047 -3.065781116 1.20908546 -3.78607488 -3.065781116 1.28757977 -3.81556511 -3.065781116 1.37459135
		 -3.78607488 -3.065781116 1.46160293 -3.70049047 -3.065781116 1.54009724 -3.56718946 -3.065781116 1.60239065
		 -3.39922047 -3.065781116 1.64238548 -3.21302557 -3.065781116 1.65616667 -3.026830673 -3.065781116 1.64238548
		 -2.85886168 -3.065781116 1.60239053 -2.7255609 -3.065781116 1.54009724 -2.6399765 -3.065781116 1.46160293
		 -2.61048603 -3.065781116 1.37459135 -2.6399765 -3.065781116 1.28757977 -2.7255609 -3.065781116 1.20908558
		 -2.85886168 -3.065781116 1.14679217 -3.026830673 -3.065781116 1.10679734 -3.21302557 -3.065781116 1.093016148
		 -3.38746428 -3.041828632 1.12370586 -3.54482746 -3.041828632 1.16117537 -3.66971183 -3.041828632 1.21953559
		 -3.74989223 -3.041828632 1.29307365 -3.77752066 -3.041828632 1.37459135 -3.74989223 -3.041828632 1.45610905
		 -3.66971159 -3.041828632 1.52964711 -3.54482746 -3.041828632 1.58800721 -3.38746405 -3.041828632 1.62547684
		 -3.21302557 -3.041828632 1.63838792 -3.038587093 -3.041828632 1.62547684 -2.88122368 -3.041828632 1.58800721
		 -2.75633955 -3.041828632 1.52964711 -2.67615891 -3.041828632 1.45610893 -2.64853072 -3.041828632 1.37459135
		 -2.67615891 -3.041828632 1.29307377 -2.75633955 -3.041828632 1.21953559 -2.88122368 -3.041828632 1.16117549
		 -3.038587093 -3.041828632 1.12370598 -3.21302557 -3.041828632 1.11079478 -3.37141252 -3.019723177 1.14679205
		 -3.51429534 -3.019723177 1.18081367 -3.62768793 -3.019723177 1.23380363 -3.70049047 -3.019723177 1.3005749
		 -3.7255764 -3.019723177 1.37459135 -3.70049047 -3.019723177 1.4486078 -3.62768793 -3.019723177 1.51537907
		 -3.51429534 -3.019723177 1.56836891 -3.37141252 -3.019723177 1.60239053 -3.21302557 -3.019723177 1.61411357
		 -3.054638624 -3.019723177 1.60239053 -2.9117558 -3.019723177 1.56836891 -2.79836345 -3.019723177 1.51537895
		 -2.7255609 -3.019723177 1.4486078 -2.70047498 -3.019723177 1.37459135 -2.7255609 -3.019723177 1.3005749
		 -2.79836345 -3.019723177 1.23380375 -2.9117558 -3.019723177 1.18081379 -3.054638624 -3.019723177 1.14679217
		 -3.21302557 -3.019723177 1.13506913 -3.35146093 -3.000008821487 1.1754874 -3.47634506 -3.000008821487 1.20522344
		 -3.57545376 -3.000008821487 1.2515384 -3.63908553 -3.000008821487 1.30989861;
	setAttr ".vt[830:927]" -3.66101146 -3.000008821487 1.37459135 -3.63908553 -3.000008821487 1.43928409
		 -3.57545376 -3.000008821487 1.49764431 -3.47634506 -3.000008821487 1.54395914 -3.3514607 -3.000008821487 1.57369518
		 -3.21302557 -3.000008821487 1.58394146 -3.074590445 -3.000008821487 1.57369518 -2.94970608 -3.000008821487 1.54395914
		 -2.85059762 -3.000008821487 1.49764431 -2.78696585 -3.000008821487 1.43928409 -2.76503992 -3.000008821487 1.37459135
		 -2.78696585 -3.000008821487 1.30989861 -2.85059762 -3.000008821487 1.25153852 -2.94970608 -3.000008821487 1.20522356
		 -3.074590445 -3.000008821487 1.17548752 -3.21302557 -3.000008821487 1.16524124 -3.32810044 -2.98317122 1.20908546
		 -3.43191099 -2.98317122 1.23380363 -3.51429534 -2.98317122 1.2723031 -3.56718946 -2.98317122 1.32081521
		 -3.5854156 -2.98317122 1.37459135 -3.56718946 -2.98317122 1.4283675 -3.51429534 -2.98317122 1.4768796
		 -3.43191075 -2.98317122 1.51537895 -3.32810044 -2.98317122 1.54009724 -3.21302557 -2.98317122 1.5486145
		 -3.097950697 -2.98317122 1.54009724 -2.99414039 -2.98317122 1.51537895 -2.9117558 -2.98317122 1.4768796
		 -2.85886168 -2.98317122 1.4283675 -2.84063578 -2.98317122 1.37459135 -2.85886168 -2.98317122 1.32081532
		 -2.9117558 -2.98317122 1.2723031 -2.99414039 -2.98317122 1.23380375 -3.097950697 -2.98317122 1.20908558
		 -3.21302557 -2.98317122 1.20056832 -3.30190659 -2.96962476 1.24675882 -3.38208723 -2.96962476 1.26585042
		 -3.44571877 -2.96962476 1.29558647 -3.48657274 -2.96962476 1.33305597 -3.50065017 -2.96962476 1.37459135
		 -3.48657274 -2.96962476 1.41612673 -3.44571877 -2.96962476 1.45359623 -3.38208699 -2.96962476 1.48333216
		 -3.30190635 -2.96962476 1.50242388 -3.21302557 -2.96962476 1.50900245 -3.12414479 -2.96962476 1.50242388
		 -3.043964148 -2.96962476 1.48333216 -2.98033237 -2.96962476 1.45359623 -2.9394784 -2.96962476 1.41612661
		 -2.92540097 -2.96962476 1.37459135 -2.9394784 -2.96962476 1.33305609 -2.98033237 -2.96962476 1.29558659
		 -3.043964148 -2.96962476 1.26585054 -3.12414479 -2.96962476 1.24675882 -3.21302557 -2.96962476 1.24018025
		 -3.27352405 -2.83594275 1.23404586 -3.32810044 -2.83594275 1.25326157 -3.37141252 -2.83594275 1.28319073
		 -3.39922047 -2.83594275 1.32090378 -3.40880251 -2.83594275 1.36270881 -3.39922047 -2.83594275 1.40451396
		 -3.37141252 -2.83594275 1.44222689 -3.32810044 -2.83594275 1.47215617 -3.27352405 -2.83594275 1.49137175
		 -3.21302557 -2.83594275 1.49799311 -3.15252709 -2.83594275 1.49137175 -3.097950697 -2.83594275 1.47215605
		 -3.054638624 -2.83594275 1.44222689 -3.026830673 -2.83594275 1.40451396 -3.017248631 -2.83594275 1.36270881
		 -3.026830673 -2.83594275 1.32090378 -3.054638624 -2.83594275 1.28319085 -3.097950697 -2.83594275 1.25326169
		 -3.15252709 -2.83594275 1.23404598 -3.21302557 -2.83594275 1.22742462 -3.24365187 -2.82989049 1.29757547
		 -3.27128029 -2.82989049 1.30730307 -3.29320621 -2.82989049 1.32245421 -3.30728364 -2.82989049 1.3415457
		 -3.31213427 -2.82989049 1.36270881 -3.30728364 -2.82989049 1.38387203 -3.29320621 -2.82989049 1.40296352
		 -3.27128029 -2.82989049 1.41811466 -3.24365187 -2.82989049 1.42784226 -3.21302557 -2.82989049 1.43119419
		 -3.18239927 -2.82989049 1.42784226 -3.15477085 -2.82989049 1.41811466 -3.13284492 -2.82989049 1.40296352
		 -3.11876774 -2.82989049 1.38387203 -3.11391687 -2.82989049 1.36270881 -3.11876774 -2.82989049 1.3415457
		 -3.13284492 -2.82989049 1.32245421 -3.15477085 -2.82989049 1.30730307 -3.18239927 -2.82989049 1.29757547
		 -3.21302557 -2.82989049 1.29422355 -3.21302557 -3.28205705 1.37459135 -3.21302557 -2.8278563 1.36270881;
	setAttr -s 1920 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 77 1 1 78 1
		 2 79 1 3 80 1 4 81 1 5 62 1 6 63 1 7 64 1 8 65 1 9 66 1 10 67 1 11 68 1 12 69 1 13 70 1
		 14 71 1 15 72 1 16 73 1 17 74 1 18 75 1 19 76 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1 25 41 1 26 41 1
		 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1 42 37 1 43 38 1 44 39 1 45 20 1 46 21 1 47 22 1 48 23 1 49 24 1 50 25 1
		 51 26 1 52 27 1 53 28 1 54 29 1 55 30 1 56 31 1 57 32 1 58 33 1 59 34 1 60 35 1 61 36 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 42 1 62 50 1 63 51 1
		 64 52 1 65 53 1 66 54 1 67 55 1 68 56 1 69 57 1 70 58 1 71 59 1 72 60 1 73 61 1 74 42 1
		 75 43 1 76 44 1 77 45 1 78 46 1 79 47 1 80 48 1 81 49 1 62 63 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 68 1;
	setAttr ".ed[166:331]" 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 62 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 82 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 102 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 122 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1
		 160 161 1 161 142 1 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1
		 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1
		 178 179 1 179 180 1 180 181 1 181 162 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1
		 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1
		 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1 201 182 1 202 203 1 203 204 1 204 205 1
		 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1
		 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1 220 221 1 221 202 1 222 223 1
		 223 224 1 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1
		 232 233 1 233 234 1;
	setAttr ".ed[332:497]" 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 240 1
		 240 241 1 241 222 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1
		 258 259 1 259 260 1 260 261 1 261 242 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1
		 267 268 1 268 269 1 269 270 1 270 271 1 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1
		 276 277 1 277 278 1 278 279 1 279 280 1 280 281 1 281 262 1 282 283 1 283 284 1 284 285 1
		 285 286 1 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1
		 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1 301 282 1 302 303 1
		 303 304 1 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1
		 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 319 320 1 320 321 1
		 321 302 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1 338 339 1
		 339 340 1 340 341 1 341 322 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1
		 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1
		 357 358 1 358 359 1 359 360 1 360 361 1 361 342 1 362 363 1 363 364 1 364 365 1 365 366 1
		 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1
		 375 376 1 376 377 1 377 378 1 378 379 1 379 380 1 380 381 1 381 362 1 382 383 1 383 384 1
		 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1
		 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 400 1;
	setAttr ".ed[498:663]" 400 401 1 401 382 1 402 403 1 403 404 1 404 405 1 405 406 1
		 406 407 1 407 408 1 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1
		 415 416 1 416 417 1 417 418 1 418 419 1 419 420 1 420 421 1 421 402 1 422 423 1 423 424 1
		 424 425 1 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1 430 431 1 431 432 1 432 433 1
		 433 434 1 434 435 1 435 436 1 436 437 1 437 438 1 438 439 1 439 440 1 440 441 1 441 422 1
		 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1 448 449 1 449 450 1 450 451 1
		 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 456 457 1 457 458 1 458 459 1 459 460 1
		 460 461 1 461 442 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1
		 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1
		 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1
		 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1
		 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1
		 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1
		 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1
		 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1;
	setAttr ".ed[664:829]" 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1
		 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1
		 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1
		 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1
		 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1
		 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1
		 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1
		 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1
		 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1
		 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1
		 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1
		 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1 290 310 1
		 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1 299 319 1
		 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1 308 328 1
		 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1 317 337 1
		 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1 326 346 1
		 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1
		 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1 344 364 1
		 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1;
	setAttr ".ed[830:995]" 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1
		 358 378 1 359 379 1 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1
		 367 387 1 368 388 1 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1
		 376 396 1 377 397 1 378 398 1 379 399 1 380 400 1 381 401 1 382 402 1 383 403 1 384 404 1
		 385 405 1 386 406 1 387 407 1 388 408 1 389 409 1 390 410 1 391 411 1 392 412 1 393 413 1
		 394 414 1 395 415 1 396 416 1 397 417 1 398 418 1 399 419 1 400 420 1 401 421 1 402 422 1
		 403 423 1 404 424 1 405 425 1 406 426 1 407 427 1 408 428 1 409 429 1 410 430 1 411 431 1
		 412 432 1 413 433 1 414 434 1 415 435 1 416 436 1 417 437 1 418 438 1 419 439 1 420 440 1
		 421 441 1 422 442 1 423 443 1 424 444 1 425 445 1 426 446 1 427 447 1 428 448 1 429 449 1
		 430 450 1 431 451 1 432 452 1 433 453 1 434 454 1 435 455 1 436 456 1 437 457 1 438 458 1
		 439 459 1 440 460 1 441 461 1 462 82 1 462 83 1 462 84 1 462 85 1 462 86 1 462 87 1
		 462 88 1 462 89 1 462 90 1 462 91 1 462 92 1 462 93 1 462 94 1 462 95 1 462 96 1
		 462 97 1 462 98 1 462 99 1 462 100 1 462 101 1 442 463 1 443 463 1 444 463 1 445 463 1
		 446 463 1 447 463 1 448 463 1 449 463 1 450 463 1 451 463 1 452 463 1 453 463 1 454 463 1
		 455 463 1 456 463 1 457 463 1 458 463 1 459 463 1 460 463 1 461 463 1 464 465 0 465 466 0
		 466 467 0 467 468 0 468 469 0 469 470 0 470 471 0 471 472 0 472 473 0 473 474 0 474 475 0
		 475 476 0 476 477 0 477 478 0 478 479 0 479 480 0 480 481 0 481 482 0 482 483 0 483 464 0
		 484 485 0 485 486 0 486 487 0 487 488 0 488 489 0 489 490 0 490 491 0 491 492 0 492 493 0
		 493 494 0 494 495 0 495 496 0 496 497 0 497 498 0 498 499 0 499 500 0;
	setAttr ".ed[996:1161]" 500 501 0 501 502 0 502 503 0 503 484 0 464 541 1 465 542 1
		 466 543 1 467 544 1 468 545 1 469 526 1 470 527 1 471 528 1 472 529 1 473 530 1 474 531 1
		 475 532 1 476 533 1 477 534 1 478 535 1 479 536 1 480 537 1 481 538 1 482 539 1 483 540 1
		 504 464 1 504 465 1 504 466 1 504 467 1 504 468 1 504 469 1 504 470 1 504 471 1 504 472 1
		 504 473 1 504 474 1 504 475 1 504 476 1 504 477 1 504 478 1 504 479 1 504 480 1 504 481 1
		 504 482 1 504 483 1 484 505 1 485 505 1 486 505 1 487 505 1 488 505 1 489 505 1 490 505 1
		 491 505 1 492 505 1 493 505 1 494 505 1 495 505 1 496 505 1 497 505 1 498 505 1 499 505 1
		 500 505 1 501 505 1 502 505 1 503 505 1 506 501 1 507 502 1 508 503 1 509 484 1 510 485 1
		 511 486 1 512 487 1 513 488 1 514 489 1 515 490 1 516 491 1 517 492 1 518 493 1 519 494 1
		 520 495 1 521 496 1 522 497 1 523 498 1 524 499 1 525 500 1 506 507 1 507 508 1 508 509 1
		 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1 517 518 1
		 518 519 1 519 520 1 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 506 1 526 514 1
		 527 515 1 528 516 1 529 517 1 530 518 1 531 519 1 532 520 1 533 521 1 534 522 1 535 523 1
		 536 524 1 537 525 1 538 506 1 539 507 1 540 508 1 541 509 1 542 510 1 543 511 1 544 512 1
		 545 513 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 536 537 1 537 538 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1
		 543 544 1 544 545 1 545 526 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1
		 552 553 1 553 554 1 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1
		 561 562 1 562 563 1 563 564 1 564 565 1 565 546 1 566 567 1 567 568 1;
	setAttr ".ed[1162:1327]" 568 569 1 569 570 1 570 571 1 571 572 1 572 573 1 573 574 1
		 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1 582 583 1
		 583 584 1 584 585 1 585 566 1 586 587 1 587 588 1 588 589 1 589 590 1 590 591 1 591 592 1
		 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1 597 598 1 598 599 1 599 600 1 600 601 1
		 601 602 1 602 603 1 603 604 1 604 605 1 605 586 1 606 607 1 607 608 1 608 609 1 609 610 1
		 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1
		 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 606 1 626 627 1 627 628 1
		 628 629 1 629 630 1 630 631 1 631 632 1 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1
		 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 626 1
		 646 647 1 647 648 1 648 649 1 649 650 1 650 651 1 651 652 1 652 653 1 653 654 1 654 655 1
		 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1 663 664 1
		 664 665 1 665 646 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 680 681 1 681 682 1
		 682 683 1 683 684 1 684 685 1 685 666 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1
		 691 692 1 692 693 1 693 694 1 694 695 1 695 696 1 696 697 1 697 698 1 698 699 1 699 700 1
		 700 701 1 701 702 1 702 703 1 703 704 1 704 705 1 705 686 1 706 707 1 707 708 1 708 709 1
		 709 710 1 710 711 1 711 712 1 712 713 1 713 714 1 714 715 1 715 716 1 716 717 1 717 718 1
		 718 719 1 719 720 1 720 721 1 721 722 1 722 723 1 723 724 1 724 725 1 725 706 1 726 727 1
		 727 728 1 728 729 1 729 730 1 730 731 1 731 732 1 732 733 1 733 734 1;
	setAttr ".ed[1328:1493]" 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 744 745 1 745 726 1 746 747 1 747 748 1 748 749 1
		 749 750 1 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1
		 758 759 1 759 760 1 760 761 1 761 762 1 762 763 1 763 764 1 764 765 1 765 746 1 766 767 1
		 767 768 1 768 769 1 769 770 1 770 771 1 771 772 1 772 773 1 773 774 1 774 775 1 775 776 1
		 776 777 1 777 778 1 778 779 1 779 780 1 780 781 1 781 782 1 782 783 1 783 784 1 784 785 1
		 785 766 1 786 787 1 787 788 1 788 789 1 789 790 1 790 791 1 791 792 1 792 793 1 793 794 1
		 794 795 1 795 796 1 796 797 1 797 798 1 798 799 1 799 800 1 800 801 1 801 802 1 802 803 1
		 803 804 1 804 805 1 805 786 1 806 807 1 807 808 1 808 809 1 809 810 1 810 811 1 811 812 1
		 812 813 1 813 814 1 814 815 1 815 816 1 816 817 1 817 818 1 818 819 1 819 820 1 820 821 1
		 821 822 1 822 823 1 823 824 1 824 825 1 825 806 1 826 827 1 827 828 1 828 829 1 829 830 1
		 830 831 1 831 832 1 832 833 1 833 834 1 834 835 1 835 836 1 836 837 1 837 838 1 838 839 1
		 839 840 1 840 841 1 841 842 1 842 843 1 843 844 1 844 845 1 845 826 1 846 847 1 847 848 1
		 848 849 1 849 850 1 850 851 1 851 852 1 852 853 1 853 854 1 854 855 1 855 856 1 856 857 1
		 857 858 1 858 859 1 859 860 1 860 861 1 861 862 1 862 863 1 863 864 1 864 865 1 865 846 1
		 866 867 1 867 868 1 868 869 1 869 870 1 870 871 1 871 872 1 872 873 1 873 874 1 874 875 1
		 875 876 1 876 877 1 877 878 1 878 879 1 879 880 1 880 881 1 881 882 1 882 883 1 883 884 1
		 884 885 1 885 866 1 886 887 1 887 888 1 888 889 1 889 890 1 890 891 1 891 892 1 892 893 1
		 893 894 1 894 895 1 895 896 1 896 897 1 897 898 1 898 899 1 899 900 1;
	setAttr ".ed[1494:1659]" 900 901 1 901 902 1 902 903 1 903 904 1 904 905 1 905 886 1
		 906 907 1 907 908 1 908 909 1 909 910 1 910 911 1 911 912 1 912 913 1 913 914 1 914 915 1
		 915 916 1 916 917 1 917 918 1 918 919 1 919 920 1 920 921 1 921 922 1 922 923 1 923 924 1
		 924 925 1 925 906 1 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1 552 572 1
		 553 573 1 554 574 1 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1 561 581 1
		 562 582 1 563 583 1 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1 570 590 1
		 571 591 1 572 592 1 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1 579 599 1
		 580 600 1 581 601 1 582 602 1 583 603 1 584 604 1 585 605 1 586 606 1 587 607 1 588 608 1
		 589 609 1 590 610 1 591 611 1 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1
		 598 618 1 599 619 1 600 620 1 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1
		 607 627 1 608 628 1 609 629 1 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1
		 616 636 1 617 637 1 618 638 1 619 639 1 620 640 1 621 641 1 622 642 1 623 643 1 624 644 1
		 625 645 1 626 646 1 627 647 1 628 648 1 629 649 1 630 650 1 631 651 1 632 652 1 633 653 1
		 634 654 1 635 655 1 636 656 1 637 657 1 638 658 1 639 659 1 640 660 1 641 661 1 642 662 1
		 643 663 1 644 664 1 645 665 1 646 666 1 647 667 1 648 668 1 649 669 1 650 670 1 651 671 1
		 652 672 1 653 673 1 654 674 1 655 675 1 656 676 1 657 677 1 658 678 1 659 679 1 660 680 1
		 661 681 1 662 682 1 663 683 1 664 684 1 665 685 1 666 686 1 667 687 1 668 688 1 669 689 1
		 670 690 1 671 691 1 672 692 1 673 693 1 674 694 1 675 695 1 676 696 1 677 697 1 678 698 1
		 679 699 1 680 700 1 681 701 1 682 702 1 683 703 1 684 704 1 685 705 1;
	setAttr ".ed[1660:1825]" 686 706 1 687 707 1 688 708 1 689 709 1 690 710 1 691 711 1
		 692 712 1 693 713 1 694 714 1 695 715 1 696 716 1 697 717 1 698 718 1 699 719 1 700 720 1
		 701 721 1 702 722 1 703 723 1 704 724 1 705 725 1 706 726 1 707 727 1 708 728 1 709 729 1
		 710 730 1 711 731 1 712 732 1 713 733 1 714 734 1 715 735 1 716 736 1 717 737 1 718 738 1
		 719 739 1 720 740 1 721 741 1 722 742 1 723 743 1 724 744 1 725 745 1 726 746 1 727 747 1
		 728 748 1 729 749 1 730 750 1 731 751 1 732 752 1 733 753 1 734 754 1 735 755 1 736 756 1
		 737 757 1 738 758 1 739 759 1 740 760 1 741 761 1 742 762 1 743 763 1 744 764 1 745 765 1
		 746 766 1 747 767 1 748 768 1 749 769 1 750 770 1 751 771 1 752 772 1 753 773 1 754 774 1
		 755 775 1 756 776 1 757 777 1 758 778 1 759 779 1 760 780 1 761 781 1 762 782 1 763 783 1
		 764 784 1 765 785 1 766 786 1 767 787 1 768 788 1 769 789 1 770 790 1 771 791 1 772 792 1
		 773 793 1 774 794 1 775 795 1 776 796 1 777 797 1 778 798 1 779 799 1 780 800 1 781 801 1
		 782 802 1 783 803 1 784 804 1 785 805 1 786 806 1 787 807 1 788 808 1 789 809 1 790 810 1
		 791 811 1 792 812 1 793 813 1 794 814 1 795 815 1 796 816 1 797 817 1 798 818 1 799 819 1
		 800 820 1 801 821 1 802 822 1 803 823 1 804 824 1 805 825 1 806 826 1 807 827 1 808 828 1
		 809 829 1 810 830 1 811 831 1 812 832 1 813 833 1 814 834 1 815 835 1 816 836 1 817 837 1
		 818 838 1 819 839 1 820 840 1 821 841 1 822 842 1 823 843 1 824 844 1 825 845 1 826 846 1
		 827 847 1 828 848 1 829 849 1 830 850 1 831 851 1 832 852 1 833 853 1 834 854 1 835 855 1
		 836 856 1 837 857 1 838 858 1 839 859 1 840 860 1 841 861 1 842 862 1 843 863 1 844 864 1
		 845 865 1 846 866 1 847 867 1 848 868 1 849 869 1 850 870 1 851 871 1;
	setAttr ".ed[1826:1919]" 852 872 1 853 873 1 854 874 1 855 875 1 856 876 1 857 877 1
		 858 878 1 859 879 1 860 880 1 861 881 1 862 882 1 863 883 1 864 884 1 865 885 1 866 886 1
		 867 887 1 868 888 1 869 889 1 870 890 1 871 891 1 872 892 1 873 893 1 874 894 1 875 895 1
		 876 896 1 877 897 1 878 898 1 879 899 1 880 900 1 881 901 1 882 902 1 883 903 1 884 904 1
		 885 905 1 886 906 1 887 907 1 888 908 1 889 909 1 890 910 1 891 911 1 892 912 1 893 913 1
		 894 914 1 895 915 1 896 916 1 897 917 1 898 918 1 899 919 1 900 920 1 901 921 1 902 922 1
		 903 923 1 904 924 1 905 925 1 926 546 1 926 547 1 926 548 1 926 549 1 926 550 1 926 551 1
		 926 552 1 926 553 1 926 554 1 926 555 1 926 556 1 926 557 1 926 558 1 926 559 1 926 560 1
		 926 561 1 926 562 1 926 563 1 926 564 1 926 565 1 906 927 1 907 927 1 908 927 1 909 927 1
		 910 927 1 911 927 1 912 927 1 913 927 1 914 927 1 915 927 1 916 927 1 917 927 1 918 927 1
		 919 927 1 920 927 1 921 927 1 922 927 1 923 927 1 924 927 1 925 927 1;
	setAttr -s 1000 -ch 3840 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 123 104 -21 -104
		mu 0 4 88 89 42 41
		f 4 124 105 -22 -105
		mu 0 4 89 90 43 42
		f 4 125 106 -23 -106
		mu 0 4 90 91 44 43
		f 4 126 107 -24 -107
		mu 0 4 91 92 45 44
		f 4 127 108 -25 -108
		mu 0 4 92 93 46 45
		f 4 128 109 -26 -109
		mu 0 4 93 94 47 46
		f 4 129 110 -27 -110
		mu 0 4 94 95 48 47
		f 4 130 111 -28 -111
		mu 0 4 95 96 49 48
		f 4 131 112 -29 -112
		mu 0 4 96 97 50 49
		f 4 132 113 -30 -113
		mu 0 4 97 98 51 50
		f 4 133 114 -31 -114
		mu 0 4 98 99 52 51
		f 4 134 115 -32 -115
		mu 0 4 99 100 53 52
		f 4 135 116 -33 -116
		mu 0 4 100 101 54 53
		f 4 136 117 -34 -117
		mu 0 4 101 102 55 54
		f 4 137 118 -35 -118
		mu 0 4 102 103 56 55
		f 4 138 119 -36 -119
		mu 0 4 103 104 57 56
		f 4 139 100 -37 -120
		mu 0 4 104 84 58 57
		f 4 120 101 -38 -101
		mu 0 4 84 85 59 58
		f 4 121 102 -39 -102
		mu 0 4 85 86 60 59
		f 4 122 103 -40 -103
		mu 0 4 86 87 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83
		f 4 172 153 -121 -153
		mu 0 4 117 118 85 84
		f 4 173 154 -122 -154
		mu 0 4 118 119 86 85
		f 4 174 155 -123 -155
		mu 0 4 119 120 87 86
		f 4 175 156 -124 -156
		mu 0 4 121 122 89 88
		f 4 176 157 -125 -157
		mu 0 4 122 123 90 89
		f 4 177 158 -126 -158
		mu 0 4 123 124 91 90
		f 4 178 159 -127 -159
		mu 0 4 124 125 92 91
		f 4 179 140 -128 -160
		mu 0 4 125 105 93 92
		f 4 160 141 -129 -141
		mu 0 4 105 106 94 93
		f 4 161 142 -130 -142
		mu 0 4 106 107 95 94
		f 4 162 143 -131 -143
		mu 0 4 107 108 96 95
		f 4 163 144 -132 -144
		mu 0 4 108 109 97 96
		f 4 164 145 -133 -145
		mu 0 4 109 110 98 97
		f 4 165 146 -134 -146
		mu 0 4 110 111 99 98
		f 4 166 147 -135 -147
		mu 0 4 111 112 100 99
		f 4 167 148 -136 -148
		mu 0 4 112 113 101 100
		f 4 168 149 -137 -149
		mu 0 4 113 114 102 101
		f 4 169 150 -138 -150
		mu 0 4 114 115 103 102
		f 4 170 151 -139 -151
		mu 0 4 115 116 104 103
		f 4 171 152 -140 -152
		mu 0 4 116 117 84 104
		f 4 5 46 -161 -46
		mu 0 4 25 26 106 105
		f 4 6 47 -162 -47
		mu 0 4 26 27 107 106
		f 4 7 48 -163 -48
		mu 0 4 27 28 108 107
		f 4 8 49 -164 -49
		mu 0 4 28 29 109 108
		f 4 9 50 -165 -50
		mu 0 4 29 30 110 109
		f 4 10 51 -166 -51
		mu 0 4 30 31 111 110
		f 4 11 52 -167 -52
		mu 0 4 31 32 112 111
		f 4 12 53 -168 -53
		mu 0 4 32 33 113 112
		f 4 13 54 -169 -54
		mu 0 4 33 34 114 113
		f 4 14 55 -170 -55
		mu 0 4 34 35 115 114
		f 4 15 56 -171 -56
		mu 0 4 35 36 116 115
		f 4 16 57 -172 -57
		mu 0 4 36 37 117 116
		f 4 17 58 -173 -58
		mu 0 4 37 38 118 117
		f 4 18 59 -174 -59
		mu 0 4 38 39 119 118
		f 4 19 40 -175 -60
		mu 0 4 39 40 120 119
		f 4 0 41 -176 -41
		mu 0 4 20 21 122 121
		f 4 1 42 -177 -42
		mu 0 4 21 22 123 122
		f 4 2 43 -178 -43
		mu 0 4 22 23 124 123
		f 4 3 44 -179 -44
		mu 0 4 23 24 125 124
		f 4 4 45 -180 -45
		mu 0 4 24 25 105 125
		f 4 180 561 -201 -561
		mu 0 4 126 127 128 129
		f 4 181 562 -202 -562
		mu 0 4 127 130 131 128
		f 4 182 563 -203 -563
		mu 0 4 130 132 133 131
		f 4 183 564 -204 -564
		mu 0 4 132 134 135 133
		f 4 184 565 -205 -565
		mu 0 4 134 136 137 135
		f 4 185 566 -206 -566
		mu 0 4 136 138 139 137
		f 4 186 567 -207 -567
		mu 0 4 138 140 141 139
		f 4 187 568 -208 -568
		mu 0 4 140 142 143 141
		f 4 188 569 -209 -569
		mu 0 4 142 144 145 143
		f 4 189 570 -210 -570
		mu 0 4 144 146 147 145
		f 4 190 571 -211 -571
		mu 0 4 146 148 149 147
		f 4 191 572 -212 -572
		mu 0 4 148 150 151 149
		f 4 192 573 -213 -573
		mu 0 4 150 152 153 151
		f 4 193 574 -214 -574
		mu 0 4 152 154 155 153
		f 4 194 575 -215 -575
		mu 0 4 154 156 157 155
		f 4 195 576 -216 -576
		mu 0 4 156 158 159 157
		f 4 196 577 -217 -577
		mu 0 4 158 160 161 159
		f 4 197 578 -218 -578
		mu 0 4 160 162 163 161
		f 4 198 579 -219 -579
		mu 0 4 162 164 165 163
		f 4 199 560 -220 -580
		mu 0 4 164 166 167 165
		f 4 200 581 -221 -581
		mu 0 4 129 128 168 169
		f 4 201 582 -222 -582
		mu 0 4 128 131 170 168
		f 4 202 583 -223 -583
		mu 0 4 131 133 171 170
		f 4 203 584 -224 -584
		mu 0 4 133 135 172 171
		f 4 204 585 -225 -585
		mu 0 4 135 137 173 172
		f 4 205 586 -226 -586
		mu 0 4 137 139 174 173
		f 4 206 587 -227 -587
		mu 0 4 139 141 175 174
		f 4 207 588 -228 -588
		mu 0 4 141 143 176 175
		f 4 208 589 -229 -589
		mu 0 4 143 145 177 176
		f 4 209 590 -230 -590
		mu 0 4 145 147 178 177
		f 4 210 591 -231 -591
		mu 0 4 147 149 179 178
		f 4 211 592 -232 -592
		mu 0 4 149 151 180 179
		f 4 212 593 -233 -593
		mu 0 4 151 153 181 180
		f 4 213 594 -234 -594
		mu 0 4 153 155 182 181
		f 4 214 595 -235 -595
		mu 0 4 155 157 183 182
		f 4 215 596 -236 -596
		mu 0 4 157 159 184 183
		f 4 216 597 -237 -597
		mu 0 4 159 161 185 184
		f 4 217 598 -238 -598
		mu 0 4 161 163 186 185
		f 4 218 599 -239 -599
		mu 0 4 163 165 187 186
		f 4 219 580 -240 -600
		mu 0 4 165 167 188 187
		f 4 220 601 -241 -601
		mu 0 4 169 168 189 190
		f 4 221 602 -242 -602
		mu 0 4 168 170 191 189
		f 4 222 603 -243 -603
		mu 0 4 170 171 192 191
		f 4 223 604 -244 -604
		mu 0 4 171 172 193 192
		f 4 224 605 -245 -605
		mu 0 4 172 173 194 193
		f 4 225 606 -246 -606
		mu 0 4 173 174 195 194
		f 4 226 607 -247 -607
		mu 0 4 174 175 196 195
		f 4 227 608 -248 -608
		mu 0 4 175 176 197 196
		f 4 228 609 -249 -609
		mu 0 4 176 177 198 197
		f 4 229 610 -250 -610
		mu 0 4 177 178 199 198
		f 4 230 611 -251 -611
		mu 0 4 178 179 200 199
		f 4 231 612 -252 -612
		mu 0 4 179 180 201 200
		f 4 232 613 -253 -613
		mu 0 4 180 181 202 201
		f 4 233 614 -254 -614
		mu 0 4 181 182 203 202
		f 4 234 615 -255 -615
		mu 0 4 182 183 204 203
		f 4 235 616 -256 -616
		mu 0 4 183 184 205 204
		f 4 236 617 -257 -617
		mu 0 4 184 185 206 205
		f 4 237 618 -258 -618
		mu 0 4 185 186 207 206
		f 4 238 619 -259 -619
		mu 0 4 186 187 208 207
		f 4 239 600 -260 -620
		mu 0 4 187 188 209 208
		f 4 240 621 -261 -621
		mu 0 4 190 189 210 211
		f 4 241 622 -262 -622
		mu 0 4 189 191 212 210
		f 4 242 623 -263 -623
		mu 0 4 191 192 213 212
		f 4 243 624 -264 -624
		mu 0 4 192 193 214 213
		f 4 244 625 -265 -625
		mu 0 4 193 194 215 214
		f 4 245 626 -266 -626
		mu 0 4 194 195 216 215
		f 4 246 627 -267 -627
		mu 0 4 195 196 217 216
		f 4 247 628 -268 -628
		mu 0 4 196 197 218 217
		f 4 248 629 -269 -629
		mu 0 4 197 198 219 218
		f 4 249 630 -270 -630
		mu 0 4 198 199 220 219
		f 4 250 631 -271 -631
		mu 0 4 199 200 221 220
		f 4 251 632 -272 -632
		mu 0 4 200 201 222 221
		f 4 252 633 -273 -633
		mu 0 4 201 202 223 222
		f 4 253 634 -274 -634
		mu 0 4 202 203 224 223
		f 4 254 635 -275 -635
		mu 0 4 203 204 225 224
		f 4 255 636 -276 -636
		mu 0 4 204 205 226 225
		f 4 256 637 -277 -637
		mu 0 4 205 206 227 226
		f 4 257 638 -278 -638
		mu 0 4 206 207 228 227
		f 4 258 639 -279 -639
		mu 0 4 207 208 229 228
		f 4 259 620 -280 -640
		mu 0 4 208 209 230 229
		f 4 260 641 -281 -641
		mu 0 4 211 210 231 232
		f 4 261 642 -282 -642
		mu 0 4 210 212 233 231
		f 4 262 643 -283 -643
		mu 0 4 212 213 234 233
		f 4 263 644 -284 -644
		mu 0 4 213 214 235 234
		f 4 264 645 -285 -645
		mu 0 4 214 215 236 235
		f 4 265 646 -286 -646
		mu 0 4 215 216 237 236
		f 4 266 647 -287 -647
		mu 0 4 216 217 238 237
		f 4 267 648 -288 -648
		mu 0 4 217 218 239 238
		f 4 268 649 -289 -649
		mu 0 4 218 219 240 239
		f 4 269 650 -290 -650
		mu 0 4 219 220 241 240
		f 4 270 651 -291 -651
		mu 0 4 220 221 242 241
		f 4 271 652 -292 -652
		mu 0 4 221 222 243 242
		f 4 272 653 -293 -653
		mu 0 4 222 223 244 243
		f 4 273 654 -294 -654
		mu 0 4 223 224 245 244
		f 4 274 655 -295 -655
		mu 0 4 224 225 246 245
		f 4 275 656 -296 -656
		mu 0 4 225 226 247 246
		f 4 276 657 -297 -657
		mu 0 4 226 227 248 247
		f 4 277 658 -298 -658
		mu 0 4 227 228 249 248
		f 4 278 659 -299 -659
		mu 0 4 228 229 250 249
		f 4 279 640 -300 -660
		mu 0 4 229 230 251 250
		f 4 280 661 -301 -661
		mu 0 4 232 231 252 253
		f 4 281 662 -302 -662
		mu 0 4 231 233 254 252
		f 4 282 663 -303 -663
		mu 0 4 233 234 255 254
		f 4 283 664 -304 -664
		mu 0 4 234 235 256 255
		f 4 284 665 -305 -665
		mu 0 4 235 236 257 256
		f 4 285 666 -306 -666
		mu 0 4 236 237 258 257
		f 4 286 667 -307 -667
		mu 0 4 237 238 259 258
		f 4 287 668 -308 -668
		mu 0 4 238 239 260 259
		f 4 288 669 -309 -669
		mu 0 4 239 240 261 260
		f 4 289 670 -310 -670
		mu 0 4 240 241 262 261
		f 4 290 671 -311 -671
		mu 0 4 241 242 263 262
		f 4 291 672 -312 -672
		mu 0 4 242 243 264 263
		f 4 292 673 -313 -673
		mu 0 4 243 244 265 264
		f 4 293 674 -314 -674
		mu 0 4 244 245 266 265
		f 4 294 675 -315 -675
		mu 0 4 245 246 267 266
		f 4 295 676 -316 -676
		mu 0 4 246 247 268 267
		f 4 296 677 -317 -677
		mu 0 4 247 248 269 268
		f 4 297 678 -318 -678
		mu 0 4 248 249 270 269
		f 4 298 679 -319 -679
		mu 0 4 249 250 271 270
		f 4 299 660 -320 -680
		mu 0 4 250 251 272 271
		f 4 300 681 -321 -681
		mu 0 4 253 252 273 274
		f 4 301 682 -322 -682
		mu 0 4 252 254 275 273
		f 4 302 683 -323 -683
		mu 0 4 254 255 276 275
		f 4 303 684 -324 -684
		mu 0 4 255 256 277 276
		f 4 304 685 -325 -685
		mu 0 4 256 257 278 277
		f 4 305 686 -326 -686
		mu 0 4 257 258 279 278
		f 4 306 687 -327 -687
		mu 0 4 258 259 280 279
		f 4 307 688 -328 -688
		mu 0 4 259 260 281 280
		f 4 308 689 -329 -689
		mu 0 4 260 261 282 281
		f 4 309 690 -330 -690
		mu 0 4 261 262 283 282
		f 4 310 691 -331 -691
		mu 0 4 262 263 284 283
		f 4 311 692 -332 -692
		mu 0 4 263 264 285 284
		f 4 312 693 -333 -693
		mu 0 4 264 265 286 285
		f 4 313 694 -334 -694
		mu 0 4 265 266 287 286
		f 4 314 695 -335 -695
		mu 0 4 266 267 288 287
		f 4 315 696 -336 -696
		mu 0 4 267 268 289 288
		f 4 316 697 -337 -697
		mu 0 4 268 269 290 289
		f 4 317 698 -338 -698
		mu 0 4 269 270 291 290
		f 4 318 699 -339 -699
		mu 0 4 270 271 292 291
		f 4 319 680 -340 -700
		mu 0 4 271 272 293 292
		f 4 320 701 -341 -701
		mu 0 4 274 273 294 295
		f 4 321 702 -342 -702
		mu 0 4 273 275 296 294
		f 4 322 703 -343 -703
		mu 0 4 275 276 297 296
		f 4 323 704 -344 -704
		mu 0 4 276 277 298 297
		f 4 324 705 -345 -705
		mu 0 4 277 278 299 298
		f 4 325 706 -346 -706
		mu 0 4 278 279 300 299
		f 4 326 707 -347 -707
		mu 0 4 279 280 301 300
		f 4 327 708 -348 -708
		mu 0 4 280 281 302 301
		f 4 328 709 -349 -709
		mu 0 4 281 282 303 302
		f 4 329 710 -350 -710
		mu 0 4 282 283 304 303
		f 4 330 711 -351 -711
		mu 0 4 283 284 305 304
		f 4 331 712 -352 -712
		mu 0 4 284 285 306 305
		f 4 332 713 -353 -713
		mu 0 4 285 286 307 306
		f 4 333 714 -354 -714
		mu 0 4 286 287 308 307
		f 4 334 715 -355 -715
		mu 0 4 287 288 309 308
		f 4 335 716 -356 -716
		mu 0 4 288 289 310 309
		f 4 336 717 -357 -717
		mu 0 4 289 290 311 310
		f 4 337 718 -358 -718
		mu 0 4 290 291 312 311
		f 4 338 719 -359 -719
		mu 0 4 291 292 313 312
		f 4 339 700 -360 -720
		mu 0 4 292 293 314 313
		f 4 340 721 -361 -721
		mu 0 4 295 294 315 316
		f 4 341 722 -362 -722
		mu 0 4 294 296 317 315
		f 4 342 723 -363 -723
		mu 0 4 296 297 318 317
		f 4 343 724 -364 -724
		mu 0 4 297 298 319 318
		f 4 344 725 -365 -725
		mu 0 4 298 299 320 319
		f 4 345 726 -366 -726
		mu 0 4 299 300 321 320
		f 4 346 727 -367 -727
		mu 0 4 300 301 322 321
		f 4 347 728 -368 -728
		mu 0 4 301 302 323 322
		f 4 348 729 -369 -729
		mu 0 4 302 303 324 323
		f 4 349 730 -370 -730
		mu 0 4 303 304 325 324
		f 4 350 731 -371 -731
		mu 0 4 304 305 326 325
		f 4 351 732 -372 -732
		mu 0 4 305 306 327 326
		f 4 352 733 -373 -733
		mu 0 4 306 307 328 327
		f 4 353 734 -374 -734
		mu 0 4 307 308 329 328
		f 4 354 735 -375 -735
		mu 0 4 308 309 330 329
		f 4 355 736 -376 -736
		mu 0 4 309 310 331 330
		f 4 356 737 -377 -737
		mu 0 4 310 311 332 331
		f 4 357 738 -378 -738
		mu 0 4 311 312 333 332
		f 4 358 739 -379 -739
		mu 0 4 312 313 334 333
		f 4 359 720 -380 -740
		mu 0 4 313 314 335 334
		f 4 360 741 -381 -741
		mu 0 4 316 315 336 337
		f 4 361 742 -382 -742
		mu 0 4 315 317 338 336
		f 4 362 743 -383 -743
		mu 0 4 317 318 339 338
		f 4 363 744 -384 -744
		mu 0 4 318 319 340 339
		f 4 364 745 -385 -745
		mu 0 4 319 320 341 340
		f 4 365 746 -386 -746
		mu 0 4 320 321 342 341
		f 4 366 747 -387 -747
		mu 0 4 321 322 343 342
		f 4 367 748 -388 -748
		mu 0 4 322 323 344 343
		f 4 368 749 -389 -749
		mu 0 4 323 324 345 344
		f 4 369 750 -390 -750
		mu 0 4 324 325 346 345
		f 4 370 751 -391 -751
		mu 0 4 325 326 347 346
		f 4 371 752 -392 -752
		mu 0 4 326 327 348 347
		f 4 372 753 -393 -753
		mu 0 4 327 328 349 348
		f 4 373 754 -394 -754
		mu 0 4 328 329 350 349
		f 4 374 755 -395 -755
		mu 0 4 329 330 351 350
		f 4 375 756 -396 -756
		mu 0 4 330 331 352 351
		f 4 376 757 -397 -757
		mu 0 4 331 332 353 352
		f 4 377 758 -398 -758
		mu 0 4 332 333 354 353
		f 4 378 759 -399 -759
		mu 0 4 333 334 355 354
		f 4 379 740 -400 -760
		mu 0 4 334 335 356 355
		f 4 380 761 -401 -761
		mu 0 4 337 336 357 358
		f 4 381 762 -402 -762
		mu 0 4 336 338 359 357
		f 4 382 763 -403 -763
		mu 0 4 338 339 360 359
		f 4 383 764 -404 -764
		mu 0 4 339 340 361 360
		f 4 384 765 -405 -765
		mu 0 4 340 341 362 361
		f 4 385 766 -406 -766
		mu 0 4 341 342 363 362
		f 4 386 767 -407 -767
		mu 0 4 342 343 364 363
		f 4 387 768 -408 -768
		mu 0 4 343 344 365 364
		f 4 388 769 -409 -769
		mu 0 4 344 345 366 365
		f 4 389 770 -410 -770
		mu 0 4 345 346 367 366
		f 4 390 771 -411 -771
		mu 0 4 346 347 368 367
		f 4 391 772 -412 -772
		mu 0 4 347 348 369 368
		f 4 392 773 -413 -773
		mu 0 4 348 349 370 369
		f 4 393 774 -414 -774
		mu 0 4 349 350 371 370
		f 4 394 775 -415 -775
		mu 0 4 350 351 372 371
		f 4 395 776 -416 -776
		mu 0 4 351 352 373 372
		f 4 396 777 -417 -777
		mu 0 4 352 353 374 373
		f 4 397 778 -418 -778
		mu 0 4 353 354 375 374
		f 4 398 779 -419 -779
		mu 0 4 354 355 376 375
		f 4 399 760 -420 -780
		mu 0 4 355 356 377 376
		f 4 400 781 -421 -781
		mu 0 4 358 357 378 379
		f 4 401 782 -422 -782
		mu 0 4 357 359 380 378
		f 4 402 783 -423 -783
		mu 0 4 359 360 381 380
		f 4 403 784 -424 -784
		mu 0 4 360 361 382 381
		f 4 404 785 -425 -785
		mu 0 4 361 362 383 382
		f 4 405 786 -426 -786
		mu 0 4 362 363 384 383
		f 4 406 787 -427 -787
		mu 0 4 363 364 385 384
		f 4 407 788 -428 -788
		mu 0 4 364 365 386 385
		f 4 408 789 -429 -789
		mu 0 4 365 366 387 386
		f 4 409 790 -430 -790
		mu 0 4 366 367 388 387
		f 4 410 791 -431 -791
		mu 0 4 367 368 389 388
		f 4 411 792 -432 -792
		mu 0 4 368 369 390 389
		f 4 412 793 -433 -793
		mu 0 4 369 370 391 390
		f 4 413 794 -434 -794
		mu 0 4 370 371 392 391
		f 4 414 795 -435 -795
		mu 0 4 371 372 393 392
		f 4 415 796 -436 -796
		mu 0 4 372 373 394 393
		f 4 416 797 -437 -797
		mu 0 4 373 374 395 394
		f 4 417 798 -438 -798
		mu 0 4 374 375 396 395
		f 4 418 799 -439 -799
		mu 0 4 375 376 397 396
		f 4 419 780 -440 -800
		mu 0 4 376 377 398 397
		f 4 420 801 -441 -801
		mu 0 4 379 378 399 400
		f 4 421 802 -442 -802
		mu 0 4 378 380 401 399
		f 4 422 803 -443 -803
		mu 0 4 380 381 402 401
		f 4 423 804 -444 -804
		mu 0 4 381 382 403 402
		f 4 424 805 -445 -805
		mu 0 4 382 383 404 403
		f 4 425 806 -446 -806
		mu 0 4 383 384 405 404
		f 4 426 807 -447 -807
		mu 0 4 384 385 406 405
		f 4 427 808 -448 -808
		mu 0 4 385 386 407 406
		f 4 428 809 -449 -809
		mu 0 4 386 387 408 407
		f 4 429 810 -450 -810
		mu 0 4 387 388 409 408
		f 4 430 811 -451 -811
		mu 0 4 388 389 410 409
		f 4 431 812 -452 -812
		mu 0 4 389 390 411 410
		f 4 432 813 -453 -813
		mu 0 4 390 391 412 411
		f 4 433 814 -454 -814
		mu 0 4 391 392 413 412
		f 4 434 815 -455 -815
		mu 0 4 392 393 414 413
		f 4 435 816 -456 -816
		mu 0 4 393 394 415 414
		f 4 436 817 -457 -817
		mu 0 4 394 395 416 415
		f 4 437 818 -458 -818
		mu 0 4 395 396 417 416
		f 4 438 819 -459 -819
		mu 0 4 396 397 418 417
		f 4 439 800 -460 -820
		mu 0 4 397 398 419 418
		f 4 440 821 -461 -821
		mu 0 4 400 399 420 421
		f 4 441 822 -462 -822
		mu 0 4 399 401 422 420
		f 4 442 823 -463 -823
		mu 0 4 401 402 423 422
		f 4 443 824 -464 -824
		mu 0 4 402 403 424 423
		f 4 444 825 -465 -825
		mu 0 4 403 404 425 424
		f 4 445 826 -466 -826
		mu 0 4 404 405 426 425
		f 4 446 827 -467 -827
		mu 0 4 405 406 427 426
		f 4 447 828 -468 -828
		mu 0 4 406 407 428 427
		f 4 448 829 -469 -829
		mu 0 4 407 408 429 428
		f 4 449 830 -470 -830
		mu 0 4 408 409 430 429
		f 4 450 831 -471 -831
		mu 0 4 409 410 431 430
		f 4 451 832 -472 -832
		mu 0 4 410 411 432 431
		f 4 452 833 -473 -833
		mu 0 4 411 412 433 432
		f 4 453 834 -474 -834
		mu 0 4 412 413 434 433
		f 4 454 835 -475 -835
		mu 0 4 413 414 435 434
		f 4 455 836 -476 -836
		mu 0 4 414 415 436 435
		f 4 456 837 -477 -837
		mu 0 4 415 416 437 436
		f 4 457 838 -478 -838
		mu 0 4 416 417 438 437
		f 4 458 839 -479 -839
		mu 0 4 417 418 439 438
		f 4 459 820 -480 -840
		mu 0 4 418 419 440 439
		f 4 460 841 -481 -841
		mu 0 4 421 420 441 442
		f 4 461 842 -482 -842
		mu 0 4 420 422 443 441
		f 4 462 843 -483 -843
		mu 0 4 422 423 444 443
		f 4 463 844 -484 -844
		mu 0 4 423 424 445 444
		f 4 464 845 -485 -845
		mu 0 4 424 425 446 445
		f 4 465 846 -486 -846
		mu 0 4 425 426 447 446
		f 4 466 847 -487 -847
		mu 0 4 426 427 448 447
		f 4 467 848 -488 -848
		mu 0 4 427 428 449 448
		f 4 468 849 -489 -849
		mu 0 4 428 429 450 449
		f 4 469 850 -490 -850
		mu 0 4 429 430 451 450
		f 4 470 851 -491 -851
		mu 0 4 430 431 452 451
		f 4 471 852 -492 -852
		mu 0 4 431 432 453 452
		f 4 472 853 -493 -853
		mu 0 4 432 433 454 453
		f 4 473 854 -494 -854
		mu 0 4 433 434 455 454
		f 4 474 855 -495 -855
		mu 0 4 434 435 456 455
		f 4 475 856 -496 -856
		mu 0 4 435 436 457 456
		f 4 476 857 -497 -857
		mu 0 4 436 437 458 457
		f 4 477 858 -498 -858
		mu 0 4 437 438 459 458
		f 4 478 859 -499 -859
		mu 0 4 438 439 460 459
		f 4 479 840 -500 -860
		mu 0 4 439 440 461 460
		f 4 480 861 -501 -861
		mu 0 4 442 441 462 463
		f 4 481 862 -502 -862
		mu 0 4 441 443 464 462
		f 4 482 863 -503 -863
		mu 0 4 443 444 465 464
		f 4 483 864 -504 -864
		mu 0 4 444 445 466 465
		f 4 484 865 -505 -865
		mu 0 4 445 446 467 466
		f 4 485 866 -506 -866
		mu 0 4 446 447 468 467
		f 4 486 867 -507 -867
		mu 0 4 447 448 469 468
		f 4 487 868 -508 -868
		mu 0 4 448 449 470 469
		f 4 488 869 -509 -869
		mu 0 4 449 450 471 470
		f 4 489 870 -510 -870
		mu 0 4 450 451 472 471
		f 4 490 871 -511 -871
		mu 0 4 451 452 473 472
		f 4 491 872 -512 -872
		mu 0 4 452 453 474 473
		f 4 492 873 -513 -873
		mu 0 4 453 454 475 474
		f 4 493 874 -514 -874
		mu 0 4 454 455 476 475
		f 4 494 875 -515 -875
		mu 0 4 455 456 477 476
		f 4 495 876 -516 -876
		mu 0 4 456 457 478 477
		f 4 496 877 -517 -877
		mu 0 4 457 458 479 478
		f 4 497 878 -518 -878
		mu 0 4 458 459 480 479
		f 4 498 879 -519 -879
		mu 0 4 459 460 481 480
		f 4 499 860 -520 -880
		mu 0 4 460 461 482 481
		f 4 500 881 -521 -881
		mu 0 4 463 462 483 484
		f 4 501 882 -522 -882
		mu 0 4 462 464 485 483
		f 4 502 883 -523 -883
		mu 0 4 464 465 486 485
		f 4 503 884 -524 -884
		mu 0 4 465 466 487 486
		f 4 504 885 -525 -885
		mu 0 4 466 467 488 487
		f 4 505 886 -526 -886
		mu 0 4 467 468 489 488
		f 4 506 887 -527 -887
		mu 0 4 468 469 490 489
		f 4 507 888 -528 -888
		mu 0 4 469 470 491 490
		f 4 508 889 -529 -889
		mu 0 4 470 471 492 491
		f 4 509 890 -530 -890
		mu 0 4 471 472 493 492
		f 4 510 891 -531 -891
		mu 0 4 472 473 494 493
		f 4 511 892 -532 -892
		mu 0 4 473 474 495 494
		f 4 512 893 -533 -893
		mu 0 4 474 475 496 495
		f 4 513 894 -534 -894
		mu 0 4 475 476 497 496
		f 4 514 895 -535 -895
		mu 0 4 476 477 498 497
		f 4 515 896 -536 -896
		mu 0 4 477 478 499 498
		f 4 516 897 -537 -897
		mu 0 4 478 479 500 499
		f 4 517 898 -538 -898
		mu 0 4 479 480 501 500
		f 4 518 899 -539 -899
		mu 0 4 480 481 502 501
		f 4 519 880 -540 -900
		mu 0 4 481 482 503 502
		f 4 520 901 -541 -901
		mu 0 4 484 483 504 505
		f 4 521 902 -542 -902
		mu 0 4 483 485 506 504
		f 4 522 903 -543 -903
		mu 0 4 485 486 507 506
		f 4 523 904 -544 -904
		mu 0 4 486 487 508 507
		f 4 524 905 -545 -905
		mu 0 4 487 488 509 508
		f 4 525 906 -546 -906
		mu 0 4 488 489 510 509
		f 4 526 907 -547 -907
		mu 0 4 489 490 511 510
		f 4 527 908 -548 -908
		mu 0 4 490 491 512 511
		f 4 528 909 -549 -909
		mu 0 4 491 492 513 512
		f 4 529 910 -550 -910
		mu 0 4 492 493 514 513
		f 4 530 911 -551 -911
		mu 0 4 493 494 515 514
		f 4 531 912 -552 -912
		mu 0 4 494 495 516 515
		f 4 532 913 -553 -913
		mu 0 4 495 496 517 516
		f 4 533 914 -554 -914
		mu 0 4 496 497 518 517
		f 4 534 915 -555 -915
		mu 0 4 497 498 519 518
		f 4 535 916 -556 -916
		mu 0 4 498 499 520 519
		f 4 536 917 -557 -917
		mu 0 4 499 500 521 520
		f 4 537 918 -558 -918
		mu 0 4 500 501 522 521
		f 4 538 919 -559 -919
		mu 0 4 501 502 523 522
		f 4 539 900 -560 -920
		mu 0 4 502 503 524 523
		f 3 -181 -921 921
		mu 0 3 127 126 525
		f 3 -182 -922 922
		mu 0 3 130 127 526
		f 3 -183 -923 923
		mu 0 3 132 130 527
		f 3 -184 -924 924
		mu 0 3 134 132 528
		f 3 -185 -925 925
		mu 0 3 136 134 529
		f 3 -186 -926 926
		mu 0 3 138 136 530
		f 3 -187 -927 927
		mu 0 3 140 138 531
		f 3 -188 -928 928
		mu 0 3 142 140 532
		f 3 -189 -929 929
		mu 0 3 144 142 533
		f 3 -190 -930 930
		mu 0 3 146 144 534
		f 3 -191 -931 931
		mu 0 3 148 146 535
		f 3 -192 -932 932
		mu 0 3 150 148 536
		f 3 -193 -933 933
		mu 0 3 152 150 537
		f 3 -194 -934 934
		mu 0 3 154 152 538
		f 3 -195 -935 935
		mu 0 3 156 154 539
		f 3 -196 -936 936
		mu 0 3 158 156 540
		f 3 -197 -937 937
		mu 0 3 160 158 541
		f 3 -198 -938 938
		mu 0 3 162 160 542
		f 3 -199 -939 939
		mu 0 3 164 162 543
		f 3 -200 -940 920
		mu 0 3 166 164 544
		f 3 540 941 -941
		mu 0 3 505 504 545
		f 3 541 942 -942
		mu 0 3 504 506 546
		f 3 542 943 -943
		mu 0 3 506 507 547
		f 3 543 944 -944
		mu 0 3 507 508 548
		f 3 544 945 -945
		mu 0 3 508 509 549
		f 3 545 946 -946
		mu 0 3 509 510 550
		f 3 546 947 -947
		mu 0 3 510 511 551
		f 3 547 948 -948
		mu 0 3 511 512 552
		f 3 548 949 -949
		mu 0 3 512 513 553
		f 3 549 950 -950
		mu 0 3 513 514 554
		f 3 550 951 -951
		mu 0 3 514 515 555
		f 3 551 952 -952
		mu 0 3 515 516 556
		f 3 552 953 -953
		mu 0 3 516 517 557
		f 3 553 954 -954
		mu 0 3 517 518 558
		f 3 554 955 -955
		mu 0 3 518 519 559
		f 3 555 956 -956
		mu 0 3 519 520 560
		f 3 556 957 -957
		mu 0 3 520 521 561
		f 3 557 958 -958
		mu 0 3 521 522 562
		f 3 558 959 -959
		mu 0 3 522 523 563
		f 3 559 940 -960
		mu 0 3 523 524 564;
	setAttr ".fc[500:999]"
		f 4 1083 1064 -981 -1064
		mu 0 4 565 566 567 568
		f 4 1084 1065 -982 -1065
		mu 0 4 566 569 570 567
		f 4 1085 1066 -983 -1066
		mu 0 4 569 571 572 570
		f 4 1086 1067 -984 -1067
		mu 0 4 571 573 574 572
		f 4 1087 1068 -985 -1068
		mu 0 4 573 575 576 574
		f 4 1088 1069 -986 -1069
		mu 0 4 575 577 578 576
		f 4 1089 1070 -987 -1070
		mu 0 4 577 579 580 578
		f 4 1090 1071 -988 -1071
		mu 0 4 579 581 582 580
		f 4 1091 1072 -989 -1072
		mu 0 4 581 583 584 582
		f 4 1092 1073 -990 -1073
		mu 0 4 583 585 586 584
		f 4 1093 1074 -991 -1074
		mu 0 4 585 587 588 586
		f 4 1094 1075 -992 -1075
		mu 0 4 587 589 590 588
		f 4 1095 1076 -993 -1076
		mu 0 4 589 591 592 590
		f 4 1096 1077 -994 -1077
		mu 0 4 591 593 594 592
		f 4 1097 1078 -995 -1078
		mu 0 4 593 595 596 594
		f 4 1098 1079 -996 -1079
		mu 0 4 595 597 598 596
		f 4 1099 1060 -997 -1080
		mu 0 4 597 599 600 598
		f 4 1080 1061 -998 -1061
		mu 0 4 599 601 602 600
		f 4 1081 1062 -999 -1062
		mu 0 4 601 603 604 602
		f 4 1082 1063 -1000 -1063
		mu 0 4 603 605 606 604
		f 3 -961 -1021 1021
		mu 0 3 607 608 609
		f 3 -962 -1022 1022
		mu 0 3 610 607 609
		f 3 -963 -1023 1023
		mu 0 3 611 610 609
		f 3 -964 -1024 1024
		mu 0 3 612 611 609
		f 3 -965 -1025 1025
		mu 0 3 613 612 609
		f 3 -966 -1026 1026
		mu 0 3 614 613 609
		f 3 -967 -1027 1027
		mu 0 3 615 614 609
		f 3 -968 -1028 1028
		mu 0 3 616 615 609
		f 3 -969 -1029 1029
		mu 0 3 617 616 609
		f 3 -970 -1030 1030
		mu 0 3 618 617 609
		f 3 -971 -1031 1031
		mu 0 3 619 618 609
		f 3 -972 -1032 1032
		mu 0 3 620 619 609
		f 3 -973 -1033 1033
		mu 0 3 621 620 609
		f 3 -974 -1034 1034
		mu 0 3 622 621 609
		f 3 -975 -1035 1035
		mu 0 3 623 622 609
		f 3 -976 -1036 1036
		mu 0 3 624 623 609
		f 3 -977 -1037 1037
		mu 0 3 625 624 609
		f 3 -978 -1038 1038
		mu 0 3 626 625 609
		f 3 -979 -1039 1039
		mu 0 3 627 626 609
		f 3 -980 -1040 1020
		mu 0 3 608 627 609
		f 3 980 1041 -1041
		mu 0 3 628 629 630
		f 3 981 1042 -1042
		mu 0 3 629 631 630
		f 3 982 1043 -1043
		mu 0 3 631 632 630
		f 3 983 1044 -1044
		mu 0 3 632 633 630
		f 3 984 1045 -1045
		mu 0 3 633 634 630
		f 3 985 1046 -1046
		mu 0 3 634 635 630
		f 3 986 1047 -1047
		mu 0 3 635 636 630
		f 3 987 1048 -1048
		mu 0 3 636 637 630
		f 3 988 1049 -1049
		mu 0 3 637 638 630
		f 3 989 1050 -1050
		mu 0 3 638 639 630
		f 3 990 1051 -1051
		mu 0 3 639 640 630
		f 3 991 1052 -1052
		mu 0 3 640 641 630
		f 3 992 1053 -1053
		mu 0 3 641 642 630
		f 3 993 1054 -1054
		mu 0 3 642 643 630
		f 3 994 1055 -1055
		mu 0 3 643 644 630
		f 3 995 1056 -1056
		mu 0 3 644 645 630
		f 3 996 1057 -1057
		mu 0 3 645 646 630
		f 3 997 1058 -1058
		mu 0 3 646 647 630
		f 3 998 1059 -1059
		mu 0 3 647 648 630
		f 3 999 1040 -1060
		mu 0 3 648 628 630
		f 4 1132 1113 -1081 -1113
		mu 0 4 649 650 601 599
		f 4 1133 1114 -1082 -1114
		mu 0 4 650 651 603 601
		f 4 1134 1115 -1083 -1115
		mu 0 4 651 652 605 603
		f 4 1135 1116 -1084 -1116
		mu 0 4 653 654 566 565
		f 4 1136 1117 -1085 -1117
		mu 0 4 654 655 569 566
		f 4 1137 1118 -1086 -1118
		mu 0 4 655 656 571 569
		f 4 1138 1119 -1087 -1119
		mu 0 4 656 657 573 571
		f 4 1139 1100 -1088 -1120
		mu 0 4 657 658 575 573
		f 4 1120 1101 -1089 -1101
		mu 0 4 658 659 577 575
		f 4 1121 1102 -1090 -1102
		mu 0 4 659 660 579 577
		f 4 1122 1103 -1091 -1103
		mu 0 4 660 661 581 579
		f 4 1123 1104 -1092 -1104
		mu 0 4 661 662 583 581
		f 4 1124 1105 -1093 -1105
		mu 0 4 662 663 585 583
		f 4 1125 1106 -1094 -1106
		mu 0 4 663 664 587 585
		f 4 1126 1107 -1095 -1107
		mu 0 4 664 665 589 587
		f 4 1127 1108 -1096 -1108
		mu 0 4 665 666 591 589
		f 4 1128 1109 -1097 -1109
		mu 0 4 666 667 593 591
		f 4 1129 1110 -1098 -1110
		mu 0 4 667 668 595 593
		f 4 1130 1111 -1099 -1111
		mu 0 4 668 669 597 595
		f 4 1131 1112 -1100 -1112
		mu 0 4 669 649 599 597
		f 4 965 1006 -1121 -1006
		mu 0 4 670 671 659 658
		f 4 966 1007 -1122 -1007
		mu 0 4 671 672 660 659
		f 4 967 1008 -1123 -1008
		mu 0 4 672 673 661 660
		f 4 968 1009 -1124 -1009
		mu 0 4 673 674 662 661
		f 4 969 1010 -1125 -1010
		mu 0 4 674 675 663 662
		f 4 970 1011 -1126 -1011
		mu 0 4 675 676 664 663
		f 4 971 1012 -1127 -1012
		mu 0 4 676 677 665 664
		f 4 972 1013 -1128 -1013
		mu 0 4 677 678 666 665
		f 4 973 1014 -1129 -1014
		mu 0 4 678 679 667 666
		f 4 974 1015 -1130 -1015
		mu 0 4 679 680 668 667
		f 4 975 1016 -1131 -1016
		mu 0 4 680 681 669 668
		f 4 976 1017 -1132 -1017
		mu 0 4 681 682 649 669
		f 4 977 1018 -1133 -1018
		mu 0 4 682 683 650 649
		f 4 978 1019 -1134 -1019
		mu 0 4 683 684 651 650
		f 4 979 1000 -1135 -1020
		mu 0 4 684 685 652 651
		f 4 960 1001 -1136 -1001
		mu 0 4 686 687 654 653
		f 4 961 1002 -1137 -1002
		mu 0 4 687 688 655 654
		f 4 962 1003 -1138 -1003
		mu 0 4 688 689 656 655
		f 4 963 1004 -1139 -1004
		mu 0 4 689 690 657 656
		f 4 964 1005 -1140 -1005
		mu 0 4 690 670 658 657
		f 4 1140 1521 -1161 -1521
		mu 0 4 691 692 693 694
		f 4 1141 1522 -1162 -1522
		mu 0 4 692 695 696 693
		f 4 1142 1523 -1163 -1523
		mu 0 4 695 697 698 696
		f 4 1143 1524 -1164 -1524
		mu 0 4 697 699 700 698
		f 4 1144 1525 -1165 -1525
		mu 0 4 699 701 702 700
		f 4 1145 1526 -1166 -1526
		mu 0 4 701 703 704 702
		f 4 1146 1527 -1167 -1527
		mu 0 4 703 705 706 704
		f 4 1147 1528 -1168 -1528
		mu 0 4 705 707 708 706
		f 4 1148 1529 -1169 -1529
		mu 0 4 707 709 710 708
		f 4 1149 1530 -1170 -1530
		mu 0 4 709 711 712 710
		f 4 1150 1531 -1171 -1531
		mu 0 4 711 713 714 712
		f 4 1151 1532 -1172 -1532
		mu 0 4 713 715 716 714
		f 4 1152 1533 -1173 -1533
		mu 0 4 715 717 718 716
		f 4 1153 1534 -1174 -1534
		mu 0 4 717 719 720 718
		f 4 1154 1535 -1175 -1535
		mu 0 4 719 721 722 720
		f 4 1155 1536 -1176 -1536
		mu 0 4 721 723 724 722
		f 4 1156 1537 -1177 -1537
		mu 0 4 723 725 726 724
		f 4 1157 1538 -1178 -1538
		mu 0 4 725 727 728 726
		f 4 1158 1539 -1179 -1539
		mu 0 4 727 729 730 728
		f 4 1159 1520 -1180 -1540
		mu 0 4 729 731 732 730
		f 4 1160 1541 -1181 -1541
		mu 0 4 694 693 733 734
		f 4 1161 1542 -1182 -1542
		mu 0 4 693 696 735 733
		f 4 1162 1543 -1183 -1543
		mu 0 4 696 698 736 735
		f 4 1163 1544 -1184 -1544
		mu 0 4 698 700 737 736
		f 4 1164 1545 -1185 -1545
		mu 0 4 700 702 738 737
		f 4 1165 1546 -1186 -1546
		mu 0 4 702 704 739 738
		f 4 1166 1547 -1187 -1547
		mu 0 4 704 706 740 739
		f 4 1167 1548 -1188 -1548
		mu 0 4 706 708 741 740
		f 4 1168 1549 -1189 -1549
		mu 0 4 708 710 742 741
		f 4 1169 1550 -1190 -1550
		mu 0 4 710 712 743 742
		f 4 1170 1551 -1191 -1551
		mu 0 4 712 714 744 743
		f 4 1171 1552 -1192 -1552
		mu 0 4 714 716 745 744
		f 4 1172 1553 -1193 -1553
		mu 0 4 716 718 746 745
		f 4 1173 1554 -1194 -1554
		mu 0 4 718 720 747 746
		f 4 1174 1555 -1195 -1555
		mu 0 4 720 722 748 747
		f 4 1175 1556 -1196 -1556
		mu 0 4 722 724 749 748
		f 4 1176 1557 -1197 -1557
		mu 0 4 724 726 750 749
		f 4 1177 1558 -1198 -1558
		mu 0 4 726 728 751 750
		f 4 1178 1559 -1199 -1559
		mu 0 4 728 730 752 751
		f 4 1179 1540 -1200 -1560
		mu 0 4 730 732 753 752
		f 4 1180 1561 -1201 -1561
		mu 0 4 734 733 754 755
		f 4 1181 1562 -1202 -1562
		mu 0 4 733 735 756 754
		f 4 1182 1563 -1203 -1563
		mu 0 4 735 736 757 756
		f 4 1183 1564 -1204 -1564
		mu 0 4 736 737 758 757
		f 4 1184 1565 -1205 -1565
		mu 0 4 737 738 759 758
		f 4 1185 1566 -1206 -1566
		mu 0 4 738 739 760 759
		f 4 1186 1567 -1207 -1567
		mu 0 4 739 740 761 760
		f 4 1187 1568 -1208 -1568
		mu 0 4 740 741 762 761
		f 4 1188 1569 -1209 -1569
		mu 0 4 741 742 763 762
		f 4 1189 1570 -1210 -1570
		mu 0 4 742 743 764 763
		f 4 1190 1571 -1211 -1571
		mu 0 4 743 744 765 764
		f 4 1191 1572 -1212 -1572
		mu 0 4 744 745 766 765
		f 4 1192 1573 -1213 -1573
		mu 0 4 745 746 767 766
		f 4 1193 1574 -1214 -1574
		mu 0 4 746 747 768 767
		f 4 1194 1575 -1215 -1575
		mu 0 4 747 748 769 768
		f 4 1195 1576 -1216 -1576
		mu 0 4 748 749 770 769
		f 4 1196 1577 -1217 -1577
		mu 0 4 749 750 771 770
		f 4 1197 1578 -1218 -1578
		mu 0 4 750 751 772 771
		f 4 1198 1579 -1219 -1579
		mu 0 4 751 752 773 772
		f 4 1199 1560 -1220 -1580
		mu 0 4 752 753 774 773
		f 4 1200 1581 -1221 -1581
		mu 0 4 755 754 775 776
		f 4 1201 1582 -1222 -1582
		mu 0 4 754 756 777 775
		f 4 1202 1583 -1223 -1583
		mu 0 4 756 757 778 777
		f 4 1203 1584 -1224 -1584
		mu 0 4 757 758 779 778
		f 4 1204 1585 -1225 -1585
		mu 0 4 758 759 780 779
		f 4 1205 1586 -1226 -1586
		mu 0 4 759 760 781 780
		f 4 1206 1587 -1227 -1587
		mu 0 4 760 761 782 781
		f 4 1207 1588 -1228 -1588
		mu 0 4 761 762 783 782
		f 4 1208 1589 -1229 -1589
		mu 0 4 762 763 784 783
		f 4 1209 1590 -1230 -1590
		mu 0 4 763 764 785 784
		f 4 1210 1591 -1231 -1591
		mu 0 4 764 765 786 785
		f 4 1211 1592 -1232 -1592
		mu 0 4 765 766 787 786
		f 4 1212 1593 -1233 -1593
		mu 0 4 766 767 788 787
		f 4 1213 1594 -1234 -1594
		mu 0 4 767 768 789 788
		f 4 1214 1595 -1235 -1595
		mu 0 4 768 769 790 789
		f 4 1215 1596 -1236 -1596
		mu 0 4 769 770 791 790
		f 4 1216 1597 -1237 -1597
		mu 0 4 770 771 792 791
		f 4 1217 1598 -1238 -1598
		mu 0 4 771 772 793 792
		f 4 1218 1599 -1239 -1599
		mu 0 4 772 773 794 793
		f 4 1219 1580 -1240 -1600
		mu 0 4 773 774 795 794
		f 4 1220 1601 -1241 -1601
		mu 0 4 776 775 796 797
		f 4 1221 1602 -1242 -1602
		mu 0 4 775 777 798 796
		f 4 1222 1603 -1243 -1603
		mu 0 4 777 778 799 798
		f 4 1223 1604 -1244 -1604
		mu 0 4 778 779 800 799
		f 4 1224 1605 -1245 -1605
		mu 0 4 779 780 801 800
		f 4 1225 1606 -1246 -1606
		mu 0 4 780 781 802 801
		f 4 1226 1607 -1247 -1607
		mu 0 4 781 782 803 802
		f 4 1227 1608 -1248 -1608
		mu 0 4 782 783 804 803
		f 4 1228 1609 -1249 -1609
		mu 0 4 783 784 805 804
		f 4 1229 1610 -1250 -1610
		mu 0 4 784 785 806 805
		f 4 1230 1611 -1251 -1611
		mu 0 4 785 786 807 806
		f 4 1231 1612 -1252 -1612
		mu 0 4 786 787 808 807
		f 4 1232 1613 -1253 -1613
		mu 0 4 787 788 809 808
		f 4 1233 1614 -1254 -1614
		mu 0 4 788 789 810 809
		f 4 1234 1615 -1255 -1615
		mu 0 4 789 790 811 810
		f 4 1235 1616 -1256 -1616
		mu 0 4 790 791 812 811
		f 4 1236 1617 -1257 -1617
		mu 0 4 791 792 813 812
		f 4 1237 1618 -1258 -1618
		mu 0 4 792 793 814 813
		f 4 1238 1619 -1259 -1619
		mu 0 4 793 794 815 814
		f 4 1239 1600 -1260 -1620
		mu 0 4 794 795 816 815
		f 4 1240 1621 -1261 -1621
		mu 0 4 797 796 817 818
		f 4 1241 1622 -1262 -1622
		mu 0 4 796 798 819 817
		f 4 1242 1623 -1263 -1623
		mu 0 4 798 799 820 819
		f 4 1243 1624 -1264 -1624
		mu 0 4 799 800 821 820
		f 4 1244 1625 -1265 -1625
		mu 0 4 800 801 822 821
		f 4 1245 1626 -1266 -1626
		mu 0 4 801 802 823 822
		f 4 1246 1627 -1267 -1627
		mu 0 4 802 803 824 823
		f 4 1247 1628 -1268 -1628
		mu 0 4 803 804 825 824
		f 4 1248 1629 -1269 -1629
		mu 0 4 804 805 826 825
		f 4 1249 1630 -1270 -1630
		mu 0 4 805 806 827 826
		f 4 1250 1631 -1271 -1631
		mu 0 4 806 807 828 827
		f 4 1251 1632 -1272 -1632
		mu 0 4 807 808 829 828
		f 4 1252 1633 -1273 -1633
		mu 0 4 808 809 830 829
		f 4 1253 1634 -1274 -1634
		mu 0 4 809 810 831 830
		f 4 1254 1635 -1275 -1635
		mu 0 4 810 811 832 831
		f 4 1255 1636 -1276 -1636
		mu 0 4 811 812 833 832
		f 4 1256 1637 -1277 -1637
		mu 0 4 812 813 834 833
		f 4 1257 1638 -1278 -1638
		mu 0 4 813 814 835 834
		f 4 1258 1639 -1279 -1639
		mu 0 4 814 815 836 835
		f 4 1259 1620 -1280 -1640
		mu 0 4 815 816 837 836
		f 4 1260 1641 -1281 -1641
		mu 0 4 818 817 838 839
		f 4 1261 1642 -1282 -1642
		mu 0 4 817 819 840 838
		f 4 1262 1643 -1283 -1643
		mu 0 4 819 820 841 840
		f 4 1263 1644 -1284 -1644
		mu 0 4 820 821 842 841
		f 4 1264 1645 -1285 -1645
		mu 0 4 821 822 843 842
		f 4 1265 1646 -1286 -1646
		mu 0 4 822 823 844 843
		f 4 1266 1647 -1287 -1647
		mu 0 4 823 824 845 844
		f 4 1267 1648 -1288 -1648
		mu 0 4 824 825 846 845
		f 4 1268 1649 -1289 -1649
		mu 0 4 825 826 847 846
		f 4 1269 1650 -1290 -1650
		mu 0 4 826 827 848 847
		f 4 1270 1651 -1291 -1651
		mu 0 4 827 828 849 848
		f 4 1271 1652 -1292 -1652
		mu 0 4 828 829 850 849
		f 4 1272 1653 -1293 -1653
		mu 0 4 829 830 851 850
		f 4 1273 1654 -1294 -1654
		mu 0 4 830 831 852 851
		f 4 1274 1655 -1295 -1655
		mu 0 4 831 832 853 852
		f 4 1275 1656 -1296 -1656
		mu 0 4 832 833 854 853
		f 4 1276 1657 -1297 -1657
		mu 0 4 833 834 855 854
		f 4 1277 1658 -1298 -1658
		mu 0 4 834 835 856 855
		f 4 1278 1659 -1299 -1659
		mu 0 4 835 836 857 856
		f 4 1279 1640 -1300 -1660
		mu 0 4 836 837 858 857
		f 4 1280 1661 -1301 -1661
		mu 0 4 839 838 859 860
		f 4 1281 1662 -1302 -1662
		mu 0 4 838 840 861 859
		f 4 1282 1663 -1303 -1663
		mu 0 4 840 841 862 861
		f 4 1283 1664 -1304 -1664
		mu 0 4 841 842 863 862
		f 4 1284 1665 -1305 -1665
		mu 0 4 842 843 864 863
		f 4 1285 1666 -1306 -1666
		mu 0 4 843 844 865 864
		f 4 1286 1667 -1307 -1667
		mu 0 4 844 845 866 865
		f 4 1287 1668 -1308 -1668
		mu 0 4 845 846 867 866
		f 4 1288 1669 -1309 -1669
		mu 0 4 846 847 868 867
		f 4 1289 1670 -1310 -1670
		mu 0 4 847 848 869 868
		f 4 1290 1671 -1311 -1671
		mu 0 4 848 849 870 869
		f 4 1291 1672 -1312 -1672
		mu 0 4 849 850 871 870
		f 4 1292 1673 -1313 -1673
		mu 0 4 850 851 872 871
		f 4 1293 1674 -1314 -1674
		mu 0 4 851 852 873 872
		f 4 1294 1675 -1315 -1675
		mu 0 4 852 853 874 873
		f 4 1295 1676 -1316 -1676
		mu 0 4 853 854 875 874
		f 4 1296 1677 -1317 -1677
		mu 0 4 854 855 876 875
		f 4 1297 1678 -1318 -1678
		mu 0 4 855 856 877 876
		f 4 1298 1679 -1319 -1679
		mu 0 4 856 857 878 877
		f 4 1299 1660 -1320 -1680
		mu 0 4 857 858 879 878
		f 4 1300 1681 -1321 -1681
		mu 0 4 860 859 880 881
		f 4 1301 1682 -1322 -1682
		mu 0 4 859 861 882 880
		f 4 1302 1683 -1323 -1683
		mu 0 4 861 862 883 882
		f 4 1303 1684 -1324 -1684
		mu 0 4 862 863 884 883
		f 4 1304 1685 -1325 -1685
		mu 0 4 863 864 885 884
		f 4 1305 1686 -1326 -1686
		mu 0 4 864 865 886 885
		f 4 1306 1687 -1327 -1687
		mu 0 4 865 866 887 886
		f 4 1307 1688 -1328 -1688
		mu 0 4 866 867 888 887
		f 4 1308 1689 -1329 -1689
		mu 0 4 867 868 889 888
		f 4 1309 1690 -1330 -1690
		mu 0 4 868 869 890 889
		f 4 1310 1691 -1331 -1691
		mu 0 4 869 870 891 890
		f 4 1311 1692 -1332 -1692
		mu 0 4 870 871 892 891
		f 4 1312 1693 -1333 -1693
		mu 0 4 871 872 893 892
		f 4 1313 1694 -1334 -1694
		mu 0 4 872 873 894 893
		f 4 1314 1695 -1335 -1695
		mu 0 4 873 874 895 894
		f 4 1315 1696 -1336 -1696
		mu 0 4 874 875 896 895
		f 4 1316 1697 -1337 -1697
		mu 0 4 875 876 897 896
		f 4 1317 1698 -1338 -1698
		mu 0 4 876 877 898 897
		f 4 1318 1699 -1339 -1699
		mu 0 4 877 878 899 898
		f 4 1319 1680 -1340 -1700
		mu 0 4 878 879 900 899
		f 4 1320 1701 -1341 -1701
		mu 0 4 881 880 901 902
		f 4 1321 1702 -1342 -1702
		mu 0 4 880 882 903 901
		f 4 1322 1703 -1343 -1703
		mu 0 4 882 883 904 903
		f 4 1323 1704 -1344 -1704
		mu 0 4 883 884 905 904
		f 4 1324 1705 -1345 -1705
		mu 0 4 884 885 906 905
		f 4 1325 1706 -1346 -1706
		mu 0 4 885 886 907 906
		f 4 1326 1707 -1347 -1707
		mu 0 4 886 887 908 907
		f 4 1327 1708 -1348 -1708
		mu 0 4 887 888 909 908
		f 4 1328 1709 -1349 -1709
		mu 0 4 888 889 910 909
		f 4 1329 1710 -1350 -1710
		mu 0 4 889 890 911 910
		f 4 1330 1711 -1351 -1711
		mu 0 4 890 891 912 911
		f 4 1331 1712 -1352 -1712
		mu 0 4 891 892 913 912
		f 4 1332 1713 -1353 -1713
		mu 0 4 892 893 914 913
		f 4 1333 1714 -1354 -1714
		mu 0 4 893 894 915 914
		f 4 1334 1715 -1355 -1715
		mu 0 4 894 895 916 915
		f 4 1335 1716 -1356 -1716
		mu 0 4 895 896 917 916
		f 4 1336 1717 -1357 -1717
		mu 0 4 896 897 918 917
		f 4 1337 1718 -1358 -1718
		mu 0 4 897 898 919 918
		f 4 1338 1719 -1359 -1719
		mu 0 4 898 899 920 919
		f 4 1339 1700 -1360 -1720
		mu 0 4 899 900 921 920
		f 4 1340 1721 -1361 -1721
		mu 0 4 902 901 922 923
		f 4 1341 1722 -1362 -1722
		mu 0 4 901 903 924 922
		f 4 1342 1723 -1363 -1723
		mu 0 4 903 904 925 924
		f 4 1343 1724 -1364 -1724
		mu 0 4 904 905 926 925
		f 4 1344 1725 -1365 -1725
		mu 0 4 905 906 927 926
		f 4 1345 1726 -1366 -1726
		mu 0 4 906 907 928 927
		f 4 1346 1727 -1367 -1727
		mu 0 4 907 908 929 928
		f 4 1347 1728 -1368 -1728
		mu 0 4 908 909 930 929
		f 4 1348 1729 -1369 -1729
		mu 0 4 909 910 931 930
		f 4 1349 1730 -1370 -1730
		mu 0 4 910 911 932 931
		f 4 1350 1731 -1371 -1731
		mu 0 4 911 912 933 932
		f 4 1351 1732 -1372 -1732
		mu 0 4 912 913 934 933
		f 4 1352 1733 -1373 -1733
		mu 0 4 913 914 935 934
		f 4 1353 1734 -1374 -1734
		mu 0 4 914 915 936 935
		f 4 1354 1735 -1375 -1735
		mu 0 4 915 916 937 936
		f 4 1355 1736 -1376 -1736
		mu 0 4 916 917 938 937
		f 4 1356 1737 -1377 -1737
		mu 0 4 917 918 939 938
		f 4 1357 1738 -1378 -1738
		mu 0 4 918 919 940 939
		f 4 1358 1739 -1379 -1739
		mu 0 4 919 920 941 940
		f 4 1359 1720 -1380 -1740
		mu 0 4 920 921 942 941
		f 4 1360 1741 -1381 -1741
		mu 0 4 923 922 943 944
		f 4 1361 1742 -1382 -1742
		mu 0 4 922 924 945 943
		f 4 1362 1743 -1383 -1743
		mu 0 4 924 925 946 945
		f 4 1363 1744 -1384 -1744
		mu 0 4 925 926 947 946
		f 4 1364 1745 -1385 -1745
		mu 0 4 926 927 948 947
		f 4 1365 1746 -1386 -1746
		mu 0 4 927 928 949 948
		f 4 1366 1747 -1387 -1747
		mu 0 4 928 929 950 949
		f 4 1367 1748 -1388 -1748
		mu 0 4 929 930 951 950
		f 4 1368 1749 -1389 -1749
		mu 0 4 930 931 952 951
		f 4 1369 1750 -1390 -1750
		mu 0 4 931 932 953 952
		f 4 1370 1751 -1391 -1751
		mu 0 4 932 933 954 953
		f 4 1371 1752 -1392 -1752
		mu 0 4 933 934 955 954
		f 4 1372 1753 -1393 -1753
		mu 0 4 934 935 956 955
		f 4 1373 1754 -1394 -1754
		mu 0 4 935 936 957 956
		f 4 1374 1755 -1395 -1755
		mu 0 4 936 937 958 957
		f 4 1375 1756 -1396 -1756
		mu 0 4 937 938 959 958
		f 4 1376 1757 -1397 -1757
		mu 0 4 938 939 960 959
		f 4 1377 1758 -1398 -1758
		mu 0 4 939 940 961 960
		f 4 1378 1759 -1399 -1759
		mu 0 4 940 941 962 961
		f 4 1379 1740 -1400 -1760
		mu 0 4 941 942 963 962
		f 4 1380 1761 -1401 -1761
		mu 0 4 944 943 964 965
		f 4 1381 1762 -1402 -1762
		mu 0 4 943 945 966 964
		f 4 1382 1763 -1403 -1763
		mu 0 4 945 946 967 966
		f 4 1383 1764 -1404 -1764
		mu 0 4 946 947 968 967
		f 4 1384 1765 -1405 -1765
		mu 0 4 947 948 969 968
		f 4 1385 1766 -1406 -1766
		mu 0 4 948 949 970 969
		f 4 1386 1767 -1407 -1767
		mu 0 4 949 950 971 970
		f 4 1387 1768 -1408 -1768
		mu 0 4 950 951 972 971
		f 4 1388 1769 -1409 -1769
		mu 0 4 951 952 973 972
		f 4 1389 1770 -1410 -1770
		mu 0 4 952 953 974 973
		f 4 1390 1771 -1411 -1771
		mu 0 4 953 954 975 974
		f 4 1391 1772 -1412 -1772
		mu 0 4 954 955 976 975
		f 4 1392 1773 -1413 -1773
		mu 0 4 955 956 977 976
		f 4 1393 1774 -1414 -1774
		mu 0 4 956 957 978 977
		f 4 1394 1775 -1415 -1775
		mu 0 4 957 958 979 978
		f 4 1395 1776 -1416 -1776
		mu 0 4 958 959 980 979
		f 4 1396 1777 -1417 -1777
		mu 0 4 959 960 981 980
		f 4 1397 1778 -1418 -1778
		mu 0 4 960 961 982 981
		f 4 1398 1779 -1419 -1779
		mu 0 4 961 962 983 982
		f 4 1399 1760 -1420 -1780
		mu 0 4 962 963 984 983
		f 4 1400 1781 -1421 -1781
		mu 0 4 965 964 985 986
		f 4 1401 1782 -1422 -1782
		mu 0 4 964 966 987 985
		f 4 1402 1783 -1423 -1783
		mu 0 4 966 967 988 987
		f 4 1403 1784 -1424 -1784
		mu 0 4 967 968 989 988
		f 4 1404 1785 -1425 -1785
		mu 0 4 968 969 990 989
		f 4 1405 1786 -1426 -1786
		mu 0 4 969 970 991 990
		f 4 1406 1787 -1427 -1787
		mu 0 4 970 971 992 991
		f 4 1407 1788 -1428 -1788
		mu 0 4 971 972 993 992
		f 4 1408 1789 -1429 -1789
		mu 0 4 972 973 994 993
		f 4 1409 1790 -1430 -1790
		mu 0 4 973 974 995 994
		f 4 1410 1791 -1431 -1791
		mu 0 4 974 975 996 995
		f 4 1411 1792 -1432 -1792
		mu 0 4 975 976 997 996
		f 4 1412 1793 -1433 -1793
		mu 0 4 976 977 998 997
		f 4 1413 1794 -1434 -1794
		mu 0 4 977 978 999 998
		f 4 1414 1795 -1435 -1795
		mu 0 4 978 979 1000 999
		f 4 1415 1796 -1436 -1796
		mu 0 4 979 980 1001 1000
		f 4 1416 1797 -1437 -1797
		mu 0 4 980 981 1002 1001
		f 4 1417 1798 -1438 -1798
		mu 0 4 981 982 1003 1002
		f 4 1418 1799 -1439 -1799
		mu 0 4 982 983 1004 1003
		f 4 1419 1780 -1440 -1800
		mu 0 4 983 984 1005 1004
		f 4 1420 1801 -1441 -1801
		mu 0 4 986 985 1006 1007
		f 4 1421 1802 -1442 -1802
		mu 0 4 985 987 1008 1006
		f 4 1422 1803 -1443 -1803
		mu 0 4 987 988 1009 1008
		f 4 1423 1804 -1444 -1804
		mu 0 4 988 989 1010 1009
		f 4 1424 1805 -1445 -1805
		mu 0 4 989 990 1011 1010
		f 4 1425 1806 -1446 -1806
		mu 0 4 990 991 1012 1011
		f 4 1426 1807 -1447 -1807
		mu 0 4 991 992 1013 1012
		f 4 1427 1808 -1448 -1808
		mu 0 4 992 993 1014 1013
		f 4 1428 1809 -1449 -1809
		mu 0 4 993 994 1015 1014
		f 4 1429 1810 -1450 -1810
		mu 0 4 994 995 1016 1015
		f 4 1430 1811 -1451 -1811
		mu 0 4 995 996 1017 1016
		f 4 1431 1812 -1452 -1812
		mu 0 4 996 997 1018 1017
		f 4 1432 1813 -1453 -1813
		mu 0 4 997 998 1019 1018
		f 4 1433 1814 -1454 -1814
		mu 0 4 998 999 1020 1019
		f 4 1434 1815 -1455 -1815
		mu 0 4 999 1000 1021 1020
		f 4 1435 1816 -1456 -1816
		mu 0 4 1000 1001 1022 1021
		f 4 1436 1817 -1457 -1817
		mu 0 4 1001 1002 1023 1022
		f 4 1437 1818 -1458 -1818
		mu 0 4 1002 1003 1024 1023
		f 4 1438 1819 -1459 -1819
		mu 0 4 1003 1004 1025 1024
		f 4 1439 1800 -1460 -1820
		mu 0 4 1004 1005 1026 1025
		f 4 1440 1821 -1461 -1821
		mu 0 4 1007 1006 1027 1028
		f 4 1441 1822 -1462 -1822
		mu 0 4 1006 1008 1029 1027
		f 4 1442 1823 -1463 -1823
		mu 0 4 1008 1009 1030 1029
		f 4 1443 1824 -1464 -1824
		mu 0 4 1009 1010 1031 1030
		f 4 1444 1825 -1465 -1825
		mu 0 4 1010 1011 1032 1031
		f 4 1445 1826 -1466 -1826
		mu 0 4 1011 1012 1033 1032
		f 4 1446 1827 -1467 -1827
		mu 0 4 1012 1013 1034 1033
		f 4 1447 1828 -1468 -1828
		mu 0 4 1013 1014 1035 1034
		f 4 1448 1829 -1469 -1829
		mu 0 4 1014 1015 1036 1035
		f 4 1449 1830 -1470 -1830
		mu 0 4 1015 1016 1037 1036
		f 4 1450 1831 -1471 -1831
		mu 0 4 1016 1017 1038 1037
		f 4 1451 1832 -1472 -1832
		mu 0 4 1017 1018 1039 1038
		f 4 1452 1833 -1473 -1833
		mu 0 4 1018 1019 1040 1039
		f 4 1453 1834 -1474 -1834
		mu 0 4 1019 1020 1041 1040
		f 4 1454 1835 -1475 -1835
		mu 0 4 1020 1021 1042 1041
		f 4 1455 1836 -1476 -1836
		mu 0 4 1021 1022 1043 1042
		f 4 1456 1837 -1477 -1837
		mu 0 4 1022 1023 1044 1043
		f 4 1457 1838 -1478 -1838
		mu 0 4 1023 1024 1045 1044
		f 4 1458 1839 -1479 -1839
		mu 0 4 1024 1025 1046 1045
		f 4 1459 1820 -1480 -1840
		mu 0 4 1025 1026 1047 1046
		f 4 1460 1841 -1481 -1841
		mu 0 4 1028 1027 1048 1049
		f 4 1461 1842 -1482 -1842
		mu 0 4 1027 1029 1050 1048
		f 4 1462 1843 -1483 -1843
		mu 0 4 1029 1030 1051 1050
		f 4 1463 1844 -1484 -1844
		mu 0 4 1030 1031 1052 1051
		f 4 1464 1845 -1485 -1845
		mu 0 4 1031 1032 1053 1052
		f 4 1465 1846 -1486 -1846
		mu 0 4 1032 1033 1054 1053
		f 4 1466 1847 -1487 -1847
		mu 0 4 1033 1034 1055 1054
		f 4 1467 1848 -1488 -1848
		mu 0 4 1034 1035 1056 1055
		f 4 1468 1849 -1489 -1849
		mu 0 4 1035 1036 1057 1056
		f 4 1469 1850 -1490 -1850
		mu 0 4 1036 1037 1058 1057
		f 4 1470 1851 -1491 -1851
		mu 0 4 1037 1038 1059 1058
		f 4 1471 1852 -1492 -1852
		mu 0 4 1038 1039 1060 1059
		f 4 1472 1853 -1493 -1853
		mu 0 4 1039 1040 1061 1060
		f 4 1473 1854 -1494 -1854
		mu 0 4 1040 1041 1062 1061
		f 4 1474 1855 -1495 -1855
		mu 0 4 1041 1042 1063 1062
		f 4 1475 1856 -1496 -1856
		mu 0 4 1042 1043 1064 1063
		f 4 1476 1857 -1497 -1857
		mu 0 4 1043 1044 1065 1064
		f 4 1477 1858 -1498 -1858
		mu 0 4 1044 1045 1066 1065
		f 4 1478 1859 -1499 -1859
		mu 0 4 1045 1046 1067 1066
		f 4 1479 1840 -1500 -1860
		mu 0 4 1046 1047 1068 1067
		f 4 1480 1861 -1501 -1861
		mu 0 4 1049 1048 1069 1070
		f 4 1481 1862 -1502 -1862
		mu 0 4 1048 1050 1071 1069
		f 4 1482 1863 -1503 -1863
		mu 0 4 1050 1051 1072 1071
		f 4 1483 1864 -1504 -1864
		mu 0 4 1051 1052 1073 1072
		f 4 1484 1865 -1505 -1865
		mu 0 4 1052 1053 1074 1073
		f 4 1485 1866 -1506 -1866
		mu 0 4 1053 1054 1075 1074
		f 4 1486 1867 -1507 -1867
		mu 0 4 1054 1055 1076 1075
		f 4 1487 1868 -1508 -1868
		mu 0 4 1055 1056 1077 1076
		f 4 1488 1869 -1509 -1869
		mu 0 4 1056 1057 1078 1077
		f 4 1489 1870 -1510 -1870
		mu 0 4 1057 1058 1079 1078
		f 4 1490 1871 -1511 -1871
		mu 0 4 1058 1059 1080 1079
		f 4 1491 1872 -1512 -1872
		mu 0 4 1059 1060 1081 1080
		f 4 1492 1873 -1513 -1873
		mu 0 4 1060 1061 1082 1081
		f 4 1493 1874 -1514 -1874
		mu 0 4 1061 1062 1083 1082
		f 4 1494 1875 -1515 -1875
		mu 0 4 1062 1063 1084 1083
		f 4 1495 1876 -1516 -1876
		mu 0 4 1063 1064 1085 1084
		f 4 1496 1877 -1517 -1877
		mu 0 4 1064 1065 1086 1085
		f 4 1497 1878 -1518 -1878
		mu 0 4 1065 1066 1087 1086
		f 4 1498 1879 -1519 -1879
		mu 0 4 1066 1067 1088 1087
		f 4 1499 1860 -1520 -1880
		mu 0 4 1067 1068 1089 1088
		f 3 -1141 -1881 1881
		mu 0 3 692 691 1090
		f 3 -1142 -1882 1882
		mu 0 3 695 692 1091
		f 3 -1143 -1883 1883
		mu 0 3 697 695 1092
		f 3 -1144 -1884 1884
		mu 0 3 699 697 1093
		f 3 -1145 -1885 1885
		mu 0 3 701 699 1094
		f 3 -1146 -1886 1886
		mu 0 3 703 701 1095
		f 3 -1147 -1887 1887
		mu 0 3 705 703 1096
		f 3 -1148 -1888 1888
		mu 0 3 707 705 1097
		f 3 -1149 -1889 1889
		mu 0 3 709 707 1098
		f 3 -1150 -1890 1890
		mu 0 3 711 709 1099
		f 3 -1151 -1891 1891
		mu 0 3 713 711 1100
		f 3 -1152 -1892 1892
		mu 0 3 715 713 1101
		f 3 -1153 -1893 1893
		mu 0 3 717 715 1102
		f 3 -1154 -1894 1894
		mu 0 3 719 717 1103
		f 3 -1155 -1895 1895
		mu 0 3 721 719 1104
		f 3 -1156 -1896 1896
		mu 0 3 723 721 1105
		f 3 -1157 -1897 1897
		mu 0 3 725 723 1106
		f 3 -1158 -1898 1898
		mu 0 3 727 725 1107
		f 3 -1159 -1899 1899
		mu 0 3 729 727 1108
		f 3 -1160 -1900 1880
		mu 0 3 731 729 1109
		f 3 1500 1901 -1901
		mu 0 3 1070 1069 1110
		f 3 1501 1902 -1902
		mu 0 3 1069 1071 1111
		f 3 1502 1903 -1903
		mu 0 3 1071 1072 1112
		f 3 1503 1904 -1904
		mu 0 3 1072 1073 1113
		f 3 1504 1905 -1905
		mu 0 3 1073 1074 1114
		f 3 1505 1906 -1906
		mu 0 3 1074 1075 1115
		f 3 1506 1907 -1907
		mu 0 3 1075 1076 1116
		f 3 1507 1908 -1908
		mu 0 3 1076 1077 1117
		f 3 1508 1909 -1909
		mu 0 3 1077 1078 1118
		f 3 1509 1910 -1910
		mu 0 3 1078 1079 1119
		f 3 1510 1911 -1911
		mu 0 3 1079 1080 1120
		f 3 1511 1912 -1912
		mu 0 3 1080 1081 1121
		f 3 1512 1913 -1913
		mu 0 3 1081 1082 1122
		f 3 1513 1914 -1914
		mu 0 3 1082 1083 1123
		f 3 1514 1915 -1915
		mu 0 3 1083 1084 1124
		f 3 1515 1916 -1916
		mu 0 3 1084 1085 1125
		f 3 1516 1917 -1917
		mu 0 3 1085 1086 1126
		f 3 1517 1918 -1918
		mu 0 3 1086 1087 1127
		f 3 1518 1919 -1919
		mu 0 3 1087 1088 1128
		f 3 1519 1900 -1920
		mu 0 3 1088 1089 1129;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere4";
	rename -uid "6673F761-4DA1-810C-4DF6-3BA6AE75FF72";
	setAttr ".t" -type "double3" 5.6640197912261296 0 0 ;
	setAttr ".s" -type "double3" 0.32333099418319161 0.11050697925514022 0.32333099418319161 ;
createNode transform -n "transform14" -p "pSphere4";
	rename -uid "9CC4F4B9-450D-32F7-7BEC-128DEFBF587F";
	setAttr ".v" no;
createNode mesh -n "pSphereShape4" -p "transform14";
	rename -uid "D0565600-436D-5171-975D-69A93908DCDC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.95000007748603821 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".pt";
	setAttr ".pt[340]" -type "float3" 0.21030031 1.4702319 -0.068330653 ;
	setAttr ".pt[341]" -type "float3" 0.17889214 1.4702319 -0.12997268 ;
	setAttr ".pt[342]" -type "float3" 0.12997274 1.4702319 -0.17889206 ;
	setAttr ".pt[343]" -type "float3" 0.068330713 1.4702319 -0.21030022 ;
	setAttr ".pt[344]" -type "float3" 2.1325587e-008 1.4702319 -0.22112273 ;
	setAttr ".pt[345]" -type "float3" -0.068330668 1.4702319 -0.21030021 ;
	setAttr ".pt[346]" -type "float3" -0.12997267 1.4702319 -0.17889202 ;
	setAttr ".pt[347]" -type "float3" -0.17889202 1.4702319 -0.12997264 ;
	setAttr ".pt[348]" -type "float3" -0.21030019 1.4702319 -0.068330638 ;
	setAttr ".pt[349]" -type "float3" -0.22112271 1.4702319 4.2651173e-008 ;
	setAttr ".pt[350]" -type "float3" -0.21030019 1.4702319 0.068330713 ;
	setAttr ".pt[351]" -type "float3" -0.17889202 1.4702319 0.12997271 ;
	setAttr ".pt[352]" -type "float3" -0.12997265 1.4702319 0.17889208 ;
	setAttr ".pt[353]" -type "float3" -0.068330653 1.4702319 0.21030022 ;
	setAttr ".pt[354]" -type "float3" 1.4735618e-008 1.4702319 0.22112273 ;
	setAttr ".pt[355]" -type "float3" 0.068330675 1.4702319 0.21030021 ;
	setAttr ".pt[356]" -type "float3" 0.12997267 1.4702319 0.17889206 ;
	setAttr ".pt[357]" -type "float3" 0.17889202 1.4702319 0.1299727 ;
	setAttr ".pt[358]" -type "float3" 0.21030019 1.4702319 0.068330705 ;
	setAttr ".pt[359]" -type "float3" 0.22112271 1.4702319 4.2651173e-008 ;
	setAttr ".pt[360]" -type "float3" 0.10646089 1.4964445 -0.034591191 ;
	setAttr ".pt[361]" -type "float3" 0.090561032 1.4964445 -0.065796383 ;
	setAttr ".pt[362]" -type "float3" 0.065796442 1.4964445 -0.090560973 ;
	setAttr ".pt[363]" -type "float3" 0.034591246 1.4964445 -0.10646081 ;
	setAttr ".pt[364]" -type "float3" 2.1325587e-008 1.4964445 -0.1119395 ;
	setAttr ".pt[365]" -type "float3" -0.034591202 1.4964445 -0.1064608 ;
	setAttr ".pt[366]" -type "float3" -0.06579639 1.4964445 -0.09056095 ;
	setAttr ".pt[367]" -type "float3" -0.090560958 1.4964445 -0.06579636 ;
	setAttr ".pt[368]" -type "float3" -0.1064608 1.4964445 -0.034591172 ;
	setAttr ".pt[369]" -type "float3" -0.1119395 1.4964445 4.2651173e-008 ;
	setAttr ".pt[370]" -type "float3" -0.1064608 1.4964445 0.034591258 ;
	setAttr ".pt[371]" -type "float3" -0.090560958 1.4964445 0.065796442 ;
	setAttr ".pt[372]" -type "float3" -0.065796375 1.4964445 0.090561017 ;
	setAttr ".pt[373]" -type "float3" -0.034591194 1.4964445 0.10646085 ;
	setAttr ".pt[374]" -type "float3" 1.7989532e-008 1.4964445 0.11193955 ;
	setAttr ".pt[375]" -type "float3" 0.034591228 1.4964445 0.10646085 ;
	setAttr ".pt[376]" -type "float3" 0.065796405 1.4964445 0.090561002 ;
	setAttr ".pt[377]" -type "float3" 0.09056098 1.4964445 0.065796435 ;
	setAttr ".pt[378]" -type "float3" 0.10646081 1.4964445 0.03459125 ;
	setAttr ".pt[379]" -type "float3" 0.11193953 1.4964445 4.2651173e-008 ;
	setAttr ".pt[381]" -type "float3" 2.1325587e-008 1.5052541 4.2651173e-008 ;
createNode transform -n "pCube1";
	rename -uid "56932069-43FB-BA13-3C5D-36AF8519963E";
	setAttr ".t" -type "double3" 6.1153904820525602 0.022491799403682622 0 ;
	setAttr ".s" -type "double3" 0.40099557505841721 0.069385309879551271 0.08455265986462264 ;
createNode transform -n "transform15" -p "pCube1";
	rename -uid "D8CEA261-43F0-9A48-DAA3-3D98751727A8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform15";
	rename -uid "2CE8035B-4AF6-31EE-D914-2FAEA93927E8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[3]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[5]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[7]" -type "float3" -0.31550887 -2.6267624 0 ;
createNode transform -n "pCube2";
	rename -uid "88F7275C-41B6-3F1C-7D95-1D923F17C849";
	setAttr ".t" -type "double3" 5.403406649059538 0.022491799403682622 -0.43369605399474842 ;
	setAttr ".r" -type "double3" 0 119.99999999999999 0 ;
	setAttr ".s" -type "double3" 0.40099557505841721 0.069385309879551271 0.08455265986462264 ;
createNode transform -n "transform20" -p "pCube2";
	rename -uid "88BDAB24-4364-7ADC-524C-BAA7C95289BB";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform20";
	rename -uid "4E465190-493B-0211-59BC-1F8A64C9D9DA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50788927 0.25 0.50629675 0 0.50629675 1 0.51462173
		 0.75 0.50502723 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[3]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[5]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[7]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.031557024 0.5 0.5 0.025187016 -0.5 0.5
		 0.058486998 -0.5 -0.5 0.020108998 0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 9 0 2 8 0 4 11 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 1 0 10 7 0 11 5 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 5 -13
		mu 0 4 14 15 1 3
		f 4 19 12 7 -16
		mu 0 4 18 14 3 5
		f 4 18 15 9 -15
		mu 0 4 17 18 5 7
		f 4 17 14 11 -14
		mu 0 4 16 17 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 -17 -2 -5
		mu 0 4 0 15 14 2
		f 4 3 -18 -1 -11
		mu 0 4 6 17 16 8
		f 4 2 -19 -4 -9
		mu 0 4 4 18 17 6
		f 4 1 -20 -3 -7
		mu 0 4 2 14 18 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	rename -uid "A9CCEA9C-40C1-86EA-788A-E5ADD51735A0";
	setAttr ".t" -type "double3" 5.8738177645580798 0.022491799403682622 -0.4179121023848047 ;
	setAttr ".r" -type "double3" 0 59.999999999999993 0 ;
	setAttr ".s" -type "double3" 0.40099557505841721 0.069385309879551271 0.08455265986462264 ;
createNode transform -n "transform16" -p "pCube3";
	rename -uid "C4A9E85C-42B3-D056-BE4F-F2A4455B24E2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform16";
	rename -uid "EC7C7C15-4ED6-A0F5-C4B0-85B2A8D75E99";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50788927 0.25 0.50629675 0 0.50629675 1 0.51462173
		 0.75 0.50502723 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[3]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[5]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[7]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.031557024 0.5 0.5 0.025187016 -0.5 0.5
		 0.058486998 -0.5 -0.5 0.020108998 0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 9 0 2 8 0 4 11 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 1 0 10 7 0 11 5 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 5 -13
		mu 0 4 14 15 1 3
		f 4 19 12 7 -16
		mu 0 4 18 14 3 5
		f 4 18 15 9 -15
		mu 0 4 17 18 5 7
		f 4 17 14 11 -14
		mu 0 4 16 17 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 -17 -2 -5
		mu 0 4 0 15 14 2
		f 4 3 -18 -1 -11
		mu 0 4 6 17 16 8
		f 4 2 -19 -4 -9
		mu 0 4 4 18 17 6
		f 4 1 -20 -3 -7
		mu 0 4 2 14 18 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "93DB6A2A-4AE8-907C-E29A-9BADA99BD592";
	setAttr ".t" -type "double3" 5.1709472109248953 0.022491799403682622 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.40099557505841721 0.069385309879551271 0.08455265986462264 ;
createNode transform -n "transform17" -p "pCube4";
	rename -uid "CD32A933-4B0D-9CFB-A3CB-EE814E5D4593";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform17";
	rename -uid "B84C4DFE-4E5C-D412-63E1-FDAA04395497";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50788927 0.25 0.50629675 0 0.50629675 1 0.51462173
		 0.75 0.50502723 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[3]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[5]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[7]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.031557024 0.5 0.5 0.025187016 -0.5 0.5
		 0.058486998 -0.5 -0.5 0.020108998 0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 9 0 2 8 0 4 11 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 1 0 10 7 0 11 5 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 5 -13
		mu 0 4 14 15 1 3
		f 4 19 12 7 -16
		mu 0 4 18 14 3 5
		f 4 18 15 9 -15
		mu 0 4 17 18 5 7
		f 4 17 14 11 -14
		mu 0 4 16 17 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 -17 -2 -5
		mu 0 4 0 15 14 2
		f 4 3 -18 -1 -11
		mu 0 4 6 17 16 8
		f 4 2 -19 -4 -9
		mu 0 4 4 18 17 6
		f 4 1 -20 -3 -7
		mu 0 4 2 14 18 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "F3823717-4EA8-0821-666B-B192047D55E3";
	setAttr ".t" -type "double3" 5.4140004742950865 0.022491799403682622 0.40685237435041643 ;
	setAttr ".r" -type "double3" 0 239.99999999999997 0 ;
	setAttr ".s" -type "double3" 0.40099557505841721 0.069385309879551271 0.08455265986462264 ;
createNode transform -n "transform18" -p "pCube5";
	rename -uid "66CB2B1F-4836-463F-2540-82A24D47F180";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform18";
	rename -uid "2E8F0FA0-4EBF-56B4-720D-3BA04D1A2F32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50788927 0.25 0.50629675 0 0.50629675 1 0.51462173
		 0.75 0.50502723 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[3]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[5]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[7]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.031557024 0.5 0.5 0.025187016 -0.5 0.5
		 0.058486998 -0.5 -0.5 0.020108998 0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 9 0 2 8 0 4 11 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 1 0 10 7 0 11 5 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 5 -13
		mu 0 4 14 15 1 3
		f 4 19 12 7 -16
		mu 0 4 18 14 3 5
		f 4 18 15 9 -15
		mu 0 4 17 18 5 7
		f 4 17 14 11 -14
		mu 0 4 16 17 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 -17 -2 -5
		mu 0 4 0 15 14 2
		f 4 3 -18 -1 -11
		mu 0 4 6 17 16 8
		f 4 2 -19 -4 -9
		mu 0 4 4 18 17 6
		f 4 1 -20 -3 -7
		mu 0 4 2 14 18 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "BA20113D-43B7-BF4B-6F91-E2BD0C85C52D";
	setAttr ".t" -type "double3" 5.8781458574751735 0.022491799403682622 0.40463799649152044 ;
	setAttr ".r" -type "double3" 0 300 0 ;
	setAttr ".s" -type "double3" 0.40099557505841721 0.069385309879551271 0.08455265986462264 ;
createNode transform -n "transform19" -p "pCube6";
	rename -uid "DE4D51F0-480B-E4ED-D6EA-D999FD0A9621";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform19";
	rename -uid "4D3B04D2-4E00-D96C-1294-8C9FF3BE9788";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.50788927 0.25 0.50629675 0 0.50629675 1 0.51462173
		 0.75 0.50502723 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[3]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[5]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr ".pt[7]" -type "float3" -0.31550887 -2.6267624 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.031557024 0.5 0.5 0.025187016 -0.5 0.5
		 0.058486998 -0.5 -0.5 0.020108998 0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 9 0 2 8 0 4 11 0 6 10 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 3 0 9 1 0 10 7 0 11 5 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 5 -13
		mu 0 4 14 15 1 3
		f 4 19 12 7 -16
		mu 0 4 18 14 3 5
		f 4 18 15 9 -15
		mu 0 4 17 18 5 7
		f 4 17 14 11 -14
		mu 0 4 16 17 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 -17 -2 -5
		mu 0 4 0 15 14 2
		f 4 3 -18 -1 -11
		mu 0 4 6 17 16 8
		f 4 2 -19 -4 -9
		mu 0 4 4 18 17 6
		f 4 1 -20 -3 -7
		mu 0 4 2 14 18 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "691374F1-4C65-54AB-BFC7-DEB6FCADE020";
	setAttr ".t" -type "double3" -2.2734474557305586 -4.2034135088525835 0.089388125218477388 ;
	setAttr ".s" -type "double3" 1.2043340802884388 1.2043340802884388 1.2043340802884388 ;
	setAttr ".rp" -type "double3" 5.6431688464887273 0.041194251769230764 -0.013421839822166021 ;
	setAttr ".sp" -type "double3" 5.6431688464887273 0.041194251769230764 -0.013421839822166021 ;
createNode transform -n "transform21" -p "pCube7";
	rename -uid "6E748FFC-4342-5E23-538F-9B8FBB477FC4";
	setAttr ".v" no;
createNode mesh -n "pCube7Shape" -p "transform21";
	rename -uid "5AB2471F-44A9-6CB9-3F6D-2BBDF4349C9A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7";
	rename -uid "116F646A-4E79-1FE6-7975-D6A8BB1530D5";
	setAttr ".s" -type "double3" 0.78794820396792065 0.78794820396792065 0.78794820396792065 ;
	setAttr ".rp" -type "double3" 3.1200634957181235 -1.6399696520487319 0.075966275046068676 ;
	setAttr ".sp" -type "double3" 3.1200634957181235 -1.6399696520487319 0.075966275046068676 ;
createNode transform -n "polySurface8" -p "|polySurface7";
	rename -uid "A0D80E21-46F4-636B-94EB-4394395122A6";
createNode transform -n "transform26" -p "polySurface8";
	rename -uid "FBD4E880-4F0E-5003-A78F-DD8FD8BBA7CB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform26";
	rename -uid "4D2C02B7-4AC7-00A8-5479-EEBE62B99449";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface9" -p "|polySurface7";
	rename -uid "83159B40-45A0-3E53-BD87-878FE2F95C1A";
createNode transform -n "transform27" -p "polySurface9";
	rename -uid "43122E2F-476E-021C-560A-828BCA67462D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform27";
	rename -uid "9B021AD8-4A84-8A88-EC1E-11A541F0F8F7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "|polySurface7";
	rename -uid "45B15D43-4275-4A72-6658-119E9C5599A6";
	setAttr ".t" -type "double3" 6.7858917087993689 -5.9485951630406237 0 ;
	setAttr ".r" -type "double3" 0 0 180 ;
createNode transform -n "transform28" -p "polySurface10";
	rename -uid "D82917CA-41EA-B07E-9DF7-EFA8ADEB3F9A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform28";
	rename -uid "8E6B82AF-4419-DBB7-2B00-A0B8CA486265";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface11" -p "|polySurface7";
	rename -uid "0784D136-4FA0-7E59-6473-47944D90C8A0";
createNode transform -n "transform29" -p "polySurface11";
	rename -uid "6AFA4AD6-4256-D6A3-CBF8-27A913DF120C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform29";
	rename -uid "11D221F7-43BA-0755-F119-1791AB4B7EBC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface12" -p "|polySurface7";
	rename -uid "33A0595B-4E26-0C2D-0421-839B75B7A5E1";
createNode transform -n "transform30" -p "polySurface12";
	rename -uid "A836480E-4999-CCEB-0A43-E4AB9D1F0885";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform30";
	rename -uid "8E2982AA-41DE-51E6-3BDD-36916371B2ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface13" -p "|polySurface7";
	rename -uid "8AC7BB7B-48FF-B56C-5A2B-E6821532B409";
createNode transform -n "transform31" -p "polySurface13";
	rename -uid "A43F1911-44D7-3537-1950-0DA62E87DFC7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform31";
	rename -uid "7C141F15-4925-A9B6-A6AF-D1B230CD291B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface14" -p "|polySurface7";
	rename -uid "AC68526F-489E-52C8-9D6C-439B014429F9";
createNode transform -n "transform32" -p "polySurface14";
	rename -uid "A7EF0AED-46F7-1748-5A45-168969089BCE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform32";
	rename -uid "994C09FA-4DE3-AFA4-DE72-30A2BB87833D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "|polySurface7";
	rename -uid "BA9D900C-420D-44F1-C878-5987B4E637BB";
createNode transform -n "transform33" -p "polySurface15";
	rename -uid "721C4F82-44B2-FAFD-12E5-5CA9F4CBCB51";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform33";
	rename -uid "6AE03BF5-4725-9B6B-E385-FBA2299BCB6D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface16" -p "|polySurface7";
	rename -uid "48821D88-4924-848B-BFE9-19BB481EE343";
createNode transform -n "transform34" -p "polySurface16";
	rename -uid "0DA8ED91-49E5-9E49-D506-628DC5DC2383";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform34";
	rename -uid "E7C44742-4C24-6A00-7E9F-56ABC7A06A3A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface17" -p "|polySurface7";
	rename -uid "0FFF8F7B-42DD-D721-CEE8-48BAD58A5DE1";
createNode transform -n "transform35" -p "|polySurface7|polySurface17";
	rename -uid "FAB99B57-481A-4A33-94D8-D6BF5B6ACB8D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform35";
	rename -uid "E71FD282-49EE-0BAE-2423-1AA6A7478974";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform25" -p "|polySurface7";
	rename -uid "27C6723B-42CF-7D1E-2627-6DAFA4DBD9D7";
	setAttr ".v" no;
createNode mesh -n "polySurface7Shape" -p "transform25";
	rename -uid "80216361-4337-01F8-4FE1-B5BD4F23771E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface17";
	rename -uid "FDD0E3E6-4B28-8EBC-7DA1-4CB259B0B764";
	setAttr ".rp" -type "double3" 3.1200638150179385 -1.6399696949813563 0.075966270107034883 ;
	setAttr ".sp" -type "double3" 3.1200638150179385 -1.6399696949813563 0.075966270107034883 ;
createNode transform -n "polySurface18" -p "|polySurface17";
	rename -uid "C7792D70-4F41-08D2-2300-549727D03C28";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform44" -p "polySurface18";
	rename -uid "B0C36010-4187-3202-5042-92A302624890";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform44";
	rename -uid "E7C9232E-4D46-18C6-B6B7-EAB4E7100DD8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface19" -p "|polySurface17";
	rename -uid "C9F705B8-465F-5861-8A9C-1BA314386AF1";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform42" -p "polySurface19";
	rename -uid "888F00CC-48DD-C7CC-CEB6-229D570809BE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform42";
	rename -uid "65EF25FF-4F9B-563B-5034-879D822FD144";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20" -p "|polySurface17";
	rename -uid "D1255AF0-41AF-F1DE-5253-D99657B5DFBD";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform43" -p "polySurface20";
	rename -uid "3D8C300D-4A4A-BC5C-31AB-5EAE02297D30";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform43";
	rename -uid "3842FAD7-4D23-6D90-32BA-50AE5965FD68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface21" -p "|polySurface17";
	rename -uid "F035D027-424F-C185-434B-779875E83091";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform45" -p "polySurface21";
	rename -uid "34D8B63D-4FD7-04C6-2ACE-B2B4E2663AC9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform45";
	rename -uid "F09577EB-4B93-1D56-646E-E09795590BFF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface22" -p "|polySurface17";
	rename -uid "479CF70D-4CE9-1F7B-7477-A28931AF9B97";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform46" -p "|polySurface17|polySurface22";
	rename -uid "3C9959AD-4C39-40B5-577C-D5AA81393D5B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform46";
	rename -uid "200E326E-40F8-A2A0-065B-08BBCFCA456C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface23" -p "|polySurface17";
	rename -uid "30B7399D-448A-F1FE-9487-2CB5908135A3";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform37" -p "polySurface23";
	rename -uid "B5766C2D-4163-CCDC-9C77-43B5BA2F9B6B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform37";
	rename -uid "7B2AFE92-4CE9-8939-9A97-E5873B1828F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface24" -p "|polySurface17";
	rename -uid "624AB3E8-433E-0126-54B8-3D91438A599A";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform38" -p "polySurface24";
	rename -uid "12B1E839-49C2-7841-309C-C4A144DA6CE9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform38";
	rename -uid "CBBB1144-4A89-0CD3-32E2-0D8511EC66EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface25" -p "|polySurface17";
	rename -uid "843A7E3C-45BE-CB88-704A-4893501CEDB7";
	setAttr ".t" -type "double3" 0.89429415548061897 2.1073105854299614 0 ;
	setAttr ".r" -type "double3" 0 0 -14.23308734079264 ;
createNode transform -n "transform39" -p "polySurface25";
	rename -uid "0CA01DC6-4DCD-40E1-03BA-F39DFFB0176B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform39";
	rename -uid "1FC79A1B-4FD4-B3DB-F88B-52A222FE84CA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface26" -p "|polySurface17";
	rename -uid "3EA3836C-405E-AC88-B60B-958F6B69D3CA";
	setAttr ".r" -type "double3" 0 0 21.749026971496161 ;
createNode transform -n "transform40" -p "polySurface26";
	rename -uid "D00456C8-47BC-8B7D-1257-D0AB507F84CB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform40";
	rename -uid "8D55612E-49B6-A397-4313-C3A65C6D2CCB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 101 ".pt";
	setAttr ".pt[0]" -type "float3" -0.1871544 0.0996738 0 ;
	setAttr ".pt[1]" -type "float3" -0.18522429 0.10559841 0 ;
	setAttr ".pt[2]" -type "float3" -0.18369243 0.11030021 0 ;
	setAttr ".pt[3]" -type "float3" -0.18270886 0.11331878 0 ;
	setAttr ".pt[4]" -type "float3" -0.18236995 0.11435892 0 ;
	setAttr ".pt[5]" -type "float3" -0.18270886 0.11331878 0 ;
	setAttr ".pt[6]" -type "float3" -0.18369243 0.11030021 0 ;
	setAttr ".pt[7]" -type "float3" -0.18522429 0.10559841 0 ;
	setAttr ".pt[8]" -type "float3" -0.1871544 0.0996738 0 ;
	setAttr ".pt[9]" -type "float3" -0.18929404 0.093106434 0 ;
	setAttr ".pt[10]" -type "float3" -0.1914337 0.086538963 0 ;
	setAttr ".pt[11]" -type "float3" -0.19336393 0.080614544 0 ;
	setAttr ".pt[12]" -type "float3" -0.19489573 0.075912721 0 ;
	setAttr ".pt[13]" -type "float3" -0.19587927 0.072893977 0 ;
	setAttr ".pt[14]" -type "float3" -0.19621819 0.071853794 0 ;
	setAttr ".pt[15]" -type "float3" -0.19587927 0.072893977 0 ;
	setAttr ".pt[16]" -type "float3" -0.19489573 0.075912721 0 ;
	setAttr ".pt[17]" -type "float3" -0.19336393 0.080614544 0 ;
	setAttr ".pt[18]" -type "float3" -0.1914337 0.086538963 0 ;
	setAttr ".pt[19]" -type "float3" -0.18929404 0.093106434 0 ;
	setAttr ".pt[20]" -type "float3" -0.18009083 0.10445815 0 ;
	setAttr ".pt[21]" -type "float3" -0.17627794 0.11616126 0 ;
	setAttr ".pt[22]" -type "float3" -0.17325199 0.12544911 0 ;
	setAttr ".pt[23]" -type "float3" -0.1713091 0.13141213 0 ;
	setAttr ".pt[24]" -type "float3" -0.17063975 0.13346685 0 ;
	setAttr ".pt[25]" -type "float3" -0.1713091 0.13141213 0 ;
	setAttr ".pt[26]" -type "float3" -0.17325199 0.12544911 0 ;
	setAttr ".pt[27]" -type "float3" -0.17627794 0.11616126 0 ;
	setAttr ".pt[28]" -type "float3" -0.18009083 0.10445815 0 ;
	setAttr ".pt[29]" -type "float3" -0.18431737 0.091485105 0 ;
	setAttr ".pt[30]" -type "float3" -0.18854401 0.078511909 0 ;
	setAttr ".pt[31]" -type "float3" -0.19235699 0.066808604 0 ;
	setAttr ".pt[32]" -type "float3" -0.19538291 0.057521023 0 ;
	setAttr ".pt[33]" -type "float3" -0.19732563 0.051557917 0 ;
	setAttr ".pt[34]" -type "float3" -0.19799499 0.049503244 0 ;
	setAttr ".pt[35]" -type "float3" -0.19732563 0.051557917 0 ;
	setAttr ".pt[36]" -type "float3" -0.19538291 0.057521023 0 ;
	setAttr ".pt[37]" -type "float3" -0.19235699 0.066808604 0 ;
	setAttr ".pt[38]" -type "float3" -0.18854401 0.078511909 0 ;
	setAttr ".pt[39]" -type "float3" -0.18431737 0.091485105 0 ;
	setAttr ".pt[40]" -type "float3" -0.16994952 0.10788647 0 ;
	setAttr ".pt[41]" -type "float3" -0.16434783 0.12508012 0 ;
	setAttr ".pt[42]" -type "float3" -0.15990229 0.13872506 0 ;
	setAttr ".pt[43]" -type "float3" -0.15704809 0.14748573 0 ;
	setAttr ".pt[44]" -type "float3" -0.15606461 0.15050447 0 ;
	setAttr ".pt[45]" -type "float3" -0.15704809 0.14748573 0 ;
	setAttr ".pt[46]" -type "float3" -0.15990229 0.13872506 0 ;
	setAttr ".pt[47]" -type "float3" -0.16434783 0.12508012 0 ;
	setAttr ".pt[48]" -type "float3" -0.16994952 0.10788647 0 ;
	setAttr ".pt[49]" -type "float3" -0.17615904 0.088827044 0 ;
	setAttr ".pt[50]" -type "float3" -0.18236858 0.069767654 0 ;
	setAttr ".pt[51]" -type "float3" -0.18797025 0.05257405 0 ;
	setAttr ".pt[52]" -type "float3" -0.19241588 0.038929019 0 ;
	setAttr ".pt[53]" -type "float3" -0.19527011 0.030168217 0 ;
	setAttr ".pt[54]" -type "float3" -0.19625351 0.027149502 0 ;
	setAttr ".pt[55]" -type "float3" -0.19527011 0.030168217 0 ;
	setAttr ".pt[56]" -type "float3" -0.19241588 0.038929019 0 ;
	setAttr ".pt[57]" -type "float3" -0.18797025 0.05257405 0 ;
	setAttr ".pt[58]" -type "float3" -0.18236858 0.069767654 0 ;
	setAttr ".pt[59]" -type "float3" -0.17615904 0.088827044 0 ;
	setAttr ".pt[60]" -type "float3" -0.15698083 0.10987431 0 ;
	setAttr ".pt[61]" -type "float3" -0.14972822 0.13213526 0 ;
	setAttr ".pt[62]" -type "float3" -0.14397265 0.14980161 0 ;
	setAttr ".pt[63]" -type "float3" -0.14027722 0.16114397 0 ;
	setAttr ".pt[64]" -type "float3" -0.13900384 0.16505238 0 ;
	setAttr ".pt[65]" -type "float3" -0.14027722 0.16114397 0 ;
	setAttr ".pt[66]" -type "float3" -0.14397265 0.14980161 0 ;
	setAttr ".pt[67]" -type "float3" -0.14972822 0.13213526 0 ;
	setAttr ".pt[68]" -type "float3" -0.15698083 0.10987431 0 ;
	setAttr ".pt[69]" -type "float3" -0.16502032 0.085198104 0 ;
	setAttr ".pt[70]" -type "float3" -0.17305991 0.060521666 0 ;
	setAttr ".pt[71]" -type "float3" -0.18031234 0.038260929 0 ;
	setAttr ".pt[72]" -type "float3" -0.18606809 0.020594595 0 ;
	setAttr ".pt[73]" -type "float3" -0.18976341 0.0092521803 0 ;
	setAttr ".pt[74]" -type "float3" -0.1910367 0.0053437678 0 ;
	setAttr ".pt[75]" -type "float3" -0.18976341 0.0092521803 0 ;
	setAttr ".pt[76]" -type "float3" -0.18606809 0.020594595 0 ;
	setAttr ".pt[77]" -type "float3" -0.18031234 0.038260929 0 ;
	setAttr ".pt[78]" -type "float3" -0.17305991 0.060521666 0 ;
	setAttr ".pt[79]" -type "float3" -0.16502032 0.085198104 0 ;
	setAttr ".pt[80]" -type "float3" -0.14150383 0.11037304 0 ;
	setAttr ".pt[81]" -type "float3" -0.13277896 0.1371529 0 ;
	setAttr ".pt[82]" -type "float3" -0.12585489 0.15840541 0 ;
	setAttr ".pt[83]" -type "float3" -0.12140941 0.17205054 0 ;
	setAttr ".pt[84]" -type "float3" -0.11987757 0.17675225 0 ;
	setAttr ".pt[85]" -type "float3" -0.12140941 0.17205054 0 ;
	setAttr ".pt[86]" -type "float3" -0.12585489 0.15840541 0 ;
	setAttr ".pt[87]" -type "float3" -0.13277896 0.1371529 0 ;
	setAttr ".pt[88]" -type "float3" -0.14150383 0.11037304 0 ;
	setAttr ".pt[89]" -type "float3" -0.15117534 0.080687471 0 ;
	setAttr ".pt[90]" -type "float3" -0.16084699 0.051001575 0 ;
	setAttr ".pt[91]" -type "float3" -0.16957186 0.024221869 0 ;
	setAttr ".pt[92]" -type "float3" -0.17649582 0.0029693884 0 ;
	setAttr ".pt[93]" -type "float3" -0.18094136 -0.0106757 0 ;
	setAttr ".pt[94]" -type "float3" -0.18247317 -0.015377256 0 ;
	setAttr ".pt[95]" -type "float3" -0.18094136 -0.0106757 0 ;
	setAttr ".pt[96]" -type "float3" -0.17649582 0.0029693884 0 ;
	setAttr ".pt[97]" -type "float3" -0.16957186 0.024221869 0 ;
	setAttr ".pt[98]" -type "float3" -0.16084699 0.051001575 0 ;
	setAttr ".pt[99]" -type "float3" -0.15117534 0.080687471 0 ;
	setAttr ".pt[380]" -type "float3" -0.19096662 0.093651377 0 ;
createNode transform -n "polySurface27" -p "|polySurface17";
	rename -uid "C7A4A7A6-4F65-FA5A-D67B-E59AE23192F2";
	setAttr ".r" -type "double3" 0 0 21.749026971496161 ;
createNode transform -n "transform41" -p "polySurface27";
	rename -uid "1C363A4F-467A-860A-944B-F48B183D06AA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform41";
	rename -uid "4D915AB1-4691-D2B4-CE2B-EEB5DB8614D2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform36" -p "|polySurface17";
	rename -uid "687FD66E-45B9-DB4D-C932-C281348EE212";
	setAttr ".v" no;
createNode mesh -n "polySurface17Shape" -p "transform36";
	rename -uid "DCE5BE46-4A62-9F36-45BD-0181722DE1A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface22";
	rename -uid "4031E7F3-49DC-00EB-63E5-C68F3BC48847";
	setAttr ".t" -type "double3" -0.63984160745966046 -0.0071927939337279034 -0.060553774743711153 ;
	setAttr ".r" -type "double3" 0 0 9.274097968547089 ;
	setAttr ".s" -type "double3" 0.8520101109249113 0.8520101109249113 0.8520101109249113 ;
	setAttr ".rp" -type "double3" 3.0374728701818525 -0.37930217350409001 0.07596626877784729 ;
	setAttr ".sp" -type "double3" 3.0374728701818525 -0.37930217350409001 0.07596626877784729 ;
createNode transform -n "transform48" -p "|polySurface22";
	rename -uid "6AF68049-4B75-55A8-89FA-11BFCA9CC78C";
	setAttr ".v" no;
createNode mesh -n "polySurface22Shape" -p "transform48";
	rename -uid "7D2EB823-4AFB-4402-68CD-47814A0519A0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder8";
	rename -uid "052231DF-4040-03DC-E7E3-F7BB215686FF";
	setAttr ".t" -type "double3" 0.065498616947553101 1.2508152278734672 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.48437030617696147 0.88516893318990086 0.48437030617696147 ;
createNode transform -n "transform51" -p "pCylinder8";
	rename -uid "1F64E75F-4ED1-FC6F-896E-569275233E40";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform51";
	rename -uid "5B401303-4B38-5E4F-5DF6-95B6DC2AA779";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  -0.38800219 0 0.1260694 -0.33005446 
		0 0.23979849 -0.23979855 0 0.33005422 -0.12606961 0 0.38800189 -4.8633652e-008 0 
		0.407969 0.12606941 0 0.38800183 0.23979843 0 0.33005404 0.3300541 0 0.23979837 0.38800171 
		0 0.12606934 0.40796876 0 -7.2950549e-008 0.38800171 0 -0.12606959 0.33005404 0 -0.23979843 
		0.23979837 0 -0.33005422 0.12606938 0 -0.38800189 -3.6475274e-008 0 -0.407969 -0.12606947 
		0 -0.38800183 -0.23979843 0 -0.33005416 -0.3300541 0 -0.23979849 -0.38800171 0 -0.12606955 
		-0.40796876 0 -7.2950549e-008 -0.37207219 0.14910983 0.12089349 -0.31650347 0.14910983 
		0.2299531 -0.22995324 0.14910983 0.31650335 -0.12089358 0.14910983 0.37207201 -4.6637005e-008 
		0.14910983 0.39121971 0.12089351 0.14910983 0.37207198 0.22995308 0.14910983 0.31650332 
		0.31650332 0.14910983 0.22995304 0.37207198 0.14910983 0.12089343 0.39121962 0.14910983 
		-6.9955505e-008 0.37207198 0.14910983 -0.12089356 0.31650332 0.14910983 -0.2299532 
		0.22995304 0.14910983 -0.31650335 0.12089347 0.14910983 -0.37207201 -3.4977752e-008 
		0.14910983 -0.39121971 -0.12089352 0.14910983 -0.37207198 -0.22995308 0.14910983 
		-0.31650335 -0.31650332 0.14910983 -0.22995314 -0.37207198 0.14910983 -0.12089354 
		-0.39121962 0.14910983 -6.9955505e-008;
createNode transform -n "pSphere5";
	rename -uid "45EC11EC-4831-D338-F7E6-87A31A42A5BF";
	setAttr ".t" -type "double3" 1.1363160429898105 1.19429083212293 0 ;
	setAttr ".r" -type "double3" 0 0 71.647656079359123 ;
	setAttr ".s" -type "double3" 0.2599385416952637 0.2599385416952637 0.2599385416952637 ;
createNode transform -n "transform47" -p "pSphere5";
	rename -uid "40FF81A3-4E88-5027-44B9-B3A41660CF6F";
	setAttr ".v" no;
createNode mesh -n "pSphereShape5" -p "transform47";
	rename -uid "C9EEA3B5-411A-194D-9905-C1A3EF67263F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.075000002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 164 ".pt";
	setAttr ".pt[0]" -type "float3" -0.064805321 -1.0069093 0.11149073 ;
	setAttr ".pt[1]" -type "float3" -0.073852368 -0.99450517 0.10569672 ;
	setAttr ".pt[2]" -type "float3" -0.087943517 -0.97518522 0.1010986 ;
	setAttr ".pt[3]" -type "float3" -0.10569931 -0.95084018 0.098146386 ;
	setAttr ".pt[4]" -type "float3" -0.12538183 -0.92385328 0.097129181 ;
	setAttr ".pt[5]" -type "float3" -0.14506429 -0.89686698 0.098146386 ;
	setAttr ".pt[6]" -type "float3" -0.16282019 -0.87252206 0.1010986 ;
	setAttr ".pt[7]" -type "float3" -0.17691118 -0.85320187 0.10569672 ;
	setAttr ".pt[8]" -type "float3" -0.18595824 -0.84079701 0.11149073 ;
	setAttr ".pt[9]" -type "float3" -0.18907571 -0.83652282 0.11791337 ;
	setAttr ".pt[10]" -type "float3" -0.18595824 -0.84079701 0.12433608 ;
	setAttr ".pt[11]" -type "float3" -0.17691118 -0.85320187 0.13013001 ;
	setAttr ".pt[12]" -type "float3" -0.16282019 -0.87252206 0.13472816 ;
	setAttr ".pt[13]" -type "float3" -0.14506429 -0.89686698 0.13768038 ;
	setAttr ".pt[14]" -type "float3" -0.12538183 -0.92385328 0.13869764 ;
	setAttr ".pt[15]" -type "float3" -0.10569934 -0.95084018 0.13768031 ;
	setAttr ".pt[16]" -type "float3" -0.087943517 -0.97518522 0.13472816 ;
	setAttr ".pt[17]" -type "float3" -0.073852435 -0.99450517 0.13013001 ;
	setAttr ".pt[18]" -type "float3" -0.064805403 -1.0069093 0.12433608 ;
	setAttr ".pt[19]" -type "float3" -0.061687969 -1.0111836 0.11791337 ;
	setAttr ".pt[20]" -type "float3" 0.0095828166 -1.0859786 0.10522618 ;
	setAttr ".pt[21]" -type "float3" -0.0082885427 -1.0614747 0.093780831 ;
	setAttr ".pt[22]" -type "float3" -0.036123764 -1.0233102 0.084697813 ;
	setAttr ".pt[23]" -type "float3" -0.071198203 -0.97521943 0.078866124 ;
	setAttr ".pt[24]" -type "float3" -0.11007851 -0.92191136 0.07685671 ;
	setAttr ".pt[25]" -type "float3" -0.1489588 -0.86860222 0.078866124 ;
	setAttr ".pt[26]" -type "float3" -0.18403327 -0.82051176 0.084697813 ;
	setAttr ".pt[27]" -type "float3" -0.21186855 -0.78234732 0.093780831 ;
	setAttr ".pt[28]" -type "float3" -0.22973979 -0.75784403 0.10522619 ;
	setAttr ".pt[29]" -type "float3" -0.23589787 -0.74940085 0.11791337 ;
	setAttr ".pt[30]" -type "float3" -0.22973979 -0.75784403 0.13060054 ;
	setAttr ".pt[31]" -type "float3" -0.21186855 -0.78234732 0.14204586 ;
	setAttr ".pt[32]" -type "float3" -0.18403324 -0.82051176 0.15112892 ;
	setAttr ".pt[33]" -type "float3" -0.14895877 -0.86860222 0.15696055 ;
	setAttr ".pt[34]" -type "float3" -0.11007854 -0.92191136 0.15897009 ;
	setAttr ".pt[35]" -type "float3" -0.07119818 -0.97521943 0.15696055 ;
	setAttr ".pt[36]" -type "float3" -0.036123786 -1.0233101 0.15112892 ;
	setAttr ".pt[37]" -type "float3" -0.0082886284 -1.0614747 0.14204586 ;
	setAttr ".pt[38]" -type "float3" 0.0095827421 -1.0859786 0.13060054 ;
	setAttr ".pt[39]" -type "float3" 0.015740847 -1.094422 0.11791337 ;
	setAttr ".pt[40]" -type "float3" 0.090807639 -1.1597658 0.099274009 ;
	setAttr ".pt[41]" -type "float3" 0.06455218 -1.123767 0.082459241 ;
	setAttr ".pt[42]" -type "float3" 0.023658266 -1.0676974 0.069114976 ;
	setAttr ".pt[43]" -type "float3" -0.027871244 -0.9970454 0.060547352 ;
	setAttr ".pt[44]" -type "float3" -0.084992059 -0.91872722 0.057595223 ;
	setAttr ".pt[45]" -type "float3" -0.14211282 -0.8404091 0.060547363 ;
	setAttr ".pt[46]" -type "float3" -0.19364232 -0.76975715 0.069114976 ;
	setAttr ".pt[47]" -type "float3" -0.23453617 -0.71368808 0.082459241 ;
	setAttr ".pt[48]" -type "float3" -0.26079157 -0.6776889 0.099274009 ;
	setAttr ".pt[49]" -type "float3" -0.26983866 -0.66528481 0.11791337 ;
	setAttr ".pt[50]" -type "float3" -0.26079157 -0.6776889 0.13655268 ;
	setAttr ".pt[51]" -type "float3" -0.23453614 -0.71368808 0.15336749 ;
	setAttr ".pt[52]" -type "float3" -0.19364226 -0.76975715 0.16671175 ;
	setAttr ".pt[53]" -type "float3" -0.14211282 -0.8404091 0.17527938 ;
	setAttr ".pt[54]" -type "float3" -0.084992073 -0.91872722 0.17823157 ;
	setAttr ".pt[55]" -type "float3" -0.027871259 -0.9970454 0.17527938 ;
	setAttr ".pt[56]" -type "float3" 0.023658147 -1.0676974 0.16671175 ;
	setAttr ".pt[57]" -type "float3" 0.064552031 -1.1237668 0.15336749 ;
	setAttr ".pt[58]" -type "float3" 0.090807565 -1.1597656 0.13655268 ;
	setAttr ".pt[59]" -type "float3" 0.099854626 -1.1721703 0.11791337 ;
	setAttr ".pt[280]" -type "float3" 0.16190398 0.52183414 0.010150541 ;
	setAttr ".pt[281]" -type "float3" 0.13847935 0.52183414 -0.035822835 ;
	setAttr ".pt[282]" -type "float3" 0.10199468 0.52183414 -0.07230749 ;
	setAttr ".pt[283]" -type "float3" 0.056021266 0.52183414 -0.095732063 ;
	setAttr ".pt[284]" -type "float3" 0.0050594127 0.52183414 -0.10380365 ;
	setAttr ".pt[285]" -type "float3" -0.045902457 0.52183414 -0.095732056 ;
	setAttr ".pt[286]" -type "float3" -0.091875792 0.52183414 -0.072307467 ;
	setAttr ".pt[287]" -type "float3" -0.12836044 0.52183414 -0.035822779 ;
	setAttr ".pt[288]" -type "float3" -0.15178508 0.52183414 0.010150554 ;
	setAttr ".pt[289]" -type "float3" -0.15985663 0.52183414 0.061112404 ;
	setAttr ".pt[290]" -type "float3" -0.15178508 0.52183414 0.11207432 ;
	setAttr ".pt[291]" -type "float3" -0.12836044 0.52183414 0.15804762 ;
	setAttr ".pt[292]" -type "float3" -0.091875769 0.52183414 0.19453235 ;
	setAttr ".pt[293]" -type "float3" -0.045902438 0.52183414 0.21795692 ;
	setAttr ".pt[294]" -type "float3" 0.0050594108 0.52183414 0.22602843 ;
	setAttr ".pt[295]" -type "float3" 0.056021243 0.52183414 0.21795692 ;
	setAttr ".pt[296]" -type "float3" 0.10199457 0.52183414 0.19453235 ;
	setAttr ".pt[297]" -type "float3" 0.13847928 0.52183414 0.15804762 ;
	setAttr ".pt[298]" -type "float3" 0.16190386 0.52183414 0.11207432 ;
	setAttr ".pt[299]" -type "float3" 0.16997541 0.52183414 0.061112404 ;
	setAttr ".pt[300]" -type "float3" 0.13543706 0.54560298 0.018750189 ;
	setAttr ".pt[301]" -type "float3" 0.11596523 0.54560298 -0.019465389 ;
	setAttr ".pt[302]" -type "float3" 0.085637197 0.54560298 -0.049793411 ;
	setAttr ".pt[303]" -type "float3" 0.047421664 0.54560298 -0.069265172 ;
	setAttr ".pt[304]" -type "float3" 0.0050594127 0.54560298 -0.07597468 ;
	setAttr ".pt[305]" -type "float3" -0.037302829 0.54560298 -0.069265157 ;
	setAttr ".pt[306]" -type "float3" -0.07551837 0.54560298 -0.049793392 ;
	setAttr ".pt[307]" -type "float3" -0.10584639 0.54560298 -0.019465337 ;
	setAttr ".pt[308]" -type "float3" -0.12531815 0.54560298 0.018750191 ;
	setAttr ".pt[309]" -type "float3" -0.13202767 0.54560298 0.061112404 ;
	setAttr ".pt[310]" -type "float3" -0.12531815 0.54560298 0.10347467 ;
	setAttr ".pt[311]" -type "float3" -0.10584638 0.54560298 0.14169019 ;
	setAttr ".pt[312]" -type "float3" -0.075518347 0.54560298 0.1720182 ;
	setAttr ".pt[313]" -type "float3" -0.037302818 0.54560298 0.19149001 ;
	setAttr ".pt[314]" -type "float3" 0.0050594108 0.54560298 0.19819945 ;
	setAttr ".pt[315]" -type "float3" 0.047421653 0.54560298 0.19149001 ;
	setAttr ".pt[316]" -type "float3" 0.085637182 0.54560298 0.1720182 ;
	setAttr ".pt[317]" -type "float3" 0.11596519 0.54560298 0.14169019 ;
	setAttr ".pt[318]" -type "float3" 0.13543695 0.54560298 0.10347467 ;
	setAttr ".pt[319]" -type "float3" 0.14214645 0.54560298 0.061112404 ;
	setAttr ".pt[320]" -type "float3" 0.10575978 0.56472427 0.028392868 ;
	setAttr ".pt[321]" -type "float3" 0.090720303 0.56472427 -0.0011238297 ;
	setAttr ".pt[322]" -type "float3" 0.0672957 0.56472427 -0.024548426 ;
	setAttr ".pt[323]" -type "float3" 0.037778951 0.56472427 -0.039587945 ;
	setAttr ".pt[324]" -type "float3" 0.0050594127 0.56472427 -0.044770207 ;
	setAttr ".pt[325]" -type "float3" -0.027660113 0.56472427 -0.039587941 ;
	setAttr ".pt[326]" -type "float3" -0.057176832 0.56472427 -0.024548411 ;
	setAttr ".pt[327]" -type "float3" -0.080601409 0.56472427 -0.0011238256 ;
	setAttr ".pt[328]" -type "float3" -0.095640935 0.56472427 0.028392868 ;
	setAttr ".pt[329]" -type "float3" -0.10082319 0.56472427 0.061112404 ;
	setAttr ".pt[330]" -type "float3" -0.095640935 0.56472427 0.093832001 ;
	setAttr ".pt[331]" -type "float3" -0.080601402 0.56472427 0.12334871 ;
	setAttr ".pt[332]" -type "float3" -0.057176828 0.56472427 0.14677323 ;
	setAttr ".pt[333]" -type "float3" -0.027660105 0.56472427 0.16181278 ;
	setAttr ".pt[334]" -type "float3" 0.0050594108 0.56472427 0.16699508 ;
	setAttr ".pt[335]" -type "float3" 0.037778925 0.56472427 0.16181278 ;
	setAttr ".pt[336]" -type "float3" 0.067295633 0.56472427 0.14677323 ;
	setAttr ".pt[337]" -type "float3" 0.090720221 0.56472427 0.12334868 ;
	setAttr ".pt[338]" -type "float3" 0.10575973 0.56472427 0.093832001 ;
	setAttr ".pt[339]" -type "float3" 0.11094203 0.56472427 0.061112404 ;
	setAttr ".pt[340]" -type "float3" 0.073602997 0.57873034 0.038841285 ;
	setAttr ".pt[341]" -type "float3" 0.063366078 0.57873034 0.018750189 ;
	setAttr ".pt[342]" -type "float3" 0.047421668 0.57873034 0.0028057806 ;
	setAttr ".pt[343]" -type "float3" 0.027330577 0.57873034 -0.007431143 ;
	setAttr ".pt[344]" -type "float3" 0.0050594127 0.57873034 -0.010958542 ;
	setAttr ".pt[345]" -type "float3" -0.017211735 0.57873034 -0.007431142 ;
	setAttr ".pt[346]" -type "float3" -0.037302826 0.57873034 0.0028057809 ;
	setAttr ".pt[347]" -type "float3" -0.053247217 0.57873034 0.018750191 ;
	setAttr ".pt[348]" -type "float3" -0.06348414 0.57873034 0.0388413 ;
	setAttr ".pt[349]" -type "float3" -0.067011528 0.57873034 0.061112404 ;
	setAttr ".pt[350]" -type "float3" -0.06348414 0.57873034 0.083383515 ;
	setAttr ".pt[351]" -type "float3" -0.053247213 0.57873034 0.10347467 ;
	setAttr ".pt[352]" -type "float3" -0.037302822 0.57873034 0.11941908 ;
	setAttr ".pt[353]" -type "float3" -0.01721173 0.57873034 0.12965593 ;
	setAttr ".pt[354]" -type "float3" 0.0050594127 0.57873034 0.13318338 ;
	setAttr ".pt[355]" -type "float3" 0.027330564 0.57873034 0.12965593 ;
	setAttr ".pt[356]" -type "float3" 0.047421653 0.57873034 0.11941908 ;
	setAttr ".pt[357]" -type "float3" 0.063366018 0.57873034 0.10347467 ;
	setAttr ".pt[358]" -type "float3" 0.073602937 0.57873034 0.083383515 ;
	setAttr ".pt[359]" -type "float3" 0.077130355 0.57873034 0.061112404 ;
	setAttr ".pt[360]" -type "float3" 0.039758418 0.587273 0.049838021 ;
	setAttr ".pt[361]" -type "float3" 0.034576144 0.587273 0.03966723 ;
	setAttr ".pt[362]" -type "float3" 0.026504565 0.587273 0.031595714 ;
	setAttr ".pt[363]" -type "float3" 0.016333805 0.587273 0.026413457 ;
	setAttr ".pt[364]" -type "float3" 0.0050594127 0.587273 0.024627773 ;
	setAttr ".pt[365]" -type "float3" -0.0062149665 0.587273 0.026413457 ;
	setAttr ".pt[366]" -type "float3" -0.016385734 0.587273 0.031595714 ;
	setAttr ".pt[367]" -type "float3" -0.024457293 0.587273 0.039667308 ;
	setAttr ".pt[368]" -type "float3" -0.029639553 0.587273 0.049838021 ;
	setAttr ".pt[369]" -type "float3" -0.031425245 0.587273 0.061112404 ;
	setAttr ".pt[370]" -type "float3" -0.029639553 0.587273 0.072386757 ;
	setAttr ".pt[371]" -type "float3" -0.024457293 0.587273 0.082557634 ;
	setAttr ".pt[372]" -type "float3" -0.016385728 0.587273 0.090629101 ;
	setAttr ".pt[373]" -type "float3" -0.0062149614 0.587273 0.095811427 ;
	setAttr ".pt[374]" -type "float3" 0.0050594127 0.587273 0.09759704 ;
	setAttr ".pt[375]" -type "float3" 0.016333798 0.587273 0.095811427 ;
	setAttr ".pt[376]" -type "float3" 0.026504558 0.587273 0.090629101 ;
	setAttr ".pt[377]" -type "float3" 0.034576125 0.587273 0.082557499 ;
	setAttr ".pt[378]" -type "float3" 0.039758388 0.587273 0.072386757 ;
	setAttr ".pt[379]" -type "float3" 0.041544076 0.587273 0.061112404 ;
	setAttr ".pt[380]" -type "float3" -0.13052514 -0.92450589 0.11791337 ;
	setAttr ".pt[381]" -type "float3" 0.0050594127 0.59014434 0.061112404 ;
createNode transform -n "polySurface28";
	rename -uid "7F504748-4796-6988-7654-2EB268F40AD9";
	setAttr ".rp" -type "double3" 2.0529873237139542 -0.39052865781636781 0.015412494034136137 ;
	setAttr ".sp" -type "double3" 2.0529873237139542 -0.39052865781636781 0.015412494034136137 ;
createNode transform -n "transform50" -p "polySurface28";
	rename -uid "B7E1B431-40DD-0C86-618A-4DA2479B2429";
	setAttr ".v" no;
createNode mesh -n "polySurface22Shape" -p "transform50";
	rename -uid "F1393E0C-4082-CED3-8039-EFB6E54E413A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29";
	rename -uid "36847FAB-41BC-346A-5303-93BF673AA264";
	setAttr ".t" -type "double3" -4.1429180498746643 -0.0099208698803815998 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 2.0529873237139542 -0.39052865781636781 0.015412494034136137 ;
	setAttr ".sp" -type "double3" 2.0529873237139542 -0.39052865781636781 0.015412494034136137 ;
createNode transform -n "transform52" -p "polySurface29";
	rename -uid "7F99BF28-453D-7093-64B9-88979B065D2E";
	setAttr ".v" no;
createNode mesh -n "polySurface22Shape29" -p "transform52";
	rename -uid "7BE4F841-4DA3-2CB3-4FE0-1385AC2B7945";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1459]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1683 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.50788927 0.25 0.50629675
		 0 0.625 0 0.625 0.25 0.50502723 0.5 0.625 0.5 0.51462173 0.75 0.625 0.75 0.50629675
		 1 0.625 1 0.875 0 0.875 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.375 0.75 0.375
		 1 0.375 0.5 0.50788927 0.25 0.50629675 0 0.625 0 0.625 0.25 0.50502723 0.5 0.625
		 0.5 0.51462173 0.75 0.625 0.75 0.50629675 1 0.625 1 0.875 0 0.875 0.25 0.125 0 0.375
		 0 0.375 0.25 0.125 0.25 0.375 0.75 0.375 1 0.375 0.5 0 0.050000001 0.050000001 0.050000001
		 0.050000001 0.1 0 0.1 0.1 0.050000001 0.1 0.1 0.15000001 0.050000001 0.15000001 0.1
		 0.2 0.050000001 0.2 0.1 0.25 0.050000001 0.25 0.1 0.30000001 0.050000001 0.30000001
		 0.1 0.35000002 0.050000001 0.35000002 0.1 0.40000004 0.050000001 0.40000004 0.1 0.45000005
		 0.050000001 0.45000005 0.1 0.50000006 0.050000001 0.50000006 0.1 0.55000007 0.050000001
		 0.55000007 0.1 0.60000008 0.050000001 0.60000008 0.1 0.6500001 0.050000001 0.6500001
		 0.1 0.70000011 0.050000001 0.70000011 0.1 0.75000012 0.050000001 0.75000012 0.1 0.80000013
		 0.050000001 0.80000013 0.1 0.85000014 0.050000001 0.85000014 0.1 0.90000015 0.050000001
		 0.90000015 0.1 0.95000017 0.050000001 0.95000017 0.1 1.000000119209 0.050000001 1.000000119209
		 0.1 0.050000001 0.15000001 0 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0.050000001 0.30000001 0 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0.050000001 0.35000002 0 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0.050000001 0.40000004 0 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0.050000001 0.45000005 0 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0.050000001 0.50000006 0 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0.050000001 0.55000007 0 0.55000007;
	setAttr ".uvst[0].uvsp[250:499]" 0.1 0.55000007 0.15000001 0.55000007 0.2 0.55000007
		 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004 0.55000007
		 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008 0.55000007
		 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013 0.55000007
		 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0.050000001 0.60000008 0 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008 0.95000017 0.60000008 1.000000119209
		 0.60000008 0.050000001 0.6500001 0 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2
		 0.6500001 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001
		 0.45000005 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001
		 0.6500001 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001
		 0.85000014 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001
		 0.050000001 0.70000011 0 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011
		 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011
		 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011
		 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011
		 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209
		 0.70000011 0.050000001 0.75000012 0 0.75000012 0.1 0.75000012 0.15000001 0.75000012
		 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004
		 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008
		 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013
		 0.75000012 0.85000014 0.75000012 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209
		 0.75000012 0.050000001 0.80000013 0 0.80000013 0.1 0.80000013 0.15000001 0.80000013
		 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004
		 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008
		 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013
		 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209
		 0.80000013 0.050000001 0.85000014 0 0.85000014 0.1 0.85000014 0.15000001 0.85000014
		 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209
		 0.85000014 0.050000001 0.90000015 0 0.90000015 0.1 0.90000015 0.15000001 0.90000015
		 0.2 0.90000015 0.25 0.90000015 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004
		 0.90000015 0.45000005 0.90000015 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008
		 0.90000015 0.6500001 0.90000015 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013
		 0.90000015 0.85000014 0.90000015 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209
		 0.90000015 0.050000001 0.95000017 0 0.95000017 0.1 0.95000017 0.15000001 0.95000017
		 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004
		 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008
		 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013
		 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209
		 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002
		 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001
		 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875 0 0.92500001 0 0.97500002 0 0.025
		 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001
		 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004
		 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002 1 0.50788927 0.25 0.50629675 0 0.625
		 0 0.625 0.25 0.50502723 0.5 0.625 0.5 0.51462173 0.75 0.625 0.75 0.50629675 1 0.625
		 1 0.875 0 0.875 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.375 0.75 0.375 1 0.375
		 0.5 0.50788927 0.25 0.50629675 0 0.625 0 0.625 0.25;
	setAttr ".uvst[0].uvsp[500:749]" 0.50502723 0.5 0.625 0.5 0.51462173 0.75 0.625
		 0.75 0.50629675 1 0.625 1 0.875 0 0.875 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25
		 0.375 0.75 0.375 1 0.375 0.5 0.375 0.62566131 0.38749999 0.62975377 0.38749999 0.68843985
		 0.375 0.68843985 0.39999998 0.63029772 0.39999998 0.68843985 0.41249996 0.62803346
		 0.41249996 0.68843985 0.42499995 0.63037747 0.42499995 0.68843985 0.43749994 0.63372368
		 0.43749994 0.68843985 0.44999993 0.63641351 0.44999993 0.68843985 0.46249992 0.63818419
		 0.46249992 0.68843985 0.4749999 0.63886201 0.4749999 0.68843985 0.48749989 0.63838083
		 0.48749989 0.68843985 0.49999988 0.63678759 0.49999988 0.68843985 0.51249987 0.63423836
		 0.51249987 0.68843985 0.52499986 0.63526314 0.52499986 0.68843985 0.53749985 0.63391989
		 0.53749985 0.68843985 0.54999983 0.63442332 0.54999983 0.68843985 0.56249982 0.63130039
		 0.56249982 0.68843985 0.57499981 0.62941426 0.57499981 0.68843985 0.5874998 0.62595451
		 0.5874998 0.68843985 0.59999979 0.6236639 0.59999979 0.68843985 0.61249977 0.62356275
		 0.61249977 0.68843985 0.62499976 0.62566131 0.62499976 0.68843985 0.62640899 0.064408496
		 0.64860266 0.10796607 0.5 0.15000001 0.59184152 0.029841021 0.54828393 0.0076473355
		 0.5 -7.4505806e-008 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526
		 0.3513974 0.10796608 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146
		 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146
		 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.6486026 0.89203393
		 0.62640893 0.93559146 0.5 0.83749998 0.59184146 0.97015893 0.54828387 0.9923526 0.5
		 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393
		 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107
		 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101
		 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375 0.58749986 0.38770431
		 0.59999979 0.38830107 0.61249977 0.38595217 0.62499976 0.38256419 0.375 0.38256419
		 0.38749999 0.38771546 0.39999998 0.39446956 0.41249996 0.39091039 0.42499998 0.39282447
		 0.43749997 0.39524305 0.44999993 0.39529002 0.46249992 0.39980191 0.4749999 0.39914191
		 0.48749989 0.39873752 0.49999988 0.39601022 0.51249987 0.39938706 0.52499986 0.39597398
		 0.53749985 0.39277267 0.54999983 0.39387321 0.56249982 0.38923782 0.57499981 0.39102533
		 0.43749994 0.3125 0.44999993 0.3125 0.46249992 0.3125 0.4749999 0.3125 0.48749989
		 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.54999983
		 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.61249977
		 0.3125 0.62499976 0.3125 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125 0.41249996
		 0.3125 0.42499995 0.3125 0 0.050000001 0.050000001 0.050000001 0.050000001 0.1 0
		 0.1 0.1 0.050000001 0.1 0.1 0.15000001 0.050000001 0.15000001 0.1 0.2 0.050000001
		 0.2 0.1 0.25 0.050000001 0.25 0.1 0.30000001 0.050000001 0.30000001 0.1 0.35000002
		 0.050000001 0.35000002 0.1 0.40000004 0.050000001 0.40000004 0.1 0.45000005 0.050000001
		 0.45000005 0.1 0.50000006 0.050000001 0.50000006 0.1 0.55000007 0.050000001 0.55000007
		 0.1 0.60000008 0.050000001 0.60000008 0.1 0.6500001 0.050000001 0.6500001 0.1 0.70000011
		 0.050000001 0.70000011 0.1 0.75000012 0.050000001 0.75000012 0.1 0.80000013 0.050000001
		 0.80000013 0.1 0.85000014 0.050000001 0.85000014 0.1 0.90000015 0.050000001 0.90000015
		 0.1 0.95000017 0.050000001 0.95000017 0.1 1.000000119209 0.050000001 1.000000119209
		 0.1 0.050000001 0.15000001 0 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0.050000001 0.30000001 0 0.30000001 0.1 0.30000001 0.15000001 0.30000001;
	setAttr ".uvst[0].uvsp[750:999]" 0.2 0.30000001 0.25 0.30000001 0.30000001
		 0.30000001 0.35000002 0.30000001 0.40000004 0.30000001 0.45000005 0.30000001 0.50000006
		 0.30000001 0.55000007 0.30000001 0.60000008 0.30000001 0.6500001 0.30000001 0.70000011
		 0.30000001 0.75000012 0.30000001 0.80000013 0.30000001 0.85000014 0.30000001 0.90000015
		 0.30000001 0.95000017 0.30000001 1.000000119209 0.30000001 0.050000001 0.35000002
		 0 0.35000002 0.1 0.35000002 0.15000001 0.35000002 0.2 0.35000002 0.25 0.35000002
		 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004 0.35000002 0.45000005 0.35000002
		 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008 0.35000002 0.6500001 0.35000002
		 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013 0.35000002 0.85000014 0.35000002
		 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209 0.35000002 0.050000001
		 0.40000004 0 0.40000004 0.1 0.40000004 0.15000001 0.40000004 0.2 0.40000004 0.25
		 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004 0.40000004 0.45000005
		 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008 0.40000004 0.6500001
		 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013 0.40000004 0.85000014
		 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209 0.40000004
		 0.050000001 0.45000005 0 0.45000005 0.1 0.45000005 0.15000001 0.45000005 0.2 0.45000005
		 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004 0.45000005
		 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008 0.45000005
		 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013 0.45000005
		 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0.050000001 0.50000006 0 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0.050000001 0.55000007 0 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0.050000001 0.60000008 0 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008 0.95000017 0.60000008 1.000000119209
		 0.60000008 0.050000001 0.6500001 0 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2
		 0.6500001 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001
		 0.45000005 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001
		 0.6500001 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001
		 0.85000014 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001
		 0.050000001 0.70000011 0 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011
		 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011
		 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011
		 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011
		 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209
		 0.70000011 0.050000001 0.75000012 0 0.75000012 0.1 0.75000012 0.15000001 0.75000012
		 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004
		 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008
		 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013
		 0.75000012 0.85000014 0.75000012 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209
		 0.75000012 0.050000001 0.80000013 0 0.80000013 0.1 0.80000013 0.15000001 0.80000013
		 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004
		 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008
		 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013
		 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209
		 0.80000013 0.050000001 0.85000014 0 0.85000014 0.1 0.85000014 0.15000001 0.85000014
		 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004
		 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008
		 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013
		 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209
		 0.85000014 0.050000001 0.90000015 0 0.90000015;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015
		 0.25 0.90000015 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015
		 0.45000005 0.90000015 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015
		 0.6500001 0.90000015 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015
		 0.85000014 0.90000015 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209
		 0.90000015 0.050000001 0.95000017 0 0.95000017 0.1 0.95000017 0.15000001 0.95000017
		 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004
		 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008
		 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013
		 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209
		 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002
		 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001
		 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875 0 0.92500001 0 0.97500002 0 0.025
		 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001
		 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004
		 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002 1 0.375 0.62566131 0.38749999 0.62975377
		 0.38749999 0.68843985 0.375 0.68843985 0.39999998 0.63029772 0.39999998 0.68843985
		 0.41249996 0.62803346 0.41249996 0.68843985 0.42499995 0.63037747 0.42499995 0.68843985
		 0.43749994 0.63372368 0.43749994 0.68843985 0.44999993 0.63641351 0.44999993 0.68843985
		 0.46249992 0.63818419 0.46249992 0.68843985 0.4749999 0.63886201 0.4749999 0.68843985
		 0.48749989 0.63838083 0.48749989 0.68843985 0.49999988 0.63678759 0.49999988 0.68843985
		 0.51249987 0.63423836 0.51249987 0.68843985 0.52499986 0.63526314 0.52499986 0.68843985
		 0.53749985 0.63391989 0.53749985 0.68843985 0.54999983 0.63442332 0.54999983 0.68843985
		 0.56249982 0.63130039 0.56249982 0.68843985 0.57499981 0.62941426 0.57499981 0.68843985
		 0.5874998 0.62595451 0.5874998 0.68843985 0.59999979 0.6236639 0.59999979 0.68843985
		 0.61249977 0.62356275 0.61249977 0.68843985 0.62499976 0.62566131 0.62499976 0.68843985
		 0.62640899 0.064408496 0.64860266 0.10796607 0.5 0.15000001 0.59184152 0.029841021
		 0.54828393 0.0076473355 0.5 -7.4505806e-008 0.45171607 0.0076473504 0.40815851 0.029841051
		 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997 0.15625 0.3513974 0.20453392
		 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387
		 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625
		 0.15625 0.6486026 0.89203393 0.62640893 0.93559146 0.5 0.83749998 0.59184146 0.97015893
		 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146
		 0.3513974 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854
		 0.40815851 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734
		 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375
		 0.58749986 0.38770431 0.59999979 0.38830107 0.61249977 0.38595217 0.62499976 0.38256419
		 0.375 0.38256419 0.38749999 0.38771546 0.39999998 0.39446956 0.41249996 0.39091039
		 0.42499998 0.39282447 0.43749997 0.39524305 0.44999993 0.39529002 0.46249992 0.39980191
		 0.4749999 0.39914191 0.48749989 0.39873752 0.49999988 0.39601022 0.51249987 0.39938706
		 0.52499986 0.39597398 0.53749985 0.39277267 0.54999983 0.39387321 0.56249982 0.38923782
		 0.57499981 0.39102533 0.43749994 0.3125 0.44999993 0.3125 0.46249992 0.3125 0.4749999
		 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986 0.3125 0.53749985
		 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.59999979
		 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.50788927 0.25 0.50629675 0 0.625 0 0.625
		 0.25 0.50502723 0.5 0.625 0.5 0.51462173 0.75 0.625 0.75 0.50629675 1 0.625 1 0.875
		 0 0.875 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.375 0.75 0.375 1 0.375 0.5 0.50788927
		 0.25 0.50629675 0 0.625 0 0.625 0.25 0.50502723 0.5 0.625 0.5 0.51462173 0.75 0.625
		 0.75 0.50629675 1 0.625 1 0.875 0 0.875 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25
		 0.375 0.75 0.375 1 0.375 0.5 0 0.050000001 0.050000001 0.050000001 0.050000001 0.1
		 0 0.1 0.1 0.050000001 0.1 0.1;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.15000001 0.050000001 0.15000001 0.1 0.2
		 0.050000001 0.2 0.1 0.25 0.050000001 0.25 0.1 0.30000001 0.050000001 0.30000001 0.1
		 0.35000002 0.050000001 0.35000002 0.1 0.40000004 0.050000001 0.40000004 0.1 0.45000005
		 0.050000001 0.45000005 0.1 0.50000006 0.050000001 0.50000006 0.1 0.55000007 0.050000001
		 0.55000007 0.1 0.60000008 0.050000001 0.60000008 0.1 0.6500001 0.050000001 0.6500001
		 0.1 0.70000011 0.050000001 0.70000011 0.1 0.75000012 0.050000001 0.75000012 0.1 0.80000013
		 0.050000001 0.80000013 0.1 0.85000014 0.050000001 0.85000014 0.1 0.90000015 0.050000001
		 0.90000015 0.1 0.95000017 0.050000001 0.95000017 0.1 1.000000119209 0.050000001 1.000000119209
		 0.1 0.050000001 0.15000001 0 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0.050000001 0.2 0 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0.050000001 0.25 0 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0.050000001 0.30000001 0 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0.050000001 0.35000002 0 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0.050000001 0.40000004 0 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0.050000001 0.45000005 0 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0.050000001 0.50000006 0 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0.050000001 0.55000007 0 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0.050000001 0.60000008 0 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008 0.95000017 0.60000008 1.000000119209
		 0.60000008 0.050000001 0.6500001 0 0.6500001 0.1 0.6500001 0.15000001 0.6500001;
	setAttr ".uvst[0].uvsp[1500:1682]" 0.2 0.6500001 0.25 0.6500001 0.30000001 0.6500001
		 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005 0.6500001 0.50000006 0.6500001
		 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001 0.6500001 0.70000011 0.6500001
		 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014 0.6500001 0.90000015 0.6500001
		 0.95000017 0.6500001 1.000000119209 0.6500001 0.050000001 0.70000011 0 0.70000011
		 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011
		 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011
		 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011
		 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011
		 0.95000017 0.70000011 1.000000119209 0.70000011 0.050000001 0.75000012 0 0.75000012
		 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012 0.30000001 0.75000012
		 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012 0.50000006 0.75000012
		 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012 0.70000011 0.75000012
		 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012 0.90000015 0.75000012
		 0.95000017 0.75000012 1.000000119209 0.75000012 0.050000001 0.80000013 0 0.80000013
		 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013 0.30000001 0.80000013
		 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013 0.50000006 0.80000013
		 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013 0.70000011 0.80000013
		 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013 0.90000015 0.80000013
		 0.95000017 0.80000013 1.000000119209 0.80000013 0.050000001 0.85000014 0 0.85000014
		 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014 0.30000001 0.85000014
		 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014 0.50000006 0.85000014
		 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014 0.70000011 0.85000014
		 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014 0.90000015 0.85000014
		 0.95000017 0.85000014 1.000000119209 0.85000014 0.050000001 0.90000015 0 0.90000015
		 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015 0.30000001 0.90000015
		 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015 0.50000006 0.90000015
		 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015 0.70000011 0.90000015
		 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015 0.90000015 0.90000015
		 0.95000017 0.90000015 1.000000119209 0.90000015 0.050000001 0.95000017 0 0.95000017
		 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017 0.30000001 0.95000017
		 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017 0.50000006 0.95000017
		 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017 0.70000011 0.95000017
		 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017 0.90000015 0.95000017
		 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003 0 0.125 0 0.175
		 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999 0 0.52500004
		 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999 0 0.875
		 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001 1 0.27500001
		 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999 1 0.625
		 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001 1 0.97500002
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1382 ".vt";
	setAttr ".vt[0:165]"  2.66518903 -1.94455457 0.19773307 2.54190588 -2.081770897 0.38992161
		 2.67003822 -1.88866532 0.19773307 2.54675555 -2.025881529 0.38992161 2.72902012 -1.89378309 0.23191424
		 2.60573721 -2.030999184 0.42410278 2.72417068 -1.94967234 0.23191424 2.60088778 -2.086888313 0.42410278
		 2.58419228 -1.881217 0.34698141 2.58037186 -1.93719506 0.34519285 2.63397551 -1.94184625 0.38872385
		 2.64502263 -1.88649511 0.37794822 2.57965207 -1.93713284 -0.0079168566 2.34582424 -2.064757347 -0.0079168566
		 2.58450127 -1.88124347 -0.0079168566 2.35067368 -2.008867979 -0.0079168566 2.58450127 -1.88124347 0.060445443
		 2.35067368 -2.008867979 0.060445443 2.57965207 -1.93713284 0.060445443 2.34582424 -2.064757347 0.060445443
		 2.41280937 -1.86634636 -0.0079168566 2.41001773 -1.92241418 -0.0079168566 2.39926171 -1.92148089 0.060445443
		 2.41650677 -1.86666703 0.060445443 2.84729099 -2.039031982 0.013627067 2.84150386 -2.038529634 0.0022268593
		 2.83249044 -2.037747622 -0.0068203956 2.8211329 -2.036762238 -0.012629092 2.80854297 -2.035669804 -0.014630631
		 2.79595256 -2.03457737 -0.012629088 2.78459525 -2.033591986 -0.0068203919 2.77558208 -2.032809973 0.0022268668
		 2.7697947 -2.032308102 0.013627075 2.76780128 -2.03213501 0.026264302 2.7697947 -2.032308102 0.038901523
		 2.77558208 -2.032809973 0.050301731 2.78459525 -2.033591986 0.059348986 2.79595256 -2.03457737 0.065157667
		 2.80854297 -2.035669804 0.067159206 2.8211329 -2.036762238 0.065157667 2.83249044 -2.037747622 0.059348986
		 2.84150386 -2.038529634 0.050301731 2.84729099 -2.039031982 0.038901508 2.84928489 -2.039205074 0.026264302
		 2.88536716 -2.039050579 0.0013010092 2.87393594 -2.038058758 -0.021218693 2.85613108 -2.036513567 -0.039090432
		 2.83369565 -2.034567118 -0.050564796 2.80882573 -2.032408953 -0.054518584 2.78395605 -2.030251265 -0.050564788
		 2.76152039 -2.028304815 -0.039090417 2.74371552 -2.026759863 -0.02121868 2.73228407 -2.025768042 0.0013010204
		 2.72834516 -2.025426149 0.026264302 2.73228407 -2.025768042 0.051227577 2.74371552 -2.026759863 0.07374727
		 2.76152039 -2.028304815 0.091619 2.78395605 -2.030251265 0.10309337 2.80882573 -2.032408953 0.10704714
		 2.83369565 -2.034567118 0.10309336 2.8561306 -2.036513567 0.091618985 2.87393594 -2.038058758 0.073747255
		 2.88536716 -2.039050579 0.05122757 2.88930607 -2.039392233 0.026264302 2.92174006 -2.036821365 -0.010410365
		 2.90494561 -2.035363913 -0.043495066 2.87878799 -2.033094406 -0.069751233 2.8458271 -2.030234337 -0.086608708
		 2.80928969 -2.027064085 -0.092417404 2.77275181 -2.023893833 -0.086608708 2.73979163 -2.021034002 -0.069751203
		 2.7136333 -2.018764257 -0.04349504 2.69683909 -2.017307043 -0.010410354 2.6910522 -2.016804934 0.026264302
		 2.69683909 -2.017307043 0.062938951 2.7136333 -2.018764257 0.096023634 2.73979163 -2.021034002 0.12227978
		 2.77275181 -2.023893833 0.13913725 2.80928969 -2.027064085 0.14494593 2.8458271 -2.030234337 0.13913725
		 2.87878799 -2.033094406 0.12227978 2.90494561 -2.035363913 0.096023619 2.92174006 -2.036821365 0.062938936
		 2.92752671 -2.037323475 0.026264302 2.95551324 -2.032398224 -0.021218693 2.9337697 -2.030511379 -0.064053714
		 2.89990282 -2.027573109 -0.098047785 2.85722852 -2.023870468 -0.11987332 2.8099227 -2.019765854 -0.12739387
		 2.76261735 -2.01566124 -0.1198733 2.71994281 -2.011958599 -0.098047748 2.68607593 -2.0090198517 -0.064053684
		 2.66433215 -2.0071332455 -0.021218674 2.65683985 -2.0064833164 0.026264302 2.66433215 -2.0071332455 0.073747255
		 2.68607593 -2.0090198517 0.11658227 2.71994281 -2.011958599 0.15057634 2.76261783 -2.01566124 0.17240183
		 2.8099227 -2.019765854 0.1799224 2.85722756 -2.023869991 0.17240183 2.89990282 -2.027573109 0.15057634
		 2.93376946 -2.030511618 0.11658226 2.95551324 -2.032398224 0.073747255 2.96300578 -2.03304863 0.026264302
		 2.98585534 -2.025891542 -0.030857831 2.95969725 -2.023622274 -0.082388446 2.9189558 -2.020087004 -0.12328338
		 2.86761832 -2.015632629 -0.14953955 2.81070971 -2.010694742 -0.15858677 2.75380158 -2.005756855 -0.1495395
		 2.70246363 -2.0013027191 -0.12328334 2.66172218 -1.99776757 -0.082388416 2.63556409 -1.99549782 -0.030857811
		 2.62655091 -1.99471593 0.026264302 2.63556409 -1.99549782 0.083386406 2.66172218 -1.99776757 0.13491699
		 2.70246363 -2.0013027191 0.17581189 2.75380158 -2.005756855 0.20206805 2.81070971 -2.010694742 0.21111532
		 2.86761832 -2.015632629 0.20206805 2.9189558 -2.020087004 0.17581189 2.95969725 -2.023622274 0.13491699
		 2.98585534 -2.025891542 0.083386377 2.99486899 -2.026674032 0.026264302 3.012019873 -2.017460585 -0.039090432
		 2.9820919 -2.014863968 -0.098047785 2.93547845 -2.010819197 -0.1448366 2.87674165 -2.0057225227 -0.17487687
		 2.8116312 -2.000073432922 -0.18522802 2.74652123 -1.99442375 -0.17487684 2.68778467 -1.98932743 -0.14483656
		 2.64117122 -1.98528302 -0.098047748 2.61124277 -1.98268628 -0.03909041 2.60093069 -1.98179162 0.026264302
		 2.61124277 -1.98268628 0.091619 2.64117122 -1.98528302 0.15057634 2.68778467 -1.98932743 0.19736512
		 2.74652123 -1.99442375 0.22740538 2.8116312 -2.000073432922 0.23775654 2.87674165 -2.0057225227 0.22740538
		 2.93547797 -2.010819197 0.19736511 2.98209143 -2.014863968 0.15057634 3.012019396 -2.017460585 0.091618985
		 3.02233243 -2.01835537 0.026264302 3.033361197 -2.0073134899 -0.045713786 3.00040078163 -2.0044531822 -0.11064616
		 2.94906282 -1.99999905 -0.16217679 2.88437319 -1.9943862 -0.19526143 2.81266475 -1.98816395 -0.20666164
		 2.74095607 -1.98194194 -0.19526143 2.67626667 -1.97632897 -0.16217671 2.62492919 -1.97187471 -0.1106461
		 2.59196806 -1.96901488 -0.045713756 2.58061075 -1.9680295 0.026264302 2.59196806 -1.96901488 0.098242342
		 2.62492919 -1.97187471 0.16317467 2.67626715 -1.97632933 0.2147053 2.74095607 -1.98194194 0.24778996
		 2.81266475 -1.98816395 0.25919014 2.88437319 -1.9943862 0.24778993 2.94906282 -1.99999905 0.21470527
		 3.00040078163 -2.0044531822 0.16317467 3.033360958 -2.0073132515 0.098242342 3.044719219 -2.0082988739 0.026264302
		 3.049354792 -1.99569964 -0.050564796 3.014172792 -1.99264669 -0.11987334;
	setAttr ".vt[166:331]" 2.95937467 -1.98789215 -0.17487688 2.89032602 -1.98190093 -0.21019132
		 2.8137846 -1.97525942 -0.22235985 2.73724294 -1.96861839 -0.21019132 2.66819382 -1.96262693 -0.17487684
		 2.61339617 -1.95787239 -0.11987329 2.57821393 -1.9548198 -0.05056477 2.5660913 -1.95376801 0.026264302
		 2.57821393 -1.9548198 0.10309337 2.61339617 -1.95787239 0.17240186 2.66819382 -1.96262693 0.22740538
		 2.73724294 -1.96861839 0.26271987 2.8137846 -1.97525942 0.27488834 2.89032602 -1.98190093 0.26271987
		 2.95937467 -1.98789215 0.22740538 3.014172792 -1.99264669 0.17240183 3.049354792 -1.99569964 0.10309336
		 3.0614779 -1.99675131 0.026264302 3.059606791 -1.98290515 -0.053524029 3.02306962 -1.97973478 -0.12550211
		 2.96616077 -1.97479725 -0.18262422 2.89445281 -1.968575 -0.21929887 2.81496286 -1.96167815 -0.2319361
		 2.73547316 -1.95478082 -0.21929887 2.66376472 -1.94855905 -0.18262419 2.60685635 -1.94362116 -0.12550205
		 2.57031894 -1.94045079 -0.053523991 2.55772924 -1.93935859 0.026264302 2.57031894 -1.94045079 0.10605259
		 2.60685635 -1.94362116 0.17803062 2.66376472 -1.94855905 0.23515274 2.73547316 -1.95478082 0.2718274
		 2.81496286 -1.96167815 0.2844646 2.89445281 -1.968575 0.2718274 2.96616077 -1.97479725 0.23515268
		 3.02306962 -1.97973478 0.17803062 3.059606314 -1.98290515 0.10605258 3.07219696 -1.98399758 0.026264302
		 3.063864708 -1.96924496 -0.054518595 3.02687192 -1.96603537 -0.12739389 2.96925378 -1.96103573 -0.18522806
		 2.89665198 -1.95473647 -0.22235985 2.81617093 -1.94775319 -0.2351546 2.73569036 -1.94077027 -0.22235985
		 2.66308784 -1.93447065 -0.18522802 2.60547018 -1.92947125 -0.12739384 2.56847763 -1.92626166 -0.054518566
		 2.55573106 -1.92515576 0.026264302 2.56847763 -1.92626166 0.10704716 2.60547018 -1.92947125 0.17992243
		 2.66308784 -1.93447065 0.23775654 2.73569036 -1.94077027 0.27488834 2.81617093 -1.94775319 0.28768307
		 2.89665151 -1.95473647 0.27488834 2.96925378 -1.96103573 0.23775654 3.02687192 -1.96603537 0.1799224
		 3.063864708 -1.96924496 0.10704714 3.076611519 -1.97035098 0.026264302 3.06202364 -1.95505595 -0.053524029
		 3.025485992 -1.95188558 -0.12550211 2.96857738 -1.94694757 -0.18262422 2.89686894 -1.9407258 -0.21929887
		 2.81737924 -1.93382859 -0.2319361 2.73788953 -1.92693162 -0.21929887 2.66618133 -1.92070937 -0.18262419
		 2.60927296 -1.91577184 -0.12550205 2.57273531 -1.91260147 -0.053523991 2.56014585 -1.91150892 0.026264302
		 2.57273531 -1.91260147 0.10605259 2.60927296 -1.91577184 0.17803062 2.66618133 -1.92070937 0.23515274
		 2.73788953 -1.92693162 0.2718274 2.81737924 -1.93382859 0.2844646 2.89686894 -1.9407258 0.2718274
		 2.96857738 -1.94694757 0.23515268 3.025485992 -1.95188558 0.17803062 3.062023163 -1.95505548 0.10605258
		 3.074613094 -1.95614791 0.026264302 3.05412817 -1.9406867 -0.050564796 3.018945932 -1.93763399 -0.11987334
		 2.96414828 -1.93287933 -0.17487688 2.89509892 -1.92688823 -0.21019132 2.81855774 -1.92024684 -0.22235985
		 2.74201632 -1.91360557 -0.21019132 2.67296696 -1.90761411 -0.17487684 2.61816931 -1.90285957 -0.11987329
		 2.58298707 -1.89980721 -0.05056477 2.57086444 -1.89875531 0.026264302 2.58298707 -1.89980721 0.10309337
		 2.61816931 -1.90285957 0.17240186 2.67296696 -1.90761411 0.22740538 2.74201632 -1.91360557 0.26271987
		 2.81855774 -1.92024684 0.27488834 2.89509892 -1.92688823 0.26271987 2.96414828 -1.93287933 0.22740538
		 3.018945694 -1.93763399 0.17240183 3.05412817 -1.9406867 0.10309336 3.066251278 -1.94173861 0.026264302
		 3.040374041 -1.92649174 -0.045713786 3.0074131489 -1.92363191 -0.11064616 2.95607567 -1.91917753 -0.16217679
		 2.89138556 -1.91356432 -0.19526143 2.81967735 -1.90734267 -0.20666164 2.74796891 -1.90112054 -0.19526143
		 2.68327951 -1.89550757 -0.16217671 2.6319418 -1.89105332 -0.1106461 2.5989809 -1.88819349 -0.045713756
		 2.58762336 -1.88720775 0.026264302 2.5989809 -1.88819349 0.098242342 2.6319418 -1.89105332 0.16317467
		 2.68327999 -1.89550757 0.2147053 2.74796891 -1.90112054 0.24778996 2.81967735 -1.90734267 0.25919014
		 2.89138556 -1.91356432 0.24778993 2.95607543 -1.91917729 0.21470527 3.0074131489 -1.92363191 0.16317467
		 3.040373802 -1.92649186 0.098242342 3.051731586 -1.92747712 0.026264302 3.021098852 -1.91282034 -0.039090432
		 2.9911716 -1.91022384 -0.098047785 2.94455814 -1.90617919 -0.1448366 2.8858211 -1.90108275 -0.17487687
		 2.8207109 -1.89543319 -0.18522802 2.75560069 -1.88978398 -0.17487684 2.69686389 -1.88468754 -0.14483656
		 2.65025043 -1.88064289 -0.098047748 2.6203227 -1.87804604 -0.03909041 2.61000991 -1.87715137 0.026264302
		 2.6203227 -1.87804604 0.091619 2.65025067 -1.88064277 0.15057634 2.69686389 -1.88468754 0.19736512
		 2.75560069 -1.88978398 0.22740538 2.8207109 -1.89543319 0.23775654 2.8858211 -1.90108275 0.22740538
		 2.94455719 -1.90617943 0.19736511 2.99117112 -1.9102236 0.15057634 3.021098852 -1.91282034 0.091618985
		 3.031411648 -1.91371548 0.026264302 2.99677825 -1.9000088 -0.030857831 2.97062016 -1.89773905 -0.082388446
		 2.92987847 -1.8942039 -0.12328338 2.87854075 -1.88974953 -0.14953955 2.82163262 -1.884812 -0.15858677
		 2.76472378 -1.87987387 -0.1495395 2.71338677 -1.8754195 -0.12328334 2.67264462 -1.87188435 -0.082388416
		 2.64648652 -1.8696152 -0.030857811 2.63747334 -1.86883271 0.026264302 2.64648652 -1.8696152 0.083386406
		 2.67264462 -1.87188435 0.13491699 2.71338677 -1.8754195 0.17581189 2.76472378 -1.87987387 0.20206805
		 2.82163262 -1.884812 0.21111532 2.87854075 -1.88974953 0.20206805 2.92987847 -1.8942039 0.17581189
		 2.97062016 -1.89773905 0.13491699 2.99677825 -1.9000088 0.083386377 3.0057919025 -1.90079069 0.026264302
		 2.96800971 -1.88837337 -0.021218693 2.94626665 -1.88648677 -0.064053714 2.91239929 -1.88354802 -0.098047785
		 2.86972475 -1.87984538 -0.11987332 2.8224194 -1.87574077 -0.12739387 2.77511382 -1.87163615 -0.1198733
		 2.73243928 -1.86793375 -0.098047748 2.69857264 -1.864995 -0.064053684;
	setAttr ".vt[332:497]" 2.67682886 -1.86310816 -0.021218674 2.66933632 -1.86245823 0.026264302
		 2.67682886 -1.86310816 0.073747255 2.69857264 -1.864995 0.11658227 2.73243928 -1.86793375 0.15057634
		 2.7751143 -1.87163651 0.17240183 2.8224194 -1.87574077 0.1799224 2.86972427 -1.87984538 0.17240183
		 2.91239929 -1.88354802 0.15057634 2.9462657 -1.88648701 0.11658226 2.96800971 -1.88837337 0.073747255
		 2.97550225 -1.88902342 0.026264302 2.93550348 -1.87819958 -0.010410365 2.9187088 -1.87674236 -0.043495066
		 2.89255095 -1.87447274 -0.069751233 2.85959005 -1.87161279 -0.086608708 2.82305241 -1.86844254 -0.092417404
		 2.786515 -1.86527216 -0.086608708 2.75355482 -1.86241233 -0.069751203 2.72739697 -1.86014295 -0.04349504
		 2.71060228 -1.85868573 -0.010410354 2.70481515 -1.85818338 0.026264302 2.71060228 -1.85868573 0.062938951
		 2.72739697 -1.86014295 0.096023634 2.75355482 -1.86241233 0.12227978 2.786515 -1.86527216 0.13913725
		 2.82305241 -1.86844254 0.14494593 2.85959005 -1.87161279 0.13913725 2.89255095 -1.87447274 0.12227978
		 2.9187088 -1.87674236 0.096023619 2.93550348 -1.87819958 0.062938936 2.9412899 -1.87870169 0.026264302
		 2.96618414 -1.74362218 -0.016561903 2.94657254 -1.74192059 -0.055195991 2.91602707 -1.73927021 -0.085856169
		 2.87753773 -1.73593092 -0.10554121 2.83487177 -1.73222876 -0.11232422 2.79220581 -1.72852659 -0.10554121
		 2.75371599 -1.72518718 -0.085856147 2.72317123 -1.7225368 -0.055195965 2.70355988 -1.72083509 -0.016561899
		 2.69680166 -1.72024846 0.026264317 2.70355988 -1.72083509 0.0690905 2.72317123 -1.7225368 0.10772458
		 2.75371599 -1.72518718 0.13838476 2.79220581 -1.72852659 0.15806977 2.83487177 -1.73222876 0.1648528
		 2.87753773 -1.73593092 0.15806977 2.91602707 -1.73927021 0.13838473 2.94657254 -1.74192059 0.10772456
		 2.96618414 -1.74362218 0.0690905 2.9729414 -1.74420857 0.026264317 2.90183163 -1.73240268 0.0045842826
		 2.8919034 -1.73154116 -0.014973547 2.87644053 -1.73019958 -0.030494735 2.85695601 -1.72850895 -0.040459946
		 2.83535671 -1.72663462 -0.043893714 2.81375837 -1.72476065 -0.040459938 2.79427361 -1.72307003 -0.030494725
		 2.7788105 -1.72172844 -0.014973536 2.76888275 -1.7208668 0.0045842938 2.76546168 -1.72057009 0.026264317
		 2.76888275 -1.7208668 0.047944322 2.7788105 -1.72172844 0.067502148 2.79427361 -1.72307003 0.083023325
		 2.81375837 -1.72476065 0.092988521 2.83535671 -1.72663462 0.096422315 2.85695601 -1.72850895 0.092988521
		 2.87644053 -1.73019958 0.083023325 2.8919034 -1.73154116 0.067502148 2.90183163 -1.73240268 0.047944322
		 2.9052527 -1.73269951 0.026264317 2.80844784 -2.036765337 0.026264302 2.83552003 -1.72475481 0.026264317
		 2.93305087 -1.96779621 -0.15414646 3.030857086 -2.12419605 -0.34633499 2.93790007 -1.91190696 -0.15414646
		 3.035706282 -2.068306446 -0.34633499 2.87891769 -1.9067893 -0.18832763 2.97672462 -2.063188791 -0.38051617
		 2.87406874 -1.96267855 -0.18832763 2.97187519 -2.11907792 -0.38051617 3.023745537 -1.91935587 -0.30339485
		 3.017867565 -1.97515535 -0.3016063 2.96426415 -1.97050464 -0.3451373 2.96291542 -1.91407764 -0.33436167
		 3.017394543 -1.97511458 0.060445443 3.22574592 -2.14110565 0.060445443 3.022243738 -1.91922522 0.060445443
		 3.23059583 -2.085216761 0.060445443 3.022243738 -1.91922522 -0.0079168566 3.23059583 -2.085216761 -0.0079168566
		 3.017394543 -1.97511458 -0.0079168566 3.22574592 -2.14110565 -0.0079168566 3.19393563 -1.9341228 0.060445443
		 3.18702936 -1.98983312 0.060445443 3.19778514 -1.99076629 -0.0079168566 3.190238 -1.93380201 -0.0079168566
		 2.70408058 -0.037766784 -0.14728513 2.67248797 -0.074259251 -0.12269096 2.64741564 -0.10322011 -0.084385112
		 2.63131833 -0.12181392 -0.036117125 2.62577152 -0.12822089 0.017388657 2.63131833 -0.1218138 0.070894442
		 2.64741564 -0.10321999 0.11916274 2.67248797 -0.074259251 0.15746859 2.70408058 -0.037766784 0.18206243
		 2.73910189 0.0026855767 0.19053665 2.77412295 0.043137789 0.18206243 2.80571604 0.079630435 0.15746859
		 2.83078861 0.10859114 0.11916274 2.84688568 0.12718487 0.070894442 2.85243249 0.13359201 0.017388657
		 2.84688568 0.12718487 -0.036116805 2.83078861 0.10859114 -0.084385112 2.8057158 0.079630256 -0.12269096
		 2.77412295 0.043137789 -0.14728481 2.73910189 0.0026855767 -0.15575933 1.48434758 1.012328267 -0.15770695
		 1.45013285 0.97280777 -0.13155699 1.42298031 0.94144392 -0.090826556 1.40554702 0.92130709 -0.039503351
		 1.39953983 0.91436827 0.017388657 1.40554702 0.92130709 0.074280985 1.42298031 0.94144392 0.12560387
		 1.45013285 0.97280777 0.16633432 1.48434758 1.012328267 0.19248457 1.52227473 1.056137562 0.2014953
		 1.56020176 1.099946618 0.19248457 1.59441626 1.13946736 0.16633432 1.6215694 1.1708312 0.12560387
		 1.63900256 1.19096804 0.074280664 1.64500952 1.19790673 0.017388657 1.63900256 1.19096804 -0.039503351
		 1.6215694 1.1708312 -0.090826556 1.59441626 1.13946736 -0.13155667 1.56020176 1.099946618 -0.15770695
		 1.52227473 1.056137562 -0.16671768 2.73910189 0.0026855767 0.017388657 1.52227473 1.056137562 0.017388657
		 1.8158145 1.043087959 -0.23347674 1.76562285 0.97220469 -0.27752119 1.70318651 0.89951551 -0.29269794
		 1.63461626 0.83213651 -0.27752119 1.56662536 0.77666271 -0.23347674 1.52020717 0.72611094 -0.16487572
		 1.49769282 0.68734539 -0.078433439 1.48122287 0.68152988 0.017388657 1.48182547 0.70108235 0.11321075
		 1.50315309 0.74087548 0.19965301 1.54311705 0.79701519 0.26825404 1.59780562 0.86400497 0.31229866
		 1.66186583 0.93528819 0.32747525 1.72902727 1.0038870573 0.31229866 1.79271483 1.063086271 0.26825404
		 1.83475804 1.1174252 0.19965301 1.86733246 1.14748192 0.11321075 1.87586236 1.16017115 0.017388657
		 1.87463713 1.14115787 -0.078433439 1.85106802 1.10330522 -0.16487572 2.14683676 0.12535781 0.11321075
		 2.17553425 0.15877068 0.19965301 2.20785403 0.22152781 0.26825404 2.2662735 0.28528833 0.31229866
		 2.33011913 0.35675681 0.32747525 2.4004426 0.42261779 0.31229866;
	setAttr ".vt[498:663]" 2.44760537 0.49612343 0.26825404 2.50202417 0.53974879 0.19965301
		 2.53977919 0.56531966 0.11321075 2.54664421 0.57945061 0.017388657 2.5496366 0.55678594 -0.078433439
		 2.5158236 0.52780211 -0.16487572 2.48018289 0.46791959 -0.23347674 2.42194009 0.40400696 -0.27752119
		 2.36577177 0.32589144 -0.29269794 2.31250095 0.24526715 -0.27752137 2.24155736 0.19234967 -0.23347674
		 2.17782187 0.1567899 -0.16487572 2.15891862 0.1148982 -0.078433439 2.14364743 0.10804486 0.017388657
		 2.93627429 -0.52804756 -0.012068443 2.92773843 -0.52729046 -0.0077020116 2.92096448 -0.52668989 -0.00090170652
		 2.91661572 -0.52630407 0.0076672621 2.91511726 -0.52617127 0.017166175 2.91661572 -0.52630407 0.026665084
		 2.92096448 -0.52668989 0.035234056 2.92773843 -0.52729046 0.042034358 2.93627429 -0.52804756 0.046400785
		 2.94573593 -0.52888662 0.047905043 2.95519781 -0.52972573 0.046400785 2.96373272 -0.53048271 0.042034358
		 2.97050691 -0.53108335 0.035234056 2.9748559 -0.53146911 0.026665084 2.9763546 -0.5316022 0.017166175
		 2.9748559 -0.53146911 0.0076672621 2.97050691 -0.53108335 -0.00090170652 2.96373272 -0.53048271 -0.0077020116
		 2.95519781 -0.52972573 -0.012068126 2.94573593 -0.52888662 -0.013572689 2.92768121 -0.52005929 -0.040583115
		 2.91082025 -0.51856393 -0.031958129 2.89743924 -0.51737714 -0.018524941 2.88884854 -0.51661515 -0.0015976466
		 2.8858881 -0.51635277 0.017166175 2.88884854 -0.51661515 0.03593 2.89743924 -0.51737714 0.052857295
		 2.91082025 -0.51856393 0.066290475 2.92768121 -0.52005929 0.074915461 2.94637156 -0.52171665 0.077887118
		 2.9650619 -0.52337426 0.074915461 2.9819231 -0.52486974 0.066290475 2.99530411 -0.52605623 0.052857295
		 3.0038950443 -0.52681816 0.03593 3.006855011 -0.5270806 0.017166175 3.0038950443 -0.52681816 -0.0015976466
		 2.99530411 -0.52605623 -0.018524621 2.9819231 -0.52486974 -0.031958129 2.9650619 -0.52337426 -0.040583115
		 2.94637156 -0.52171665 -0.043554787 2.91995502 -0.50752777 -0.067675494 2.8951838 -0.50533098 -0.055004511
		 2.87552571 -0.5035876 -0.035268806 2.86290407 -0.50246817 -0.010400623 2.85855484 -0.50208259 0.017166175
		 2.86290407 -0.50246817 0.044732973 2.87552571 -0.5035876 0.069601156 2.8951838 -0.50533098 0.089336857
		 2.91995502 -0.50752777 0.10200784 2.94741392 -0.50996298 0.10637395 2.9748733 -0.51239806 0.10200784
		 2.99964428 -0.51459491 0.089336857 3.019302368 -0.51633847 0.069601156 3.031924486 -0.5174576 0.044732973
		 3.036273479 -0.51784325 0.017166175 3.031924486 -0.5174576 -0.010400623 3.019302368 -0.51633847 -0.035268806
		 2.99964428 -0.51459491 -0.055004511 2.9748733 -0.51239806 -0.067675494 2.94741392 -0.50996298 -0.072041601
		 2.91328597 -0.49076244 -0.092679411 2.88121414 -0.4879182 -0.076273911 2.85576248 -0.485661 -0.050721951
		 2.83942151 -0.48421168 -0.018524941 2.8337903 -0.48371246 0.017166175 2.83942151 -0.48421168 0.052857295
		 2.85576248 -0.485661 0.085054293 2.88121414 -0.4879182 0.11060625 2.91328597 -0.49076244 0.12701143
		 2.94883704 -0.49391514 0.13266443 2.98438859 -0.49706811 0.12701143 3.016459703 -0.49991232 0.11060625
		 3.041912079 -0.50216955 0.085054293 3.058253288 -0.50361872 0.052857295 3.06388402 -0.50411797 0.017166175
		 3.058253288 -0.50361872 -0.018524621 3.041912079 -0.50216955 -0.050721951 3.016459703 -0.49991232 -0.076273911
		 2.98438859 -0.49706811 -0.092679091 2.94883704 -0.49391514 -0.098332085 2.90783763 -0.47017577 -0.11497799
		 2.86925578 -0.46675426 -0.095242292 2.83863711 -0.46403879 -0.064503424 2.81897855 -0.46229547 -0.025769893
		 2.8122046 -0.46169469 0.017166175 2.81897855 -0.46229547 0.060102247 2.83863711 -0.46403879 0.098835766
		 2.86925578 -0.46675426 0.12957463 2.90783763 -0.47017577 0.14931034 2.95060611 -0.47396851 0.15611063
		 2.99337482 -0.47776169 0.14931034 3.031956434 -0.48118311 0.12957463 3.062575102 -0.48389858 0.098835766
		 3.082233906 -0.4856419 0.060102247 3.089007139 -0.48624271 0.017166175 3.082233906 -0.4856419 -0.025769893
		 3.062575102 -0.48389858 -0.064503103 3.031956434 -0.48118311 -0.095242292 2.99337482 -0.47776169 -0.11497799
		 2.95060611 -0.47396851 -0.12177829 2.95062089 -0.31939304 -0.13402289 2.91264415 -0.3422327 -0.11144324
		 2.88250589 -0.36035815 -0.076273911 2.86315536 -0.37199566 -0.031958129 2.85648799 -0.37600559 0.017166175
		 2.86315536 -0.37199566 0.066290475 2.88250589 -0.36035815 0.11060625 2.91264415 -0.3422327 0.14577524
		 2.95062089 -0.31939304 0.16835554 2.99271822 -0.29407516 0.17613606 3.034816027 -0.26875722 0.16835554
		 3.072792768 -0.24591765 0.14577524 3.1029315 -0.22779188 0.11060625 3.12228155 -0.21615469 0.066290475
		 3.12894917 -0.21214458 0.017166175 3.12228155 -0.21615469 -0.031958129 3.10293102 -0.22779208 -0.076273911
		 3.072792768 -0.24591765 -0.11144291 3.034816027 -0.26875722 -0.13402289 2.99271822 -0.29407516 -0.14180338
		 2.93280506 -0.29942903 -0.1493451 2.89097977 -0.32458335 -0.12447691 2.85778666 -0.34454593 -0.085743368
		 2.83647585 -0.3573626 -0.03693663 2.82913208 -0.36177912 0.017166175 2.83647585 -0.3573626 0.071268968
		 2.85778666 -0.34454593 0.12007572 2.89097977 -0.32458335 0.15880924 2.93280506 -0.29942903 0.18367743
		 2.97916889 -0.27154541 0.19224674 3.025532961 -0.24366164 0.18367743 3.067358494 -0.21850729 0.15880924
		 3.10055137 -0.19854489 0.12007572 3.12186217 -0.18572819 0.071268968 3.1292057 -0.18131173 0.017166175
		 3.12186217 -0.18572819 -0.03693663 3.10055137 -0.19854489 -0.085743368 3.067358255 -0.21850744 -0.12447659
		 3.025532961 -0.24366164 -0.1493451 2.97916889 -0.27154541 -0.15791407 2.91499853 -0.27689621 -0.16056752
		 2.87035418 -0.30374578 -0.13402289 2.83492398 -0.32505372 -0.092679411 2.8121767 -0.3387343 -0.040583115
		 2.80433846 -0.34344831 0.017166175 2.8121767 -0.3387343 0.074915461 2.83492398 -0.32505372 0.12701176
		 2.87035418 -0.30374578 0.16835554 2.91499853 -0.27689621 0.19489989 2.96448708 -0.24713326 0.20404635
		 3.013975859 -0.21737027 0.19489989 3.058620214 -0.1905207 0.16835554;
	setAttr ".vt[664:829]" 3.094050169 -0.16921276 0.12701143 3.11679769 -0.15553221 0.074915461
		 3.12463593 -0.1508182 0.017166175 3.11679769 -0.15553221 -0.040583115 3.094050169 -0.16921276 -0.092679091
		 3.058620214 -0.1905207 -0.13402289 3.013975859 -0.21737027 -0.16056752 2.96448708 -0.24713326 -0.16971368
		 2.89763999 -0.25234914 -0.16741298 2.85127616 -0.280233 -0.13984618 2.8144815 -0.30236152 -0.096910104
		 2.79085803 -0.31656897 -0.042807307 2.78271818 -0.32146451 0.017166175 2.79085803 -0.31656897 0.077139646
		 2.8144815 -0.30236152 0.13124245 2.85127616 -0.280233 0.17417853 2.89763999 -0.25234914 0.20174564
		 2.94903469 -0.22143987 0.21124457 3.0004298687 -0.19053051 0.20174564 3.046793699 -0.16264674 0.17417853
		 3.083588362 -0.14051807 0.13124245 3.10721183 -0.12631074 0.077139646 3.11535168 -0.12141511 0.017166175
		 3.10721183 -0.12631074 -0.042807307 3.083588362 -0.14051807 -0.096910104 3.046793699 -0.16264674 -0.13984618
		 3.0004298687 -0.19053051 -0.16741298 2.94903469 -0.22143987 -0.17691189 2.88115716 -0.22639242 -0.16971399
		 2.83421516 -0.25462377 -0.14180338 2.79696226 -0.27702823 -0.098332085 2.77304363 -0.29141289 -0.043554787
		 2.76480246 -0.29636934 0.017166175 2.77304363 -0.29141289 0.077887118 2.79696226 -0.27702823 0.13266443
		 2.83421516 -0.25462377 0.17613606 2.88115716 -0.22639242 0.20404635 2.93319249 -0.1950978 0.21366335
		 2.98522782 -0.16380322 0.20404635 3.032170057 -0.13557178 0.17613606 3.069423199 -0.11316726 0.13266443
		 3.093341112 -0.098782778 0.077887118 3.10158277 -0.093826085 0.017166175 3.093341112 -0.098782778 -0.043554787
		 3.06942296 -0.11316741 -0.098332085 3.032170057 -0.13557178 -0.14180338 2.98522782 -0.16380322 -0.16971368
		 2.93319249 -0.1950978 -0.17933103 2.86595559 -0.19966513 -0.16741298 2.81959152 -0.22754902 -0.13984618
		 2.7827971 -0.24967752 -0.096910104 2.75917315 -0.26388502 -0.042807307 2.75103354 -0.26878056 0.017166175
		 2.75917315 -0.26388502 0.077139646 2.7827971 -0.24967752 0.13124245 2.81959152 -0.22754902 0.17417853
		 2.86595559 -0.19966513 0.20174564 2.91735029 -0.16875589 0.21124457 2.96874499 -0.13784653 0.20174564
		 3.015109062 -0.10996273 0.17417853 3.051903486 -0.08783412 0.13124245 3.075526953 -0.073626727 0.077139646
		 3.083667278 -0.068731129 0.017166175 3.075526953 -0.073626727 -0.042807307 3.051903486 -0.08783412 -0.096910104
		 3.015109062 -0.10996273 -0.13984618 2.96874499 -0.13784653 -0.16741298 2.91735029 -0.16875589 -0.17691189
		 2.85240936 -0.17282546 -0.16056752 2.80776501 -0.19967502 -0.13402289 2.77233529 -0.22098297 -0.092679411
		 2.74958754 -0.23466353 -0.040583115 2.74174929 -0.23937756 0.017166175 2.74958754 -0.23466353 0.074915461
		 2.77233529 -0.22098297 0.12701176 2.80776501 -0.19967502 0.16835554 2.85240936 -0.17282546 0.19489989
		 2.90189815 -0.1430625 0.20404635 2.95138669 -0.11329955 0.19489989 2.99603128 -0.086449981 0.16835554
		 3.031461 -0.065142006 0.12701143 3.054208517 -0.051461428 0.074915461 3.062046766 -0.046747386 0.017166175
		 3.054208517 -0.051461428 -0.040583115 3.031461 -0.065142006 -0.092679091 2.99603128 -0.086449981 -0.13402289
		 2.95138669 -0.11329955 -0.16056752 2.90189815 -0.1430625 -0.16971368 2.8408525 -0.14653388 -0.1493451
		 2.79902697 -0.1716882 -0.12447691 2.76583409 -0.19165075 -0.085743368 2.74452305 -0.20446739 -0.03693663
		 2.73717952 -0.20888391 0.017166175 2.74452305 -0.20446739 0.071268968 2.76583409 -0.19165075 0.12007572
		 2.79902697 -0.1716882 0.15880924 2.8408525 -0.14653388 0.18367743 2.88721609 -0.11865023 0.19224674
		 2.93358016 -0.09076646 0.18367743 2.97540593 -0.065612078 0.15880924 3.0085985661 -0.045649707 0.12007572
		 3.029909611 -0.03283301 0.071268968 3.037253141 -0.028416514 0.017166175 3.029909611 -0.03283301 -0.03693663
		 3.0085985661 -0.045649707 -0.085743368 2.97540569 -0.065612257 -0.12447659 2.93358016 -0.09076646 -0.1493451
		 2.88721609 -0.11865023 -0.15791407 2.83156896 -0.1214385 -0.13402289 2.79359221 -0.14427814 -0.11144324
		 2.7634542 -0.16240358 -0.076273911 2.74410367 -0.17404109 -0.031958129 2.73743629 -0.17805102 0.017166175
		 2.74410367 -0.17404109 0.066290475 2.7634542 -0.16240358 0.11060625 2.79359221 -0.14427814 0.14577524
		 2.83156896 -0.1214385 0.16835554 2.87366652 -0.096120656 0.17613606 2.91576409 -0.070802689 0.16835554
		 2.95374084 -0.047963053 0.14577524 2.98387957 -0.02983734 0.11060625 3.0032296181 -0.018200099 0.066290475
		 3.0098972321 -0.014190078 0.017166175 3.0032296181 -0.018200099 -0.031958129 2.98387933 -0.029837489 -0.076273911
		 2.95374084 -0.047963053 -0.11144291 2.91576409 -0.070802689 -0.13402289 2.87366652 -0.096120656 -0.14180338
		 2.71866345 -0.033650964 -0.12867272 2.69001007 -0.065373987 -0.10689209 2.6672709 -0.090549409 -0.072967075
		 2.65267158 -0.10671306 -0.030219877 2.64764071 -0.11228266 0.017166175 2.65267158 -0.10671306 0.064552225
		 2.6672709 -0.090549409 0.10729942 2.69001055 -0.065373838 0.14122412 2.71866345 -0.033650964 0.16300507
		 2.75042534 0.001514107 0.17051026 2.78218746 0.036679387 0.16300507 2.81084085 0.068402469 0.14122412
		 2.83357978 0.093577921 0.10729942 2.84817958 0.10974151 0.064552225 2.85320997 0.11531109 0.017166175
		 2.84817958 0.10974151 -0.030219877 2.83357978 0.093577921 -0.072967075 2.81084108 0.06840241 -0.10689177
		 2.78218746 0.036679387 -0.12867272 2.75042534 0.001514107 -0.13617793 2.71573377 -0.020229846 -0.10406287
		 2.69191575 -0.046599597 -0.085957535 2.67301369 -0.067526907 -0.057757542 2.6608777 -0.080963105 -0.022223605
		 2.65669632 -0.085592747 0.017166175 2.6608777 -0.080963105 0.056555949 2.67301369 -0.067526907 0.092089877
		 2.69191575 -0.046599597 0.12028988 2.71573377 -0.020229846 0.13839522 2.74213624 0.0090014935 0.14463402
		 2.76853848 0.038232684 0.13839522 2.79235649 0.064602315 0.12028988 2.81125879 0.085529745 0.092089877
		 2.8233943 0.098965764 0.056555949 2.82757616 0.10359555 0.017166175 2.8233943 0.098965764 -0.022223605
		 2.81125879 0.085529745 -0.057757542 2.79235649 0.064602315 -0.085957535;
	setAttr ".vt[830:995]" 2.76853848 0.038232684 -0.10406287 2.85126209 -0.058867365 -0.098332085
		 2.71507454 -0.0075525343 -0.076468222 2.69667792 -0.027919978 -0.062484112 2.68207908 -0.044083416 -0.040703163
		 2.67270541 -0.05446136 -0.013257369 2.66947532 -0.058037132 0.017166175 2.67270541 -0.05446136 0.047589719
		 2.68207908 -0.044083416 0.075035505 2.69667792 -0.027919978 0.096816137 2.71507454 -0.0075525343 0.11080056
		 2.7354672 0.015025079 0.11561902 2.75585961 0.037602603 0.11080056 2.77425623 0.057969928 0.096816137
		 2.78885603 0.074133575 0.075035505 2.79822946 0.08451122 0.047589719 2.80145907 0.08808732 0.017166175
		 2.79822922 0.08451128 -0.013257369 2.78885603 0.074133575 -0.040703163 2.77425599 0.057969809 -0.062483791
		 2.75585961 0.037602603 -0.076468222 2.7354672 0.015025079 -0.081286669 2.71670222 0.0040690303 -0.046567753
		 2.70418024 -0.009794414 -0.037049312 2.69424295 -0.020796388 -0.022223605 2.6878624 -0.027860284 -0.0035420544
		 2.68566394 -0.030294359 0.017166175 2.6878624 -0.027860284 0.037874393 2.69424295 -0.020796388 0.056555949
		 2.70418024 -0.009794414 0.071381658 2.71670222 0.0040691495 0.080900103 2.73058271 0.019436955 0.084180042
		 2.74446344 0.034804642 0.080900103 2.75698495 0.048668027 0.071381658 2.76692247 0.05967015 0.056555949
		 2.77330256 0.066733956 0.037874393 2.77550125 0.069167852 0.017166175 2.77330256 0.066733956 -0.0035420544
		 2.76692247 0.05967015 -0.022223605 2.75698495 0.048668027 -0.037049312 2.74446344 0.034804642 -0.046567753
		 2.73058271 0.019436955 -0.049847703 2.72057652 0.014348477 -0.015098061 2.71423721 0.0073303282 -0.010279618
		 2.70920658 0.0017606616 -0.0027740896 2.70597672 -0.0018151999 0.0066828951 2.70486379 -0.0030473769 0.017166175
		 2.70597672 -0.0018151999 0.027649455 2.70920658 0.0017606616 0.037106432 2.71423721 0.0073303282 0.044611968
		 2.72057652 0.014348477 0.049430408 2.72760296 0.022128105 0.051090866 2.73462987 0.029907703 0.049430408
		 2.74096894 0.036925912 0.044611968 2.74599934 0.04249537 0.037106432 2.74922943 0.046071529 0.027649455
		 2.75034237 0.047303677 0.017166175 2.74922943 0.046071529 0.0066828951 2.74599934 0.04249537 -0.0027740896
		 2.74096894 0.036925912 -0.010279618 2.73462987 0.029907703 -0.015098061 2.72760296 0.022128105 -0.01675852
		 2.94552183 -0.53129631 0.017166175 2.79355121 -0.037438095 0.017166175 2.79229999 -1.73697889 -0.10505204
		 2.75421953 -1.73367476 -0.086832099 2.72399855 -1.73105264 -0.058454443 2.70459604 -1.72936904 -0.022696102
		 2.69790983 -1.72878885 0.016942412 2.70459604 -1.72936904 0.056580611 2.72399855 -1.73105264 0.092339262
		 2.75421953 -1.73367476 0.12071691 2.79229999 -1.73697889 0.13893653 2.83451271 -1.74064147 0.14521472
		 2.87672567 -1.74430442 0.13893653 2.91480589 -1.74760842 0.12071691 2.94502687 -1.75023067 0.092339262
		 2.96442986 -1.75191402 0.056580611 2.97111559 -1.75249445 0.016942412 2.96442986 -1.75191402 -0.022696102
		 2.94502687 -1.75023067 -0.058454122 2.91480589 -1.74760842 -0.086832099 2.87672567 -1.74430442 -0.10505204
		 2.83451271 -1.74064147 -0.11133023 2.89897275 -0.46689564 -0.112773 2.8577323 -0.46331742 -0.093400002
		 2.82500339 -0.46047756 -0.063226148 2.80399013 -0.45865434 -0.025204562 2.79674983 -0.45802599 0.016942412
		 2.80399013 -0.45865434 0.059089378 2.82500339 -0.46047756 0.097110957 2.8577323 -0.46331742 0.12728482
		 2.89897275 -0.46689564 0.1466575 2.94468832 -0.47086224 0.15333296 2.99040389 -0.47482899 0.1466575
		 3.031644344 -0.47840714 0.12728482 3.064372778 -0.48124713 0.097110957 3.085386038 -0.48307037 0.059089378
		 3.092626572 -0.48369867 0.016942412 3.085386038 -0.48307037 -0.025204562 3.064372778 -0.48124713 -0.063226148
		 3.031644344 -0.47840714 -0.093400002 2.99040389 -0.47482899 -0.112773 2.94468832 -0.47086224 -0.11944847
		 2.83451271 -1.74064147 0.016942412 2.94468832 -0.47086224 0.016942412 3.072706938 -0.66516393 -0.16890474
		 3.0039305687 -0.66591185 -0.20153423 2.92830777 -0.65964687 -0.21277747 2.85324025 -0.64698112 -0.20153423
		 2.78607583 -0.62915504 -0.16890505 2.73209143 -0.62287629 -0.11808348 2.69677138 -0.62645012 -0.054044794
		 2.68538928 -0.61859047 0.016942412 2.69820786 -0.60989189 0.087929934 2.73363566 -0.60508001 0.15196829
		 2.78820443 -0.60462362 0.20278953 2.85657334 -0.60856831 0.23541902 2.93204927 -0.61652803 0.2466623
		 3.0072443485 -0.62772387 0.23541902 3.074798346 -0.64105904 0.20278953 3.129179 -0.64277279 0.15196829
		 3.16358805 -0.64969683 0.087929606 3.17568851 -0.64927077 0.016942412 3.16292691 -0.65731925 -0.054044794
		 3.127702 -0.65979242 -0.11808348 2.63799572 -1.30384219 0.087929934 2.67275596 -1.30672038 0.15196829
		 2.72801685 -1.29828751 0.20278953 2.79604793 -1.30612528 0.23541902 2.87154341 -1.31386113 0.2466623
		 2.94645238 -1.32835674 0.23541902 3.015502453 -1.32444799 0.20278953 3.068762302 -1.3390758 0.15196829
		 3.10270262 -1.3514061 0.087929606 3.11495376 -1.34924269 0.016942412 3.10180998 -1.36169219 -0.054044794
		 3.067512989 -1.35347569 -0.11808348 3.012552738 -1.35844338 -0.16890474 2.94450593 -1.35078967 -0.20153423
		 2.86831522 -1.35106528 -0.21277747 2.79186249 -1.3543644 -0.20153423 2.72496533 -1.33345747 -0.16890505
		 2.67254925 -1.30910802 -0.11808348 2.63690186 -1.31644976 -0.054044794 2.62541127 -1.30984116 0.016942412
		 2.71563768 -1.94893169 -0.20108923 2.59235477 -2.086147785 -0.39327776 2.72048712 -1.89304292 -0.20108923
		 2.59720397 -2.030259132 -0.39327776 2.66150475 -1.88792515 -0.16690809 2.53822207 -2.025141239 -0.35909659
		 2.65665555 -1.94381404 -0.16690809 2.53337288 -2.08103013 -0.35909659 2.63464069 -1.88559413 -0.35033756
		 2.63082004 -1.94157231 -0.34854901 2.56646013 -1.93598831 -0.32371771 2.57750773 -1.88063669 -0.31294209
		 2.87755442 -1.96298075 0.23012389 2.97536111 -2.11938047 0.42231244 2.88240361 -1.90709198 0.23012389
		 2.9802103 -2.063491344 0.42231244 2.94138575 -1.91220963 0.19594273 3.039192438 -2.068609238 0.38813126
		 2.93653655 -1.96809888 0.19594273 3.034342766 -2.12449813 0.38813126;
	setAttr ".vt[996:1161]" 2.96825027 -1.91454065 0.37937224 2.96237206 -1.97034025 0.37758368
		 3.026731968 -1.97592461 0.35275233 3.025382757 -1.91949761 0.34197676 1.6352911 1.051762223 0.016415065
		 1.62967181 1.045063376 0.0035733206 1.62091947 1.034629583 -0.0066179377 1.6098907 1.021482229 -0.013161137
		 1.59766531 1.0069084167 -0.015415751 1.58543992 0.99233454 -0.013161132 1.57441127 0.97918725 -0.0066179298
		 1.56565881 0.96875352 0.0035733285 1.5600394 0.96205467 0.016415069 1.55810308 0.95974636 0.030650228
		 1.5600394 0.96205467 0.044885408 1.56565881 0.96875352 0.057727125 1.57441127 0.97918725 0.067918383
		 1.58543992 0.99233454 0.074461587 1.59766531 1.0069084167 0.076716214 1.6098907 1.021482229 0.074461564
		 1.62091947 1.034629583 0.067918383 1.62967169 1.045063257 0.057727125 1.6352911 1.051762223 0.044885404
		 1.63722742 1.054070473 0.030650228 1.66372621 1.10244417 0.0025304018 1.65262556 1.089211464 -0.022836875
		 1.6353364 1.068600893 -0.042968448 1.61355054 1.042629957 -0.055893719 1.58940101 1.013841033 -0.060347449
		 1.56525111 0.98505223 -0.055893712 1.54346526 0.95908135 -0.042968433 1.5261761 0.93847072 -0.022836864
		 1.51507568 0.92523795 0.0025304134 1.51125073 0.92067826 0.030650228 1.51507568 0.92523795 0.058770042
		 1.5261761 0.93847072 0.084137306 1.54346526 0.95908141 0.10426888 1.56525111 0.98505223 0.11719413
		 1.58940089 1.013841033 0.12164789 1.61355054 1.042629957 0.11719412 1.6353364 1.068600774 0.10426887
		 1.65262556 1.089211345 0.084137298 1.66372609 1.10244417 0.058770034 1.66755128 1.10700381 0.030650228
		 1.68504775 1.15537643 -0.010661863 1.66873956 1.13593554 -0.047930032 1.64333916 1.10565567 -0.077506207
		 1.61133265 1.06750071 -0.096495293 1.57585311 1.025205731 -0.10303847 1.54037368 0.98291063 -0.096495286
		 1.50836718 0.94475573 -0.077506185 1.4829669 0.9144758 -0.047930006 1.46665859 0.89503497 -0.010661848
		 1.4610393 0.88833606 0.030650228 1.46665859 0.89503497 0.07196229 1.4829669 0.9144758 0.10923046
		 1.50836718 0.94475573 0.13880663 1.54037368 0.98291063 0.15779571 1.57585311 1.025205612 0.1643389
		 1.61133265 1.06750071 0.15779571 1.64333916 1.10565555 0.13880661 1.66873956 1.13593543 0.10923044
		 1.68504763 1.15537643 0.07196229 1.69066715 1.16207528 0.030650228 1.38166714 1.26599693 -0.047214128
		 1.37483406 1.24539876 -0.089806609 1.36419129 1.21331644 -0.12360819 1.35078061 1.17289031 -0.14531013
		 1.33591485 1.12807751 -0.15278812 1.32104897 1.083264828 -0.14531012 1.30763829 1.042838693 -0.12360816
		 1.29699552 1.010756373 -0.089806579 1.29016256 0.9901582 -0.047214109 1.28780794 0.98306054 0
		 1.29016256 0.9901582 0.047214109 1.29699552 1.010756373 0.089806572 1.30763829 1.042838693 0.12360814
		 1.32104897 1.083264828 0.14531007 1.33591485 1.12807751 0.15278806 1.35078061 1.17289031 0.14531007
		 1.36419129 1.21331644 0.12360813 1.37483406 1.24539876 0.089806564 1.38166714 1.26599693 0.047214102
		 1.38402152 1.27309453 0 1.36581182 1.30233562 -0.056798685 1.35759163 1.27755606 -0.10803752
		 1.34478843 1.23896086 -0.14870089 1.32865536 1.19032812 -0.17480838 1.3107717 1.13641834 -0.18380439
		 1.29288816 1.082508564 -0.17480837 1.27675509 1.033875823 -0.14870085 1.26395178 0.99528068 -0.10803749
		 1.2557317 0.97050107 -0.056798663 1.25289917 0.96196258 0 1.2557317 0.97050107 0.056798663
		 1.26395178 0.99528068 0.10803747 1.27675509 1.033875823 0.14870082 1.29288816 1.082508564 0.17480829
		 1.3107717 1.13641834 0.18380432 1.32865536 1.19032812 0.17480829 1.34478843 1.23896074 0.1487008
		 1.35759163 1.27755594 0.10803746 1.36581182 1.3023355 0.056798656 1.36864436 1.31087399 0
		 1.34430575 1.33601391 -0.064984672 1.33490074 1.30766296 -0.12360819 1.3202523 1.26350534 -0.17013209
		 1.30179405 1.20786357 -0.20000224 1.28133297 1.14618409 -0.21029478 1.26087201 1.084504604 -0.20000222
		 1.24241376 1.028862834 -0.17013206 1.22776532 0.98470527 -0.12360816 1.21836042 0.95635438 -0.064984649
		 1.21511972 0.9465853 0 1.21836042 0.95635438 0.064984649 1.22776532 0.98470527 0.12360815
		 1.24241376 1.028862834 0.17013201 1.26087201 1.084504604 0.20000216 1.28133297 1.14618409 0.21029472
		 1.30179405 1.20786345 0.20000216 1.32025218 1.26350522 0.170132 1.33490074 1.30766284 0.12360813
		 1.34430563 1.33601379 0.064984635 1.34754634 1.34578276 0 1.31767809 1.36620247 -0.071570523
		 1.30732012 1.33497834 -0.13613522 1.29118705 1.28634548 -0.18737406 1.27085817 1.22506475 -0.22027139
		 1.24832356 1.15713441 -0.23160705 1.22578883 1.089204073 -0.22027139 1.20546007 1.027923346 -0.18737401
		 1.189327 0.9792906 -0.13613518 1.17896891 0.94806647 -0.071570493 1.17539978 0.93730736 0
		 1.17896891 0.94806647 0.071570493 1.189327 0.9792906 0.13613518 1.20546007 1.027923346 0.18737398
		 1.22578883 1.089204073 0.22027132 1.24832356 1.15713441 0.23160696 1.27085817 1.22506464 0.2202713
		 1.29118705 1.28634548 0.18737397 1.30732 1.33497822 0.13613516 1.31767809 1.36620235 0.071570486
		 1.32124722 1.37696135 0 1.28658485 1.39215803 -0.076394066 1.27552867 1.3588295 -0.14531015
		 1.25830829 1.3069191 -0.20000225 1.23660946 1.24150813 -0.23511675 1.212556 1.16899967 -0.24721637
		 1.18850255 1.096491098 -0.23511674 1.16680372 1.031080246 -0.20000222 1.14958334 0.97916991 -0.1453101
		 1.13852715 0.94584143 -0.076394044 1.13471758 0.93435717 0 1.13852715 0.94584143 0.076394044
		 1.14958334 0.97916991 0.14531009 1.16680372 1.031080246 0.20000218 1.18850255 1.096491098 0.23511666
		 1.212556 1.16899967 0.24721628 1.23660934 1.24150813 0.23511665 1.25830829 1.30691898 0.20000216
		 1.27552867 1.35882926 0.14531007 1.28658473 1.39215779 0.076394029 1.29039443 1.40364206 0
		 1.25179136 1.41324139 -0.079336539 1.24030936 1.37862909 -0.15090705;
	setAttr ".vt[1162:1327]" 1.2224257 1.32471931 -0.20770574 1.19989109 1.25678897 -0.24417272
		 1.17491114 1.18148768 -0.25673839 1.14993131 1.10618627 -0.24417271 1.12739658 1.038256049 -0.20770569
		 1.10951304 0.98434627 -0.15090701 1.098031044 0.94973403 -0.079336509 1.094074607 0.93780744 0
		 1.098031044 0.94973403 0.079336509 1.10951304 0.98434627 0.15090699 1.12739658 1.038256049 0.20770565
		 1.14993131 1.10618627 0.24417263 1.17491114 1.18148768 0.25673831 1.19989109 1.25678897 0.24417263
		 1.2224257 1.32471919 0.20770563 1.24030936 1.37862897 0.15090698 1.25179124 1.41324115 0.079336487
		 1.25574768 1.4251678 0 1.2141546 1.42893338 -0.080325477 1.20252943 1.39388978 -0.15278813
		 1.18442285 1.3393079 -0.21029483 1.16160727 1.27053082 -0.24721637 1.13631606 1.19429088 -0.25993866
		 1.11102486 1.11805093 -0.24721636 1.088209271 1.049273849 -0.21029477 1.070102692 0.99469209 -0.15278809
		 1.05847764 0.95964843 -0.080325447 1.05447185 0.94757318 0 1.05847764 0.95964843 0.080325447
		 1.070102692 0.99469209 0.15278807 1.088209271 1.049273849 0.21029472 1.11102486 1.11805093 0.24721628
		 1.13631606 1.19429088 0.25993857 1.16160727 1.27053082 0.24721627 1.18442285 1.33930779 0.21029471
		 1.20252943 1.39388967 0.15278806 1.21415448 1.42893326 0.080325425 1.21816027 1.44100845 0
		 1.17460108 1.43884778 -0.079336539 1.16311908 1.4042356 -0.15090705 1.14523554 1.35032582 -0.20770574
		 1.12270081 1.28239548 -0.24417272 1.097720981 1.20709407 -0.25673839 1.072741032 1.13179278 -0.24417271
		 1.050206423 1.063862443 -0.20770569 1.032322764 1.0099527836 -0.15090701 1.020840764 0.97534049 -0.079336509
		 1.016884327 0.96341395 0 1.020840764 0.97534049 0.079336509 1.032322764 1.0099527836 0.15090699
		 1.050206423 1.063862562 0.20770565 1.072741032 1.13179278 0.24417263 1.097720981 1.20709407 0.25673831
		 1.12270081 1.28239536 0.24417263 1.14523542 1.3503257 0.20770563 1.16311908 1.40423548 0.15090698
		 1.17460108 1.43884766 0.079336487 1.17855752 1.45077419 0 1.13410497 1.44274044 -0.076394066
		 1.12304878 1.40941191 -0.14531015 1.1058284 1.35750151 -0.20000225 1.084129572 1.29209065 -0.23511675
		 1.060076118 1.21958208 -0.24721637 1.036022663 1.14707363 -0.23511674 1.014323831 1.081662655 -0.20000222
		 0.99710345 1.029752374 -0.1453101 0.98604739 0.99642384 -0.076394044 0.9822377 0.98493969 0
		 0.98604739 0.99642384 0.076394044 0.99710351 1.029752374 0.14531009 1.014323831 1.081662774 0.20000218
		 1.036022663 1.14707363 0.23511666 1.060076118 1.21958208 0.24721628 1.084129572 1.29209065 0.23511665
		 1.1058284 1.35750151 0.20000216 1.12304878 1.40941179 0.14531007 1.13410485 1.44274032 0.076394029
		 1.13791454 1.45422447 0 1.093663216 1.4405154 -0.071570523 1.08330512 1.40929127 -0.13613522
		 1.06717205 1.36065853 -0.18737406 1.04684329 1.29937768 -0.22027139 1.024308562 1.23144734 -0.23160705
		 1.0017739534 1.163517 -0.22027139 0.98144513 1.10223627 -0.18737401 0.96531206 1.05360353 -0.13613518
		 0.95495403 1.022379398 -0.071570493 0.9513849 1.011620283 0 0.95495403 1.022379398 0.071570493
		 0.96531206 1.05360353 0.13613518 0.98144513 1.10223627 0.18737398 1.0017739534 1.16351712 0.22027132
		 1.024308562 1.23144734 0.23160696 1.04684329 1.29937768 0.2202713 1.06717205 1.36065841 0.18737397
		 1.08330512 1.40929115 0.13613516 1.093663216 1.44051528 0.071570486 1.097232342 1.45127439 0
		 1.054271698 1.43222749 -0.064984672 1.0448668 1.40387654 -0.12360819 1.030218363 1.35971892 -0.17013209
		 1.011760116 1.30407715 -0.20000224 0.99129909 1.24239767 -0.21029478 0.97083807 1.18071818 -0.20000222
		 0.95237982 1.12507641 -0.17013206 0.93773139 1.080918908 -0.12360816 0.92832649 1.052567959 -0.064984649
		 0.92508578 1.042798877 0 0.92832649 1.052567959 0.064984649 0.93773139 1.080918908 0.12360815
		 0.95237988 1.12507641 0.17013201 0.97083807 1.1807183 0.20000216 0.99129909 1.24239767 0.21029472
		 1.011760116 1.30407703 0.20000216 1.030218363 1.3597188 0.170132 1.0448668 1.40387642 0.12360813
		 1.054271698 1.43222737 0.064984635 1.057512403 1.44199634 0 0.90140569 1.50073445 -0.05416017
		 0.89126837 1.4701755 -0.11734926 0.87547898 1.42257893 -0.16749638 0.85558331 1.36260378 -0.19969282
		 0.83352876 1.29612076 -0.21078695 0.8114742 1.22963774 -0.1996928 0.79157853 1.16966259 -0.16749635
		 0.77578926 1.12206614 -0.11734921 0.76565182 1.091507196 -0.054160144 0.76215875 1.080977321 0.015885469
		 0.76565182 1.091507196 0.0859311 0.77578926 1.12206614 0.14912014 0.79157853 1.16966271 0.19926727
		 0.8114742 1.22963786 0.2314637 0.83352876 1.29612076 0.24255782 0.85558331 1.36260366 0.2314637
		 0.87547898 1.42257881 0.19926725 0.89126831 1.4701755 0.14912012 0.90140569 1.50073433 0.085931085
		 0.90489876 1.51126409 0.015885469 0.85894454 1.47649276 -0.04234023 0.85051775 1.45109057 -0.09486641
		 0.83739281 1.41152573 -0.13655142 0.82085443 1.36167109 -0.16331483 0.80252153 1.30640686 -0.17253686
		 0.78418863 1.25114262 -0.16331482 0.76765025 1.20128798 -0.1365514 0.7545253 1.16172326 -0.094866365
		 0.74609864 1.13632107 -0.042340212 0.74319494 1.12756813 0.015885469 0.74609864 1.13632107 0.074111164
		 0.7545253 1.16172326 0.12663731 0.76765025 1.2012881 0.16832229 0.78418863 1.25114262 0.1950857
		 0.80252153 1.30640686 0.20430773 0.82085443 1.36167109 0.1950857 0.83739281 1.41152573 0.16832229
		 0.85051775 1.45109046 0.12663731 0.85894448 1.47649264 0.074111156 0.86184812 1.4852457 0.015885469
		 0.82115543 1.44605231 -0.029086605 0.81464684 1.42643225 -0.069656491 0.80450946 1.39587331 -0.10185293
		 0.79173565 1.35736692 -0.12252432 0.77757573 1.31468225 -0.1296472 0.76341581 1.27199745 -0.12252431
		 0.75064206 1.23349106 -0.10185291 0.74050468 1.20293224 -0.069656461;
	setAttr ".vt[1328:1381]" 0.73399609 1.18331218 -0.029086588 0.73175335 1.17655158 0.015885469
		 0.73399609 1.18331218 0.060857542 0.74050468 1.20293224 0.10142742 0.75064206 1.23349106 0.13362384
		 0.76341581 1.27199745 0.15429522 0.77757573 1.31468225 0.1614181 0.79173565 1.35736692 0.15429522
		 0.8045094 1.39587331 0.13362382 0.81464684 1.42643213 0.10142741 0.82115537 1.44605219 0.060857538
		 0.82339811 1.45281279 0.015885469 0.78896809 1.41016269 -0.014725591 0.78453791 1.39680803 -0.04234023
		 0.77763772 1.37600756 -0.064255342 0.76894295 1.34979737 -0.078325704 0.75930476 1.3207432 -0.08317402
		 0.74966657 1.29168916 -0.078325696 0.74097186 1.26547897 -0.064255327 0.73407173 1.2446785 -0.042340219
		 0.7296415 1.23132384 -0.014725578 0.72811496 1.22672212 0.015885469 0.7296415 1.23132384 0.046496518
		 0.73407173 1.24467862 0.074111171 0.74097186 1.26547909 0.096026272 0.74966657 1.29168916 0.1100966
		 0.75930476 1.3207432 0.11494493 0.76894295 1.34979737 0.1100966 0.77763772 1.37600744 0.096026257
		 0.78453791 1.39680791 0.074111164 0.78896809 1.41016269 0.046496514 0.79049462 1.4147644 0.015885469
		 0.76317596 1.36970758 0.00038914845 0.76093328 1.36294699 -0.013590289 0.75744021 1.35241711 -0.024684418
		 0.75303864 1.33914876 -0.031807289 0.74815941 1.32444048 -0.034261659 0.74328029 1.30973244 -0.031807285
		 0.73887873 1.29646397 -0.024684409 0.73538566 1.28593409 -0.013590261 0.73314291 1.27917349 0.00038915328
		 0.73237014 1.27684402 0.015885469 0.73314291 1.27917349 0.031381778 0.73538566 1.28593409 0.045361232
		 0.73887873 1.29646397 0.05645534 0.74328029 1.30973244 0.063578233 0.74815941 1.32444048 0.066032588
		 0.75303864 1.33914864 0.063578226 0.75744021 1.35241711 0.056455337 0.76093328 1.36294699 0.045361195
		 0.76317596 1.36970758 0.031381775 0.7639488 1.37203705 0.015885469 1.60044289 1.0045784712 0.030650228
		 0.7444135 1.32568312 0.015885469;
	setAttr -s 2820 ".ed";
	setAttr ".ed[0:165]"  0 9 0 2 8 0 4 11 0 6 10 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 3 0 9 1 0 10 7 0 11 5 0 8 9 1 9 10 1 10 11 1 11 8 1 12 21 0 14 20 0
		 16 23 0 18 22 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0 17 19 0 18 12 0 19 13 0 20 15 0
		 21 13 0 22 19 0 23 17 0 20 21 1 21 22 1 22 23 1 23 20 1 24 25 1 25 26 1 26 27 1 27 28 1
		 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1
		 39 40 1 40 41 1 41 42 1 42 43 1 43 24 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1
		 50 51 1 51 52 1 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1
		 61 62 1 62 63 1 63 44 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1
		 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 64 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 84 1
		 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1
		 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1
		 122 123 1 123 104 1 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1
		 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1
		 140 141 1 141 142 1 142 143 1 143 124 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1
		 149 150 1;
	setAttr ".ed[166:331]" 150 151 1 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1
		 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1 161 162 1 162 163 1 163 144 1 164 165 1
		 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1
		 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1 182 183 1
		 183 164 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1
		 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 184 1 204 205 1 205 206 1 206 207 1 207 208 1 208 209 1 209 210 1
		 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1
		 219 220 1 220 221 1 221 222 1 222 223 1 223 204 1 224 225 1 225 226 1 226 227 1 227 228 1
		 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1
		 237 238 1 238 239 1 239 240 1 240 241 1 241 242 1 242 243 1 243 224 1 244 245 1 245 246 1
		 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1
		 255 256 1 256 257 1 257 258 1 258 259 1 259 260 1 260 261 1 261 262 1 262 263 1 263 244 1
		 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1 271 272 1 272 273 1
		 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 280 1 280 281 1 281 282 1
		 282 283 1 283 264 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1
		 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1
		 300 301 1 301 302 1 302 303 1 303 284 1 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1
		 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1;
	setAttr ".ed[332:497]" 316 317 1 317 318 1 318 319 1 319 320 1 320 321 1 321 322 1
		 322 323 1 323 304 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1
		 331 332 1 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 324 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1
		 358 359 1 359 360 1 360 361 1 361 362 1 362 363 1 363 344 1 364 365 1 365 366 1 366 367 1
		 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1
		 376 377 1 377 378 1 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 383 364 1 384 385 1
		 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1
		 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 400 1 400 401 1 401 402 1 402 403 1
		 403 384 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1
		 33 53 1 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1
		 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1
		 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1
		 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1
		 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1
		 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1
		 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1;
	setAttr ".ed[498:663]" 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1
		 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1
		 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1
		 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1
		 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1
		 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1
		 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1
		 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1
		 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1
		 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1
		 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1
		 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1
		 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1
		 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1 224 244 1
		 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1 233 253 1
		 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1 242 262 1
		 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1 251 271 1
		 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1 260 280 1
		 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1;
	setAttr ".ed[664:829]" 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1
		 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1
		 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1 290 310 1 291 311 1
		 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1 299 319 1 300 320 1
		 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1 308 328 1 309 329 1
		 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1 317 337 1 318 338 1
		 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1 326 346 1 327 347 1
		 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1 336 356 1
		 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1 344 364 1 345 365 1
		 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1 353 373 1 354 374 1
		 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 360 380 1 361 381 1 362 382 1 363 383 1
		 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1 369 389 1 370 390 1 371 391 1 372 392 1
		 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1 378 398 1 379 399 1 380 400 1 381 401 1
		 382 402 1 383 403 1 404 24 1 404 25 1 404 26 1 404 27 1 404 28 1 404 29 1 404 30 1
		 404 31 1 404 32 1 404 33 1 404 34 1 404 35 1 404 36 1 404 37 1 404 38 1 404 39 1
		 404 40 1 404 41 1 404 42 1 404 43 1 384 405 1 385 405 1 386 405 1 387 405 1 388 405 1
		 389 405 1 390 405 1 391 405 1 392 405 1 393 405 1 394 405 1 395 405 1 396 405 1 397 405 1
		 398 405 1 399 405 1 400 405 1 401 405 1 402 405 1 403 405 1 406 415 0 408 414 0 410 417 0
		 412 416 0 406 408 0 407 409 0 408 410 0 409 411 0 410 412 0 411 413 0;
	setAttr ".ed[830:995]" 412 406 0 413 407 0 414 409 0 415 407 0 416 413 0 417 411 0
		 414 415 1 415 416 1 416 417 1 417 414 1 418 427 0 420 426 0 422 429 0 424 428 0 418 420 0
		 419 421 0 420 422 0 421 423 0 422 424 0 423 425 0 424 418 0 425 419 0 426 421 0 427 419 0
		 428 425 0 429 423 0 426 427 1 427 428 1 428 429 1 429 426 1 430 431 0 431 432 0 432 433 0
		 433 434 0 434 435 0 435 436 0 436 437 0 437 438 0 438 439 0 439 440 0 440 441 0 441 442 0
		 442 443 0 443 444 0 444 445 0 445 446 0 446 447 0 447 448 0 448 449 0 449 430 0 450 451 0
		 451 452 0 452 453 0 453 454 0 454 455 0 455 456 0 456 457 0 457 458 0 458 459 0 459 460 0
		 460 461 0 461 462 0 462 463 0 463 464 0 464 465 0 465 466 0 466 467 0 467 468 0 468 469 0
		 469 450 0 430 507 1 431 508 1 432 509 1 433 510 1 434 511 1 435 492 1 436 493 1 437 494 1
		 438 495 1 439 496 1 440 497 1 441 498 1 442 499 1 443 500 1 444 501 1 445 502 1 446 503 1
		 447 504 1 448 505 1 449 506 1 470 430 1 470 431 1 470 432 1 470 433 1 470 434 1 470 435 1
		 470 436 1 470 437 1 470 438 1 470 439 1 470 440 1 470 441 1 470 442 1 470 443 1 470 444 1
		 470 445 1 470 446 1 470 447 1 470 448 1 470 449 1 450 471 1 451 471 1 452 471 1 453 471 1
		 454 471 1 455 471 1 456 471 1 457 471 1 458 471 1 459 471 1 460 471 1 461 471 1 462 471 1
		 463 471 1 464 471 1 465 471 1 466 471 1 467 471 1 468 471 1 469 471 1 472 467 1 473 468 1
		 474 469 1 475 450 1 476 451 1 477 452 1 478 453 1 479 454 1 480 455 1 481 456 1 482 457 1
		 483 458 1 484 459 1 485 460 1 486 461 1 487 462 1 488 463 1 489 464 1 490 465 1 491 466 1
		 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 480 1 480 481 1
		 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1 486 487 1 487 488 1;
	setAttr ".ed[996:1161]" 488 489 1 489 490 1 490 491 1 491 472 1 492 480 1 493 481 1
		 494 482 1 495 483 1 496 484 1 497 485 1 498 486 1 499 487 1 500 488 1 501 489 1 502 490 1
		 503 491 1 504 472 1 505 473 1 506 474 1 507 475 1 508 476 1 509 477 1 510 478 1 511 479 1
		 492 493 1 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1
		 501 502 1 502 503 1 503 504 1 504 505 1 505 506 1 506 507 1 507 508 1 508 509 1 509 510 1
		 510 511 1 511 492 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1 517 518 1 518 519 1
		 519 520 1 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 526 1 526 527 1 527 528 1
		 528 529 1 529 530 1 530 531 1 531 512 1 532 533 1 533 534 1 534 535 1 535 536 1 536 537 1
		 537 538 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1 544 545 1 545 546 1
		 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 532 1 552 553 1 553 554 1 554 555 1
		 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1 563 564 1
		 564 565 1 565 566 1 566 567 1 567 568 1 568 569 1 569 570 1 570 571 1 571 552 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1 588 589 1 589 590 1 590 591 1
		 591 572 1 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1 597 598 1 598 599 1 599 600 1
		 600 601 1 601 602 1 602 603 1 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 609 1
		 609 610 1 610 611 1 611 592 1 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1
		 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 626 1 626 627 1
		 627 628 1 628 629 1 629 630 1 630 631 1 631 612 1 632 633 1 633 634 1;
	setAttr ".ed[1162:1327]" 634 635 1 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1
		 640 641 1 641 642 1 642 643 1 643 644 1 644 645 1 645 646 1 646 647 1 647 648 1 648 649 1
		 649 650 1 650 651 1 651 632 1 652 653 1 653 654 1 654 655 1 655 656 1 656 657 1 657 658 1
		 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1 663 664 1 664 665 1 665 666 1 666 667 1
		 667 668 1 668 669 1 669 670 1 670 671 1 671 652 1 672 673 1 673 674 1 674 675 1 675 676 1
		 676 677 1 677 678 1 678 679 1 679 680 1 680 681 1 681 682 1 682 683 1 683 684 1 684 685 1
		 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 672 1 692 693 1 693 694 1
		 694 695 1 695 696 1 696 697 1 697 698 1 698 699 1 699 700 1 700 701 1 701 702 1 702 703 1
		 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1 711 692 1
		 712 713 1 713 714 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 728 729 1 729 730 1
		 730 731 1 731 712 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1
		 739 740 1 740 741 1 741 742 1 742 743 1 743 744 1 744 745 1 745 746 1 746 747 1 747 748 1
		 748 749 1 749 750 1 750 751 1 751 732 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1
		 757 758 1 758 759 1 759 760 1 760 761 1 761 762 1 762 763 1 763 764 1 764 765 1 765 766 1
		 766 767 1 767 768 1 768 769 1 769 770 1 770 771 1 771 752 1 772 773 1 773 774 1 774 775 1
		 775 776 1 776 777 1 777 778 1 778 779 1 779 780 1 780 781 1 781 782 1 782 783 1 783 784 1
		 784 785 1 785 786 1 786 787 1 787 788 1 788 789 1 789 790 1 790 791 1 791 772 1 792 793 1
		 793 794 1 794 795 1 795 796 1 796 797 1 797 798 1 798 799 1 799 800 1;
	setAttr ".ed[1328:1493]" 800 801 1 801 802 1 802 803 1 803 804 1 804 805 1 805 806 1
		 806 807 1 807 808 1 808 809 1 809 810 1 810 811 1 811 792 1 812 813 1 813 814 1 814 815 1
		 815 816 1 816 817 1 817 818 1 818 819 1 819 820 1 820 821 1 821 822 1 822 823 1 823 824 1
		 824 825 1 825 826 1 826 827 1 827 828 1 828 829 1 829 830 1 830 831 1 831 812 1 832 833 1
		 833 834 1 834 835 1 835 836 1 836 837 1 837 838 1 838 839 1 839 840 1 840 841 1 841 842 1
		 842 843 1 843 844 1 844 845 1 845 846 1 846 847 1 847 848 1 848 849 1 849 850 1 850 851 1
		 851 832 1 852 853 1 853 854 1 854 855 1 855 856 1 856 857 1 857 858 1 858 859 1 859 860 1
		 860 861 1 861 862 1 862 863 1 863 864 1 864 865 1 865 866 1 866 867 1 867 868 1 868 869 1
		 869 870 1 870 871 1 871 852 1 872 873 1 873 874 1 874 875 1 875 876 1 876 877 1 877 878 1
		 878 879 1 879 880 1 880 881 1 881 882 1 882 883 1 883 884 1 884 885 1 885 886 1 886 887 1
		 887 888 1 888 889 1 889 890 1 890 891 1 891 872 1 512 532 1 513 533 1 514 534 1 515 535 1
		 516 536 1 517 537 1 518 538 1 519 539 1 520 540 1 521 541 1 522 542 1 523 543 1 524 544 1
		 525 545 1 526 546 1 527 547 1 528 548 1 529 549 1 530 550 1 531 551 1 532 552 1 533 553 1
		 534 554 1 535 555 1 536 556 1 537 557 1 538 558 1 539 559 1 540 560 1 541 561 1 542 562 1
		 543 563 1 544 564 1 545 565 1 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1
		 552 572 1 553 573 1 554 574 1 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1
		 561 581 1 562 582 1 563 583 1 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1
		 570 590 1 571 591 1 572 592 1 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1
		 579 599 1 580 600 1 581 601 1 582 602 1 583 603 1 584 604 1 585 605 1;
	setAttr ".ed[1494:1659]" 586 606 1 587 607 1 588 608 1 589 609 1 590 610 1 591 611 1
		 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1 598 618 1 599 619 1 600 620 1
		 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1 607 627 1 608 628 1 609 629 1
		 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1 616 636 1 617 637 1 618 638 1
		 619 639 1 620 640 1 621 641 1 622 642 1 623 643 1 624 644 1 625 645 1 626 646 1 627 647 1
		 628 648 1 629 649 1 630 650 1 631 651 1 632 652 1 633 653 1 634 654 1 635 655 1 636 656 1
		 637 657 1 638 658 1 639 659 1 640 660 1 641 661 1 642 662 1 643 663 1 644 664 1 645 665 1
		 646 666 1 647 667 1 648 668 1 649 669 1 650 670 1 651 671 1 652 672 1 653 673 1 654 674 1
		 655 675 1 656 676 1 657 677 1 658 678 1 659 679 1 660 680 1 661 681 1 662 682 1 663 683 1
		 664 684 1 665 685 1 666 686 1 667 687 1 668 688 1 669 689 1 670 690 1 671 691 1 672 692 1
		 673 693 1 674 694 1 675 695 1 676 696 1 677 697 1 678 698 1 679 699 1 680 700 1 681 701 1
		 682 702 1 683 703 1 684 704 1 685 705 1 686 706 1 687 707 1 688 708 1 689 709 1 690 710 1
		 691 711 1 692 712 1 693 713 1 694 714 1 695 715 1 696 716 1 697 717 1 698 718 1 699 719 1
		 700 720 1 701 721 1 702 722 1 703 723 1 704 724 1 705 725 1 706 726 1 707 727 1 708 728 1
		 709 729 1 710 730 1 711 731 1 712 732 1 713 733 1 714 734 1 715 735 1 716 736 1 717 737 1
		 718 738 1 719 739 1 720 740 1 721 741 1 722 742 1 723 743 1 724 744 1 725 745 1 726 746 1
		 727 747 1 728 748 1 729 749 1 730 750 1 731 751 1 732 752 1 733 753 1 734 754 1 735 755 1
		 736 756 1 737 757 1 738 758 1 739 759 1 740 760 1 741 761 1 742 762 1 743 763 1 744 764 1
		 745 765 1 746 766 1 747 767 1 748 768 1 749 769 1 750 770 1 751 771 1;
	setAttr ".ed[1660:1825]" 752 772 1 753 773 1 754 774 1 755 775 1 756 776 1 757 777 1
		 758 778 1 759 779 1 760 780 1 761 781 1 762 782 1 763 783 1 764 784 1 765 785 1 766 786 1
		 767 787 1 768 788 1 769 789 1 770 790 1 771 791 1 772 792 1 773 793 1 774 794 1 775 795 1
		 776 796 1 777 797 1 778 798 1 779 799 1 780 800 1 781 801 1 782 802 1 783 803 1 784 804 1
		 785 805 1 786 806 1 787 807 1 788 808 1 789 809 1 790 810 1 791 811 1 792 812 1 793 813 1
		 794 814 1 795 815 1 796 816 1 797 817 1 798 818 1 799 819 1 800 820 1 801 821 1 802 822 1
		 803 823 1 804 824 1 805 825 1 806 826 1 807 827 1 808 828 1 809 829 1 810 830 1 811 831 1
		 812 832 1 813 833 1 814 834 1 815 835 1 816 836 1 817 837 1 818 838 1 819 839 1 820 840 1
		 821 841 1 822 842 1 823 843 1 824 844 1 825 845 1 826 846 1 827 847 1 828 848 1 829 849 1
		 830 850 1 831 851 1 832 852 1 833 853 1 834 854 1 835 855 1 836 856 1 837 857 1 838 858 1
		 839 859 1 840 860 1 841 861 1 842 862 1 843 863 1 844 864 1 845 865 1 846 866 1 847 867 1
		 848 868 1 849 869 1 850 870 1 851 871 1 852 872 1 853 873 1 854 874 1 855 875 1 856 876 1
		 857 877 1 858 878 1 859 879 1 860 880 1 861 881 1 862 882 1 863 883 1 864 884 1 865 885 1
		 866 886 1 867 887 1 868 888 1 869 889 1 870 890 1 871 891 1 892 512 1 892 513 1 892 514 1
		 892 515 1 892 516 1 892 517 1 892 518 1 892 519 1 892 520 1 892 521 1 892 522 1 892 523 1
		 892 524 1 892 525 1 892 526 1 892 527 1 892 528 1 892 529 1 892 530 1 892 531 1 872 893 1
		 873 893 1 874 893 1 875 893 1 876 893 1 877 893 1 878 893 1 879 893 1 880 893 1 881 893 1
		 882 893 1 883 893 1 884 893 1 885 893 1 886 893 1 887 893 1 888 893 1 889 893 1 890 893 1
		 891 893 1 894 895 0 895 896 0 896 897 0 897 898 0 898 899 0 899 900 0;
	setAttr ".ed[1826:1991]" 900 901 0 901 902 0 902 903 0 903 904 0 904 905 0 905 906 0
		 906 907 0 907 908 0 908 909 0 909 910 0 910 911 0 911 912 0 912 913 0 913 894 0 914 915 0
		 915 916 0 916 917 0 917 918 0 918 919 0 919 920 0 920 921 0 921 922 0 922 923 0 923 924 0
		 924 925 0 925 926 0 926 927 0 927 928 0 928 929 0 929 930 0 930 931 0 931 932 0 932 933 0
		 933 914 0 894 971 1 895 972 1 896 973 1 897 974 1 898 975 1 899 956 1 900 957 1 901 958 1
		 902 959 1 903 960 1 904 961 1 905 962 1 906 963 1 907 964 1 908 965 1 909 966 1 910 967 1
		 911 968 1 912 969 1 913 970 1 934 894 1 934 895 1 934 896 1 934 897 1 934 898 1 934 899 1
		 934 900 1 934 901 1 934 902 1 934 903 1 934 904 1 934 905 1 934 906 1 934 907 1 934 908 1
		 934 909 1 934 910 1 934 911 1 934 912 1 934 913 1 914 935 1 915 935 1 916 935 1 917 935 1
		 918 935 1 919 935 1 920 935 1 921 935 1 922 935 1 923 935 1 924 935 1 925 935 1 926 935 1
		 927 935 1 928 935 1 929 935 1 930 935 1 931 935 1 932 935 1 933 935 1 936 931 1 937 932 1
		 938 933 1 939 914 1 940 915 1 941 916 1 942 917 1 943 918 1 944 919 1 945 920 1 946 921 1
		 947 922 1 948 923 1 949 924 1 950 925 1 951 926 1 952 927 1 953 928 1 954 929 1 955 930 1
		 936 937 1 937 938 1 938 939 1 939 940 1 940 941 1 941 942 1 942 943 1 943 944 1 944 945 1
		 945 946 1 946 947 1 947 948 1 948 949 1 949 950 1 950 951 1 951 952 1 952 953 1 953 954 1
		 954 955 1 955 936 1 956 944 1 957 945 1 958 946 1 959 947 1 960 948 1 961 949 1 962 950 1
		 963 951 1 964 952 1 965 953 1 966 954 1 967 955 1 968 936 1 969 937 1 970 938 1 971 939 1
		 972 940 1 973 941 1 974 942 1 975 943 1 956 957 1 957 958 1 958 959 1 959 960 1 960 961 1
		 961 962 1 962 963 1 963 964 1 964 965 1 965 966 1 966 967 1 967 968 1;
	setAttr ".ed[1992:2157]" 968 969 1 969 970 1 970 971 1 971 972 1 972 973 1 973 974 1
		 974 975 1 975 956 1 976 985 0 978 984 0 980 987 0 982 986 0 976 978 0 977 979 0 978 980 0
		 979 981 0 980 982 0 981 983 0 982 976 0 983 977 0 984 979 0 985 977 0 986 983 0 987 981 0
		 984 985 1 985 986 1 986 987 1 987 984 1 988 997 0 990 996 0 992 999 0 994 998 0 988 990 0
		 989 991 0 990 992 0 991 993 0 992 994 0 993 995 0 994 988 0 995 989 0 996 991 0 997 989 0
		 998 995 0 999 993 0 996 997 1 997 998 1 998 999 1 999 996 1 1000 1001 1 1001 1002 1
		 1002 1003 1 1003 1004 1 1004 1005 1 1005 1006 1 1006 1007 1 1007 1008 1 1008 1009 1
		 1009 1010 1 1010 1011 1 1011 1012 1 1012 1013 1 1013 1014 1 1014 1015 1 1015 1016 1
		 1016 1017 1 1017 1018 1 1018 1019 1 1019 1000 1 1020 1021 1 1021 1022 1 1022 1023 1
		 1023 1024 1 1024 1025 1 1025 1026 1 1026 1027 1 1027 1028 1 1028 1029 1 1029 1030 1
		 1030 1031 1 1031 1032 1 1032 1033 1 1033 1034 1 1034 1035 1 1035 1036 1 1036 1037 1
		 1037 1038 1 1038 1039 1 1039 1020 1 1040 1041 1 1041 1042 1 1042 1043 1 1043 1044 1
		 1044 1045 1 1045 1046 1 1046 1047 1 1047 1048 1 1048 1049 1 1049 1050 1 1050 1051 1
		 1051 1052 1 1052 1053 1 1053 1054 1 1054 1055 1 1055 1056 1 1056 1057 1 1057 1058 1
		 1058 1059 1 1059 1040 1 1060 1061 1 1061 1062 1 1062 1063 1 1063 1064 1 1064 1065 1
		 1065 1066 1 1066 1067 1 1067 1068 1 1068 1069 1 1069 1070 1 1070 1071 1 1071 1072 1
		 1072 1073 1 1073 1074 1 1074 1075 1 1075 1076 1 1076 1077 1 1077 1078 1 1078 1079 1
		 1079 1060 1 1080 1081 1 1081 1082 1 1082 1083 1 1083 1084 1 1084 1085 1 1085 1086 1
		 1086 1087 1 1087 1088 1 1088 1089 1 1089 1090 1 1090 1091 1 1091 1092 1 1092 1093 1
		 1093 1094 1 1094 1095 1 1095 1096 1 1096 1097 1 1097 1098 1 1098 1099 1 1099 1080 1
		 1100 1101 1 1101 1102 1 1102 1103 1 1103 1104 1 1104 1105 1 1105 1106 1 1106 1107 1
		 1107 1108 1 1108 1109 1 1109 1110 1 1110 1111 1 1111 1112 1 1112 1113 1 1113 1114 1
		 1114 1115 1 1115 1116 1 1116 1117 1 1117 1118 1;
	setAttr ".ed[2158:2323]" 1118 1119 1 1119 1100 1 1120 1121 1 1121 1122 1 1122 1123 1
		 1123 1124 1 1124 1125 1 1125 1126 1 1126 1127 1 1127 1128 1 1128 1129 1 1129 1130 1
		 1130 1131 1 1131 1132 1 1132 1133 1 1133 1134 1 1134 1135 1 1135 1136 1 1136 1137 1
		 1137 1138 1 1138 1139 1 1139 1120 1 1140 1141 1 1141 1142 1 1142 1143 1 1143 1144 1
		 1144 1145 1 1145 1146 1 1146 1147 1 1147 1148 1 1148 1149 1 1149 1150 1 1150 1151 1
		 1151 1152 1 1152 1153 1 1153 1154 1 1154 1155 1 1155 1156 1 1156 1157 1 1157 1158 1
		 1158 1159 1 1159 1140 1 1160 1161 1 1161 1162 1 1162 1163 1 1163 1164 1 1164 1165 1
		 1165 1166 1 1166 1167 1 1167 1168 1 1168 1169 1 1169 1170 1 1170 1171 1 1171 1172 1
		 1172 1173 1 1173 1174 1 1174 1175 1 1175 1176 1 1176 1177 1 1177 1178 1 1178 1179 1
		 1179 1160 1 1180 1181 1 1181 1182 1 1182 1183 1 1183 1184 1 1184 1185 1 1185 1186 1
		 1186 1187 1 1187 1188 1 1188 1189 1 1189 1190 1 1190 1191 1 1191 1192 1 1192 1193 1
		 1193 1194 1 1194 1195 1 1195 1196 1 1196 1197 1 1197 1198 1 1198 1199 1 1199 1180 1
		 1200 1201 1 1201 1202 1 1202 1203 1 1203 1204 1 1204 1205 1 1205 1206 1 1206 1207 1
		 1207 1208 1 1208 1209 1 1209 1210 1 1210 1211 1 1211 1212 1 1212 1213 1 1213 1214 1
		 1214 1215 1 1215 1216 1 1216 1217 1 1217 1218 1 1218 1219 1 1219 1200 1 1220 1221 1
		 1221 1222 1 1222 1223 1 1223 1224 1 1224 1225 1 1225 1226 1 1226 1227 1 1227 1228 1
		 1228 1229 1 1229 1230 1 1230 1231 1 1231 1232 1 1232 1233 1 1233 1234 1 1234 1235 1
		 1235 1236 1 1236 1237 1 1237 1238 1 1238 1239 1 1239 1220 1 1240 1241 1 1241 1242 1
		 1242 1243 1 1243 1244 1 1244 1245 1 1245 1246 1 1246 1247 1 1247 1248 1 1248 1249 1
		 1249 1250 1 1250 1251 1 1251 1252 1 1252 1253 1 1253 1254 1 1254 1255 1 1255 1256 1
		 1256 1257 1 1257 1258 1 1258 1259 1 1259 1240 1 1260 1261 1 1261 1262 1 1262 1263 1
		 1263 1264 1 1264 1265 1 1265 1266 1 1266 1267 1 1267 1268 1 1268 1269 1 1269 1270 1
		 1270 1271 1 1271 1272 1 1272 1273 1 1273 1274 1 1274 1275 1 1275 1276 1 1276 1277 1
		 1277 1278 1 1278 1279 1 1279 1260 1 1280 1281 1 1281 1282 1 1282 1283 1 1283 1284 1;
	setAttr ".ed[2324:2489]" 1284 1285 1 1285 1286 1 1286 1287 1 1287 1288 1 1288 1289 1
		 1289 1290 1 1290 1291 1 1291 1292 1 1292 1293 1 1293 1294 1 1294 1295 1 1295 1296 1
		 1296 1297 1 1297 1298 1 1298 1299 1 1299 1280 1 1300 1301 1 1301 1302 1 1302 1303 1
		 1303 1304 1 1304 1305 1 1305 1306 1 1306 1307 1 1307 1308 1 1308 1309 1 1309 1310 1
		 1310 1311 1 1311 1312 1 1312 1313 1 1313 1314 1 1314 1315 1 1315 1316 1 1316 1317 1
		 1317 1318 1 1318 1319 1 1319 1300 1 1320 1321 1 1321 1322 1 1322 1323 1 1323 1324 1
		 1324 1325 1 1325 1326 1 1326 1327 1 1327 1328 1 1328 1329 1 1329 1330 1 1330 1331 1
		 1331 1332 1 1332 1333 1 1333 1334 1 1334 1335 1 1335 1336 1 1336 1337 1 1337 1338 1
		 1338 1339 1 1339 1320 1 1340 1341 1 1341 1342 1 1342 1343 1 1343 1344 1 1344 1345 1
		 1345 1346 1 1346 1347 1 1347 1348 1 1348 1349 1 1349 1350 1 1350 1351 1 1351 1352 1
		 1352 1353 1 1353 1354 1 1354 1355 1 1355 1356 1 1356 1357 1 1357 1358 1 1358 1359 1
		 1359 1340 1 1360 1361 1 1361 1362 1 1362 1363 1 1363 1364 1 1364 1365 1 1365 1366 1
		 1366 1367 1 1367 1368 1 1368 1369 1 1369 1370 1 1370 1371 1 1371 1372 1 1372 1373 1
		 1373 1374 1 1374 1375 1 1375 1376 1 1376 1377 1 1377 1378 1 1378 1379 1 1379 1360 1
		 1000 1020 1 1001 1021 1 1002 1022 1 1003 1023 1 1004 1024 1 1005 1025 1 1006 1026 1
		 1007 1027 1 1008 1028 1 1009 1029 1 1010 1030 1 1011 1031 1 1012 1032 1 1013 1033 1
		 1014 1034 1 1015 1035 1 1016 1036 1 1017 1037 1 1018 1038 1 1019 1039 1 1020 1040 1
		 1021 1041 1 1022 1042 1 1023 1043 1 1024 1044 1 1025 1045 1 1026 1046 1 1027 1047 1
		 1028 1048 1 1029 1049 1 1030 1050 1 1031 1051 1 1032 1052 1 1033 1053 1 1034 1054 1
		 1035 1055 1 1036 1056 1 1037 1057 1 1038 1058 1 1039 1059 1 1040 1060 1 1041 1061 1
		 1042 1062 1 1043 1063 1 1044 1064 1 1045 1065 1 1046 1066 1 1047 1067 1 1048 1068 1
		 1049 1069 1 1050 1070 1 1051 1071 1 1052 1072 1 1053 1073 1 1054 1074 1 1055 1075 1
		 1056 1076 1 1057 1077 1 1058 1078 1 1059 1079 1 1060 1080 1 1061 1081 1 1062 1082 1
		 1063 1083 1 1064 1084 1 1065 1085 1 1066 1086 1 1067 1087 1 1068 1088 1 1069 1089 1;
	setAttr ".ed[2490:2655]" 1070 1090 1 1071 1091 1 1072 1092 1 1073 1093 1 1074 1094 1
		 1075 1095 1 1076 1096 1 1077 1097 1 1078 1098 1 1079 1099 1 1080 1100 1 1081 1101 1
		 1082 1102 1 1083 1103 1 1084 1104 1 1085 1105 1 1086 1106 1 1087 1107 1 1088 1108 1
		 1089 1109 1 1090 1110 1 1091 1111 1 1092 1112 1 1093 1113 1 1094 1114 1 1095 1115 1
		 1096 1116 1 1097 1117 1 1098 1118 1 1099 1119 1 1100 1120 1 1101 1121 1 1102 1122 1
		 1103 1123 1 1104 1124 1 1105 1125 1 1106 1126 1 1107 1127 1 1108 1128 1 1109 1129 1
		 1110 1130 1 1111 1131 1 1112 1132 1 1113 1133 1 1114 1134 1 1115 1135 1 1116 1136 1
		 1117 1137 1 1118 1138 1 1119 1139 1 1120 1140 1 1121 1141 1 1122 1142 1 1123 1143 1
		 1124 1144 1 1125 1145 1 1126 1146 1 1127 1147 1 1128 1148 1 1129 1149 1 1130 1150 1
		 1131 1151 1 1132 1152 1 1133 1153 1 1134 1154 1 1135 1155 1 1136 1156 1 1137 1157 1
		 1138 1158 1 1139 1159 1 1140 1160 1 1141 1161 1 1142 1162 1 1143 1163 1 1144 1164 1
		 1145 1165 1 1146 1166 1 1147 1167 1 1148 1168 1 1149 1169 1 1150 1170 1 1151 1171 1
		 1152 1172 1 1153 1173 1 1154 1174 1 1155 1175 1 1156 1176 1 1157 1177 1 1158 1178 1
		 1159 1179 1 1160 1180 1 1161 1181 1 1162 1182 1 1163 1183 1 1164 1184 1 1165 1185 1
		 1166 1186 1 1167 1187 1 1168 1188 1 1169 1189 1 1170 1190 1 1171 1191 1 1172 1192 1
		 1173 1193 1 1174 1194 1 1175 1195 1 1176 1196 1 1177 1197 1 1178 1198 1 1179 1199 1
		 1180 1200 1 1181 1201 1 1182 1202 1 1183 1203 1 1184 1204 1 1185 1205 1 1186 1206 1
		 1187 1207 1 1188 1208 1 1189 1209 1 1190 1210 1 1191 1211 1 1192 1212 1 1193 1213 1
		 1194 1214 1 1195 1215 1 1196 1216 1 1197 1217 1 1198 1218 1 1199 1219 1 1200 1220 1
		 1201 1221 1 1202 1222 1 1203 1223 1 1204 1224 1 1205 1225 1 1206 1226 1 1207 1227 1
		 1208 1228 1 1209 1229 1 1210 1230 1 1211 1231 1 1212 1232 1 1213 1233 1 1214 1234 1
		 1215 1235 1 1216 1236 1 1217 1237 1 1218 1238 1 1219 1239 1 1220 1240 1 1221 1241 1
		 1222 1242 1 1223 1243 1 1224 1244 1 1225 1245 1 1226 1246 1 1227 1247 1 1228 1248 1
		 1229 1249 1 1230 1250 1 1231 1251 1 1232 1252 1 1233 1253 1 1234 1254 1 1235 1255 1;
	setAttr ".ed[2656:2819]" 1236 1256 1 1237 1257 1 1238 1258 1 1239 1259 1 1240 1260 1
		 1241 1261 1 1242 1262 1 1243 1263 1 1244 1264 1 1245 1265 1 1246 1266 1 1247 1267 1
		 1248 1268 1 1249 1269 1 1250 1270 1 1251 1271 1 1252 1272 1 1253 1273 1 1254 1274 1
		 1255 1275 1 1256 1276 1 1257 1277 1 1258 1278 1 1259 1279 1 1260 1280 1 1261 1281 1
		 1262 1282 1 1263 1283 1 1264 1284 1 1265 1285 1 1266 1286 1 1267 1287 1 1268 1288 1
		 1269 1289 1 1270 1290 1 1271 1291 1 1272 1292 1 1273 1293 1 1274 1294 1 1275 1295 1
		 1276 1296 1 1277 1297 1 1278 1298 1 1279 1299 1 1280 1300 1 1281 1301 1 1282 1302 1
		 1283 1303 1 1284 1304 1 1285 1305 1 1286 1306 1 1287 1307 1 1288 1308 1 1289 1309 1
		 1290 1310 1 1291 1311 1 1292 1312 1 1293 1313 1 1294 1314 1 1295 1315 1 1296 1316 1
		 1297 1317 1 1298 1318 1 1299 1319 1 1300 1320 1 1301 1321 1 1302 1322 1 1303 1323 1
		 1304 1324 1 1305 1325 1 1306 1326 1 1307 1327 1 1308 1328 1 1309 1329 1 1310 1330 1
		 1311 1331 1 1312 1332 1 1313 1333 1 1314 1334 1 1315 1335 1 1316 1336 1 1317 1337 1
		 1318 1338 1 1319 1339 1 1320 1340 1 1321 1341 1 1322 1342 1 1323 1343 1 1324 1344 1
		 1325 1345 1 1326 1346 1 1327 1347 1 1328 1348 1 1329 1349 1 1330 1350 1 1331 1351 1
		 1332 1352 1 1333 1353 1 1334 1354 1 1335 1355 1 1336 1356 1 1337 1357 1 1338 1358 1
		 1339 1359 1 1340 1360 1 1341 1361 1 1342 1362 1 1343 1363 1 1344 1364 1 1345 1365 1
		 1346 1366 1 1347 1367 1 1348 1368 1 1349 1369 1 1350 1370 1 1351 1371 1 1352 1372 1
		 1353 1373 1 1354 1374 1 1355 1375 1 1356 1376 1 1357 1377 1 1358 1378 1 1359 1379 1
		 1380 1000 1 1380 1001 1 1380 1002 1 1380 1003 1 1380 1004 1 1380 1005 1 1380 1006 1
		 1380 1007 1 1380 1008 1 1380 1009 1 1380 1010 1 1380 1011 1 1380 1012 1 1380 1013 1
		 1380 1014 1 1380 1015 1 1380 1016 1 1380 1017 1 1380 1018 1 1380 1019 1 1360 1381 1
		 1361 1381 1 1362 1381 1 1363 1381 1 1364 1381 1 1365 1381 1 1366 1381 1 1367 1381 1
		 1368 1381 1 1369 1381 1 1370 1381 1 1371 1381 1 1372 1381 1 1373 1381 1 1374 1381 1
		 1375 1381 1 1376 1381 1 1377 1381 1 1378 1381 1 1379 1381 1;
	setAttr -s 1460 -ch 5640 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 16 13 5 -13
		mu 0 4 0 1 2 3
		f 4 19 12 7 -16
		mu 0 4 4 0 3 5
		f 4 18 15 9 -15
		mu 0 4 6 4 5 7
		f 4 17 14 11 -14
		mu 0 4 8 6 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 2 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 13 14 15
		f 4 0 -17 -2 -5
		mu 0 4 13 1 0 14
		f 4 3 -18 -1 -11
		mu 0 4 16 6 8 17
		f 4 2 -19 -4 -9
		mu 0 4 18 4 6 16
		f 4 1 -20 -3 -7
		mu 0 4 14 0 4 18
		f 4 36 33 25 -33
		mu 0 4 19 20 21 22
		f 4 39 32 27 -36
		mu 0 4 23 19 22 24
		f 4 38 35 29 -35
		mu 0 4 25 23 24 26
		f 4 37 34 31 -34
		mu 0 4 27 25 26 28
		f 4 -32 -30 -28 -26
		mu 0 4 21 29 30 22
		f 4 30 24 26 28
		mu 0 4 31 32 33 34
		f 4 20 -37 -22 -25
		mu 0 4 32 20 19 33
		f 4 23 -38 -21 -31
		mu 0 4 35 25 27 36
		f 4 22 -39 -24 -29
		mu 0 4 37 23 25 35
		f 4 21 -40 -23 -27
		mu 0 4 33 19 23 37
		f 4 40 421 -61 -421
		mu 0 4 38 39 40 41
		f 4 41 422 -62 -422
		mu 0 4 39 42 43 40
		f 4 42 423 -63 -423
		mu 0 4 42 44 45 43
		f 4 43 424 -64 -424
		mu 0 4 44 46 47 45
		f 4 44 425 -65 -425
		mu 0 4 46 48 49 47
		f 4 45 426 -66 -426
		mu 0 4 48 50 51 49
		f 4 46 427 -67 -427
		mu 0 4 50 52 53 51
		f 4 47 428 -68 -428
		mu 0 4 52 54 55 53
		f 4 48 429 -69 -429
		mu 0 4 54 56 57 55
		f 4 49 430 -70 -430
		mu 0 4 56 58 59 57
		f 4 50 431 -71 -431
		mu 0 4 58 60 61 59
		f 4 51 432 -72 -432
		mu 0 4 60 62 63 61
		f 4 52 433 -73 -433
		mu 0 4 62 64 65 63
		f 4 53 434 -74 -434
		mu 0 4 64 66 67 65
		f 4 54 435 -75 -435
		mu 0 4 66 68 69 67
		f 4 55 436 -76 -436
		mu 0 4 68 70 71 69
		f 4 56 437 -77 -437
		mu 0 4 70 72 73 71
		f 4 57 438 -78 -438
		mu 0 4 72 74 75 73
		f 4 58 439 -79 -439
		mu 0 4 74 76 77 75
		f 4 59 420 -80 -440
		mu 0 4 76 78 79 77
		f 4 60 441 -81 -441
		mu 0 4 41 40 80 81
		f 4 61 442 -82 -442
		mu 0 4 40 43 82 80
		f 4 62 443 -83 -443
		mu 0 4 43 45 83 82
		f 4 63 444 -84 -444
		mu 0 4 45 47 84 83
		f 4 64 445 -85 -445
		mu 0 4 47 49 85 84
		f 4 65 446 -86 -446
		mu 0 4 49 51 86 85
		f 4 66 447 -87 -447
		mu 0 4 51 53 87 86
		f 4 67 448 -88 -448
		mu 0 4 53 55 88 87
		f 4 68 449 -89 -449
		mu 0 4 55 57 89 88
		f 4 69 450 -90 -450
		mu 0 4 57 59 90 89
		f 4 70 451 -91 -451
		mu 0 4 59 61 91 90
		f 4 71 452 -92 -452
		mu 0 4 61 63 92 91
		f 4 72 453 -93 -453
		mu 0 4 63 65 93 92
		f 4 73 454 -94 -454
		mu 0 4 65 67 94 93
		f 4 74 455 -95 -455
		mu 0 4 67 69 95 94
		f 4 75 456 -96 -456
		mu 0 4 69 71 96 95
		f 4 76 457 -97 -457
		mu 0 4 71 73 97 96
		f 4 77 458 -98 -458
		mu 0 4 73 75 98 97
		f 4 78 459 -99 -459
		mu 0 4 75 77 99 98
		f 4 79 440 -100 -460
		mu 0 4 77 79 100 99
		f 4 80 461 -101 -461
		mu 0 4 81 80 101 102
		f 4 81 462 -102 -462
		mu 0 4 80 82 103 101
		f 4 82 463 -103 -463
		mu 0 4 82 83 104 103
		f 4 83 464 -104 -464
		mu 0 4 83 84 105 104
		f 4 84 465 -105 -465
		mu 0 4 84 85 106 105
		f 4 85 466 -106 -466
		mu 0 4 85 86 107 106
		f 4 86 467 -107 -467
		mu 0 4 86 87 108 107
		f 4 87 468 -108 -468
		mu 0 4 87 88 109 108
		f 4 88 469 -109 -469
		mu 0 4 88 89 110 109
		f 4 89 470 -110 -470
		mu 0 4 89 90 111 110
		f 4 90 471 -111 -471
		mu 0 4 90 91 112 111
		f 4 91 472 -112 -472
		mu 0 4 91 92 113 112
		f 4 92 473 -113 -473
		mu 0 4 92 93 114 113
		f 4 93 474 -114 -474
		mu 0 4 93 94 115 114
		f 4 94 475 -115 -475
		mu 0 4 94 95 116 115
		f 4 95 476 -116 -476
		mu 0 4 95 96 117 116
		f 4 96 477 -117 -477
		mu 0 4 96 97 118 117
		f 4 97 478 -118 -478
		mu 0 4 97 98 119 118
		f 4 98 479 -119 -479
		mu 0 4 98 99 120 119
		f 4 99 460 -120 -480
		mu 0 4 99 100 121 120
		f 4 100 481 -121 -481
		mu 0 4 102 101 122 123
		f 4 101 482 -122 -482
		mu 0 4 101 103 124 122
		f 4 102 483 -123 -483
		mu 0 4 103 104 125 124
		f 4 103 484 -124 -484
		mu 0 4 104 105 126 125
		f 4 104 485 -125 -485
		mu 0 4 105 106 127 126
		f 4 105 486 -126 -486
		mu 0 4 106 107 128 127
		f 4 106 487 -127 -487
		mu 0 4 107 108 129 128
		f 4 107 488 -128 -488
		mu 0 4 108 109 130 129
		f 4 108 489 -129 -489
		mu 0 4 109 110 131 130
		f 4 109 490 -130 -490
		mu 0 4 110 111 132 131
		f 4 110 491 -131 -491
		mu 0 4 111 112 133 132
		f 4 111 492 -132 -492
		mu 0 4 112 113 134 133
		f 4 112 493 -133 -493
		mu 0 4 113 114 135 134
		f 4 113 494 -134 -494
		mu 0 4 114 115 136 135
		f 4 114 495 -135 -495
		mu 0 4 115 116 137 136
		f 4 115 496 -136 -496
		mu 0 4 116 117 138 137
		f 4 116 497 -137 -497
		mu 0 4 117 118 139 138
		f 4 117 498 -138 -498
		mu 0 4 118 119 140 139
		f 4 118 499 -139 -499
		mu 0 4 119 120 141 140
		f 4 119 480 -140 -500
		mu 0 4 120 121 142 141
		f 4 120 501 -141 -501
		mu 0 4 123 122 143 144
		f 4 121 502 -142 -502
		mu 0 4 122 124 145 143
		f 4 122 503 -143 -503
		mu 0 4 124 125 146 145
		f 4 123 504 -144 -504
		mu 0 4 125 126 147 146
		f 4 124 505 -145 -505
		mu 0 4 126 127 148 147
		f 4 125 506 -146 -506
		mu 0 4 127 128 149 148
		f 4 126 507 -147 -507
		mu 0 4 128 129 150 149
		f 4 127 508 -148 -508
		mu 0 4 129 130 151 150
		f 4 128 509 -149 -509
		mu 0 4 130 131 152 151
		f 4 129 510 -150 -510
		mu 0 4 131 132 153 152
		f 4 130 511 -151 -511
		mu 0 4 132 133 154 153
		f 4 131 512 -152 -512
		mu 0 4 133 134 155 154
		f 4 132 513 -153 -513
		mu 0 4 134 135 156 155
		f 4 133 514 -154 -514
		mu 0 4 135 136 157 156
		f 4 134 515 -155 -515
		mu 0 4 136 137 158 157
		f 4 135 516 -156 -516
		mu 0 4 137 138 159 158
		f 4 136 517 -157 -517
		mu 0 4 138 139 160 159
		f 4 137 518 -158 -518
		mu 0 4 139 140 161 160
		f 4 138 519 -159 -519
		mu 0 4 140 141 162 161
		f 4 139 500 -160 -520
		mu 0 4 141 142 163 162
		f 4 140 521 -161 -521
		mu 0 4 144 143 164 165
		f 4 141 522 -162 -522
		mu 0 4 143 145 166 164
		f 4 142 523 -163 -523
		mu 0 4 145 146 167 166
		f 4 143 524 -164 -524
		mu 0 4 146 147 168 167
		f 4 144 525 -165 -525
		mu 0 4 147 148 169 168
		f 4 145 526 -166 -526
		mu 0 4 148 149 170 169
		f 4 146 527 -167 -527
		mu 0 4 149 150 171 170
		f 4 147 528 -168 -528
		mu 0 4 150 151 172 171
		f 4 148 529 -169 -529
		mu 0 4 151 152 173 172
		f 4 149 530 -170 -530
		mu 0 4 152 153 174 173
		f 4 150 531 -171 -531
		mu 0 4 153 154 175 174
		f 4 151 532 -172 -532
		mu 0 4 154 155 176 175
		f 4 152 533 -173 -533
		mu 0 4 155 156 177 176
		f 4 153 534 -174 -534
		mu 0 4 156 157 178 177
		f 4 154 535 -175 -535
		mu 0 4 157 158 179 178
		f 4 155 536 -176 -536
		mu 0 4 158 159 180 179
		f 4 156 537 -177 -537
		mu 0 4 159 160 181 180
		f 4 157 538 -178 -538
		mu 0 4 160 161 182 181
		f 4 158 539 -179 -539
		mu 0 4 161 162 183 182
		f 4 159 520 -180 -540
		mu 0 4 162 163 184 183
		f 4 160 541 -181 -541
		mu 0 4 165 164 185 186
		f 4 161 542 -182 -542
		mu 0 4 164 166 187 185
		f 4 162 543 -183 -543
		mu 0 4 166 167 188 187
		f 4 163 544 -184 -544
		mu 0 4 167 168 189 188
		f 4 164 545 -185 -545
		mu 0 4 168 169 190 189
		f 4 165 546 -186 -546
		mu 0 4 169 170 191 190
		f 4 166 547 -187 -547
		mu 0 4 170 171 192 191
		f 4 167 548 -188 -548
		mu 0 4 171 172 193 192
		f 4 168 549 -189 -549
		mu 0 4 172 173 194 193
		f 4 169 550 -190 -550
		mu 0 4 173 174 195 194
		f 4 170 551 -191 -551
		mu 0 4 174 175 196 195
		f 4 171 552 -192 -552
		mu 0 4 175 176 197 196
		f 4 172 553 -193 -553
		mu 0 4 176 177 198 197
		f 4 173 554 -194 -554
		mu 0 4 177 178 199 198
		f 4 174 555 -195 -555
		mu 0 4 178 179 200 199
		f 4 175 556 -196 -556
		mu 0 4 179 180 201 200
		f 4 176 557 -197 -557
		mu 0 4 180 181 202 201
		f 4 177 558 -198 -558
		mu 0 4 181 182 203 202
		f 4 178 559 -199 -559
		mu 0 4 182 183 204 203
		f 4 179 540 -200 -560
		mu 0 4 183 184 205 204
		f 4 180 561 -201 -561
		mu 0 4 186 185 206 207
		f 4 181 562 -202 -562
		mu 0 4 185 187 208 206
		f 4 182 563 -203 -563
		mu 0 4 187 188 209 208
		f 4 183 564 -204 -564
		mu 0 4 188 189 210 209
		f 4 184 565 -205 -565
		mu 0 4 189 190 211 210
		f 4 185 566 -206 -566
		mu 0 4 190 191 212 211
		f 4 186 567 -207 -567
		mu 0 4 191 192 213 212
		f 4 187 568 -208 -568
		mu 0 4 192 193 214 213
		f 4 188 569 -209 -569
		mu 0 4 193 194 215 214
		f 4 189 570 -210 -570
		mu 0 4 194 195 216 215
		f 4 190 571 -211 -571
		mu 0 4 195 196 217 216
		f 4 191 572 -212 -572
		mu 0 4 196 197 218 217
		f 4 192 573 -213 -573
		mu 0 4 197 198 219 218
		f 4 193 574 -214 -574
		mu 0 4 198 199 220 219
		f 4 194 575 -215 -575
		mu 0 4 199 200 221 220
		f 4 195 576 -216 -576
		mu 0 4 200 201 222 221
		f 4 196 577 -217 -577
		mu 0 4 201 202 223 222
		f 4 197 578 -218 -578
		mu 0 4 202 203 224 223
		f 4 198 579 -219 -579
		mu 0 4 203 204 225 224
		f 4 199 560 -220 -580
		mu 0 4 204 205 226 225
		f 4 200 581 -221 -581
		mu 0 4 207 206 227 228
		f 4 201 582 -222 -582
		mu 0 4 206 208 229 227
		f 4 202 583 -223 -583
		mu 0 4 208 209 230 229
		f 4 203 584 -224 -584
		mu 0 4 209 210 231 230
		f 4 204 585 -225 -585
		mu 0 4 210 211 232 231
		f 4 205 586 -226 -586
		mu 0 4 211 212 233 232
		f 4 206 587 -227 -587
		mu 0 4 212 213 234 233
		f 4 207 588 -228 -588
		mu 0 4 213 214 235 234
		f 4 208 589 -229 -589
		mu 0 4 214 215 236 235
		f 4 209 590 -230 -590
		mu 0 4 215 216 237 236
		f 4 210 591 -231 -591
		mu 0 4 216 217 238 237
		f 4 211 592 -232 -592
		mu 0 4 217 218 239 238
		f 4 212 593 -233 -593
		mu 0 4 218 219 240 239
		f 4 213 594 -234 -594
		mu 0 4 219 220 241 240
		f 4 214 595 -235 -595
		mu 0 4 220 221 242 241
		f 4 215 596 -236 -596
		mu 0 4 221 222 243 242
		f 4 216 597 -237 -597
		mu 0 4 222 223 244 243
		f 4 217 598 -238 -598
		mu 0 4 223 224 245 244
		f 4 218 599 -239 -599
		mu 0 4 224 225 246 245
		f 4 219 580 -240 -600
		mu 0 4 225 226 247 246
		f 4 220 601 -241 -601
		mu 0 4 228 227 248 249
		f 4 221 602 -242 -602
		mu 0 4 227 229 250 248
		f 4 222 603 -243 -603
		mu 0 4 229 230 251 250
		f 4 223 604 -244 -604
		mu 0 4 230 231 252 251
		f 4 224 605 -245 -605
		mu 0 4 231 232 253 252
		f 4 225 606 -246 -606
		mu 0 4 232 233 254 253
		f 4 226 607 -247 -607
		mu 0 4 233 234 255 254
		f 4 227 608 -248 -608
		mu 0 4 234 235 256 255
		f 4 228 609 -249 -609
		mu 0 4 235 236 257 256
		f 4 229 610 -250 -610
		mu 0 4 236 237 258 257
		f 4 230 611 -251 -611
		mu 0 4 237 238 259 258
		f 4 231 612 -252 -612
		mu 0 4 238 239 260 259
		f 4 232 613 -253 -613
		mu 0 4 239 240 261 260
		f 4 233 614 -254 -614
		mu 0 4 240 241 262 261
		f 4 234 615 -255 -615
		mu 0 4 241 242 263 262
		f 4 235 616 -256 -616
		mu 0 4 242 243 264 263
		f 4 236 617 -257 -617
		mu 0 4 243 244 265 264
		f 4 237 618 -258 -618
		mu 0 4 244 245 266 265
		f 4 238 619 -259 -619
		mu 0 4 245 246 267 266
		f 4 239 600 -260 -620
		mu 0 4 246 247 268 267
		f 4 240 621 -261 -621
		mu 0 4 249 248 269 270
		f 4 241 622 -262 -622
		mu 0 4 248 250 271 269
		f 4 242 623 -263 -623
		mu 0 4 250 251 272 271
		f 4 243 624 -264 -624
		mu 0 4 251 252 273 272
		f 4 244 625 -265 -625
		mu 0 4 252 253 274 273
		f 4 245 626 -266 -626
		mu 0 4 253 254 275 274
		f 4 246 627 -267 -627
		mu 0 4 254 255 276 275
		f 4 247 628 -268 -628
		mu 0 4 255 256 277 276
		f 4 248 629 -269 -629
		mu 0 4 256 257 278 277
		f 4 249 630 -270 -630
		mu 0 4 257 258 279 278
		f 4 250 631 -271 -631
		mu 0 4 258 259 280 279
		f 4 251 632 -272 -632
		mu 0 4 259 260 281 280
		f 4 252 633 -273 -633
		mu 0 4 260 261 282 281
		f 4 253 634 -274 -634
		mu 0 4 261 262 283 282
		f 4 254 635 -275 -635
		mu 0 4 262 263 284 283
		f 4 255 636 -276 -636
		mu 0 4 263 264 285 284
		f 4 256 637 -277 -637
		mu 0 4 264 265 286 285
		f 4 257 638 -278 -638
		mu 0 4 265 266 287 286
		f 4 258 639 -279 -639
		mu 0 4 266 267 288 287
		f 4 259 620 -280 -640
		mu 0 4 267 268 289 288
		f 4 260 641 -281 -641
		mu 0 4 270 269 290 291
		f 4 261 642 -282 -642
		mu 0 4 269 271 292 290
		f 4 262 643 -283 -643
		mu 0 4 271 272 293 292
		f 4 263 644 -284 -644
		mu 0 4 272 273 294 293
		f 4 264 645 -285 -645
		mu 0 4 273 274 295 294
		f 4 265 646 -286 -646
		mu 0 4 274 275 296 295
		f 4 266 647 -287 -647
		mu 0 4 275 276 297 296
		f 4 267 648 -288 -648
		mu 0 4 276 277 298 297
		f 4 268 649 -289 -649
		mu 0 4 277 278 299 298
		f 4 269 650 -290 -650
		mu 0 4 278 279 300 299
		f 4 270 651 -291 -651
		mu 0 4 279 280 301 300
		f 4 271 652 -292 -652
		mu 0 4 280 281 302 301
		f 4 272 653 -293 -653
		mu 0 4 281 282 303 302
		f 4 273 654 -294 -654
		mu 0 4 282 283 304 303
		f 4 274 655 -295 -655
		mu 0 4 283 284 305 304
		f 4 275 656 -296 -656
		mu 0 4 284 285 306 305
		f 4 276 657 -297 -657
		mu 0 4 285 286 307 306
		f 4 277 658 -298 -658
		mu 0 4 286 287 308 307
		f 4 278 659 -299 -659
		mu 0 4 287 288 309 308
		f 4 279 640 -300 -660
		mu 0 4 288 289 310 309
		f 4 280 661 -301 -661
		mu 0 4 291 290 311 312
		f 4 281 662 -302 -662
		mu 0 4 290 292 313 311
		f 4 282 663 -303 -663
		mu 0 4 292 293 314 313
		f 4 283 664 -304 -664
		mu 0 4 293 294 315 314
		f 4 284 665 -305 -665
		mu 0 4 294 295 316 315
		f 4 285 666 -306 -666
		mu 0 4 295 296 317 316
		f 4 286 667 -307 -667
		mu 0 4 296 297 318 317
		f 4 287 668 -308 -668
		mu 0 4 297 298 319 318
		f 4 288 669 -309 -669
		mu 0 4 298 299 320 319
		f 4 289 670 -310 -670
		mu 0 4 299 300 321 320
		f 4 290 671 -311 -671
		mu 0 4 300 301 322 321
		f 4 291 672 -312 -672
		mu 0 4 301 302 323 322
		f 4 292 673 -313 -673
		mu 0 4 302 303 324 323
		f 4 293 674 -314 -674
		mu 0 4 303 304 325 324
		f 4 294 675 -315 -675
		mu 0 4 304 305 326 325
		f 4 295 676 -316 -676
		mu 0 4 305 306 327 326
		f 4 296 677 -317 -677
		mu 0 4 306 307 328 327
		f 4 297 678 -318 -678
		mu 0 4 307 308 329 328
		f 4 298 679 -319 -679
		mu 0 4 308 309 330 329
		f 4 299 660 -320 -680
		mu 0 4 309 310 331 330
		f 4 300 681 -321 -681
		mu 0 4 312 311 332 333
		f 4 301 682 -322 -682
		mu 0 4 311 313 334 332
		f 4 302 683 -323 -683
		mu 0 4 313 314 335 334
		f 4 303 684 -324 -684
		mu 0 4 314 315 336 335
		f 4 304 685 -325 -685
		mu 0 4 315 316 337 336
		f 4 305 686 -326 -686
		mu 0 4 316 317 338 337
		f 4 306 687 -327 -687
		mu 0 4 317 318 339 338
		f 4 307 688 -328 -688
		mu 0 4 318 319 340 339
		f 4 308 689 -329 -689
		mu 0 4 319 320 341 340
		f 4 309 690 -330 -690
		mu 0 4 320 321 342 341
		f 4 310 691 -331 -691
		mu 0 4 321 322 343 342
		f 4 311 692 -332 -692
		mu 0 4 322 323 344 343
		f 4 312 693 -333 -693
		mu 0 4 323 324 345 344
		f 4 313 694 -334 -694
		mu 0 4 324 325 346 345
		f 4 314 695 -335 -695
		mu 0 4 325 326 347 346
		f 4 315 696 -336 -696
		mu 0 4 326 327 348 347
		f 4 316 697 -337 -697
		mu 0 4 327 328 349 348
		f 4 317 698 -338 -698
		mu 0 4 328 329 350 349
		f 4 318 699 -339 -699
		mu 0 4 329 330 351 350
		f 4 319 680 -340 -700
		mu 0 4 330 331 352 351
		f 4 320 701 -341 -701
		mu 0 4 333 332 353 354
		f 4 321 702 -342 -702
		mu 0 4 332 334 355 353
		f 4 322 703 -343 -703
		mu 0 4 334 335 356 355
		f 4 323 704 -344 -704
		mu 0 4 335 336 357 356
		f 4 324 705 -345 -705
		mu 0 4 336 337 358 357
		f 4 325 706 -346 -706
		mu 0 4 337 338 359 358
		f 4 326 707 -347 -707
		mu 0 4 338 339 360 359
		f 4 327 708 -348 -708
		mu 0 4 339 340 361 360
		f 4 328 709 -349 -709
		mu 0 4 340 341 362 361
		f 4 329 710 -350 -710
		mu 0 4 341 342 363 362
		f 4 330 711 -351 -711
		mu 0 4 342 343 364 363
		f 4 331 712 -352 -712
		mu 0 4 343 344 365 364
		f 4 332 713 -353 -713
		mu 0 4 344 345 366 365
		f 4 333 714 -354 -714
		mu 0 4 345 346 367 366
		f 4 334 715 -355 -715
		mu 0 4 346 347 368 367
		f 4 335 716 -356 -716
		mu 0 4 347 348 369 368
		f 4 336 717 -357 -717
		mu 0 4 348 349 370 369
		f 4 337 718 -358 -718
		mu 0 4 349 350 371 370
		f 4 338 719 -359 -719
		mu 0 4 350 351 372 371
		f 4 339 700 -360 -720
		mu 0 4 351 352 373 372
		f 4 340 721 -361 -721
		mu 0 4 354 353 374 375
		f 4 341 722 -362 -722
		mu 0 4 353 355 376 374
		f 4 342 723 -363 -723
		mu 0 4 355 356 377 376
		f 4 343 724 -364 -724
		mu 0 4 356 357 378 377
		f 4 344 725 -365 -725
		mu 0 4 357 358 379 378
		f 4 345 726 -366 -726
		mu 0 4 358 359 380 379
		f 4 346 727 -367 -727
		mu 0 4 359 360 381 380
		f 4 347 728 -368 -728
		mu 0 4 360 361 382 381
		f 4 348 729 -369 -729
		mu 0 4 361 362 383 382
		f 4 349 730 -370 -730
		mu 0 4 362 363 384 383
		f 4 350 731 -371 -731
		mu 0 4 363 364 385 384
		f 4 351 732 -372 -732
		mu 0 4 364 365 386 385
		f 4 352 733 -373 -733
		mu 0 4 365 366 387 386
		f 4 353 734 -374 -734
		mu 0 4 366 367 388 387
		f 4 354 735 -375 -735
		mu 0 4 367 368 389 388
		f 4 355 736 -376 -736
		mu 0 4 368 369 390 389
		f 4 356 737 -377 -737
		mu 0 4 369 370 391 390
		f 4 357 738 -378 -738
		mu 0 4 370 371 392 391
		f 4 358 739 -379 -739
		mu 0 4 371 372 393 392
		f 4 359 720 -380 -740
		mu 0 4 372 373 394 393
		f 4 360 741 -381 -741
		mu 0 4 375 374 395 396
		f 4 361 742 -382 -742
		mu 0 4 374 376 397 395
		f 4 362 743 -383 -743
		mu 0 4 376 377 398 397
		f 4 363 744 -384 -744
		mu 0 4 377 378 399 398
		f 4 364 745 -385 -745
		mu 0 4 378 379 400 399
		f 4 365 746 -386 -746
		mu 0 4 379 380 401 400
		f 4 366 747 -387 -747
		mu 0 4 380 381 402 401
		f 4 367 748 -388 -748
		mu 0 4 381 382 403 402
		f 4 368 749 -389 -749
		mu 0 4 382 383 404 403
		f 4 369 750 -390 -750
		mu 0 4 383 384 405 404
		f 4 370 751 -391 -751
		mu 0 4 384 385 406 405
		f 4 371 752 -392 -752
		mu 0 4 385 386 407 406
		f 4 372 753 -393 -753
		mu 0 4 386 387 408 407
		f 4 373 754 -394 -754
		mu 0 4 387 388 409 408
		f 4 374 755 -395 -755
		mu 0 4 388 389 410 409
		f 4 375 756 -396 -756
		mu 0 4 389 390 411 410
		f 4 376 757 -397 -757
		mu 0 4 390 391 412 411
		f 4 377 758 -398 -758
		mu 0 4 391 392 413 412
		f 4 378 759 -399 -759
		mu 0 4 392 393 414 413
		f 4 379 740 -400 -760
		mu 0 4 393 394 415 414
		f 4 380 761 -401 -761
		mu 0 4 396 395 416 417
		f 4 381 762 -402 -762
		mu 0 4 395 397 418 416
		f 4 382 763 -403 -763
		mu 0 4 397 398 419 418
		f 4 383 764 -404 -764
		mu 0 4 398 399 420 419
		f 4 384 765 -405 -765
		mu 0 4 399 400 421 420
		f 4 385 766 -406 -766
		mu 0 4 400 401 422 421
		f 4 386 767 -407 -767
		mu 0 4 401 402 423 422
		f 4 387 768 -408 -768
		mu 0 4 402 403 424 423
		f 4 388 769 -409 -769
		mu 0 4 403 404 425 424
		f 4 389 770 -410 -770
		mu 0 4 404 405 426 425
		f 4 390 771 -411 -771
		mu 0 4 405 406 427 426
		f 4 391 772 -412 -772
		mu 0 4 406 407 428 427
		f 4 392 773 -413 -773
		mu 0 4 407 408 429 428
		f 4 393 774 -414 -774
		mu 0 4 408 409 430 429
		f 4 394 775 -415 -775
		mu 0 4 409 410 431 430
		f 4 395 776 -416 -776
		mu 0 4 410 411 432 431
		f 4 396 777 -417 -777
		mu 0 4 411 412 433 432
		f 4 397 778 -418 -778
		mu 0 4 412 413 434 433
		f 4 398 779 -419 -779
		mu 0 4 413 414 435 434
		f 4 399 760 -420 -780
		mu 0 4 414 415 436 435
		f 3 -41 -781 781
		mu 0 3 39 38 437
		f 3 -42 -782 782
		mu 0 3 42 39 438
		f 3 -43 -783 783
		mu 0 3 44 42 439
		f 3 -44 -784 784
		mu 0 3 46 44 440
		f 3 -45 -785 785
		mu 0 3 48 46 441
		f 3 -46 -786 786
		mu 0 3 50 48 442
		f 3 -47 -787 787
		mu 0 3 52 50 443
		f 3 -48 -788 788
		mu 0 3 54 52 444
		f 3 -49 -789 789
		mu 0 3 56 54 445
		f 3 -50 -790 790
		mu 0 3 58 56 446
		f 3 -51 -791 791
		mu 0 3 60 58 447
		f 3 -52 -792 792
		mu 0 3 62 60 448
		f 3 -53 -793 793
		mu 0 3 64 62 449
		f 3 -54 -794 794
		mu 0 3 66 64 450
		f 3 -55 -795 795
		mu 0 3 68 66 451
		f 3 -56 -796 796
		mu 0 3 70 68 452
		f 3 -57 -797 797
		mu 0 3 72 70 453
		f 3 -58 -798 798
		mu 0 3 74 72 454
		f 3 -59 -799 799
		mu 0 3 76 74 455
		f 3 -60 -800 780
		mu 0 3 78 76 456
		f 3 400 801 -801
		mu 0 3 417 416 457
		f 3 401 802 -802
		mu 0 3 416 418 458
		f 3 402 803 -803
		mu 0 3 418 419 459
		f 3 403 804 -804
		mu 0 3 419 420 460
		f 3 404 805 -805
		mu 0 3 420 421 461
		f 3 405 806 -806
		mu 0 3 421 422 462
		f 3 406 807 -807
		mu 0 3 422 423 463
		f 3 407 808 -808
		mu 0 3 423 424 464
		f 3 408 809 -809
		mu 0 3 424 425 465
		f 3 409 810 -810
		mu 0 3 425 426 466
		f 3 410 811 -811
		mu 0 3 426 427 467
		f 3 411 812 -812
		mu 0 3 427 428 468
		f 3 412 813 -813
		mu 0 3 428 429 469
		f 3 413 814 -814
		mu 0 3 429 430 470
		f 3 414 815 -815
		mu 0 3 430 431 471
		f 3 415 816 -816
		mu 0 3 431 432 472
		f 3 416 817 -817
		mu 0 3 432 433 473
		f 3 417 818 -818
		mu 0 3 433 434 474
		f 3 418 819 -819
		mu 0 3 434 435 475
		f 3 419 800 -820
		mu 0 3 435 436 476
		f 4 836 833 825 -833
		mu 0 4 477 478 479 480
		f 4 839 832 827 -836
		mu 0 4 481 477 480 482
		f 4 838 835 829 -835
		mu 0 4 483 481 482 484
		f 4 837 834 831 -834
		mu 0 4 485 483 484 486
		f 4 -832 -830 -828 -826
		mu 0 4 479 487 488 480
		f 4 830 824 826 828
		mu 0 4 489 490 491 492
		f 4 820 -837 -822 -825
		mu 0 4 490 478 477 491
		f 4 823 -838 -821 -831
		mu 0 4 493 483 485 494
		f 4 822 -839 -824 -829
		mu 0 4 495 481 483 493
		f 4 821 -840 -823 -827
		mu 0 4 491 477 481 495
		f 4 856 853 845 -853
		mu 0 4 496 497 498 499
		f 4 859 852 847 -856
		mu 0 4 500 496 499 501
		f 4 858 855 849 -855
		mu 0 4 502 500 501 503
		f 4 857 854 851 -854
		mu 0 4 504 502 503 505
		f 4 -852 -850 -848 -846
		mu 0 4 498 506 507 499
		f 4 850 844 846 848
		mu 0 4 508 509 510 511
		f 4 840 -857 -842 -845
		mu 0 4 509 497 496 510
		f 4 843 -858 -841 -851
		mu 0 4 512 502 504 513
		f 4 842 -859 -844 -849
		mu 0 4 514 500 502 512
		f 4 841 -860 -843 -847
		mu 0 4 510 496 500 514
		f 4 983 964 -881 -964
		mu 0 4 515 516 517 518
		f 4 984 965 -882 -965
		mu 0 4 516 519 520 517
		f 4 985 966 -883 -966
		mu 0 4 519 521 522 520
		f 4 986 967 -884 -967
		mu 0 4 521 523 524 522
		f 4 987 968 -885 -968
		mu 0 4 523 525 526 524
		f 4 988 969 -886 -969
		mu 0 4 525 527 528 526
		f 4 989 970 -887 -970
		mu 0 4 527 529 530 528
		f 4 990 971 -888 -971
		mu 0 4 529 531 532 530
		f 4 991 972 -889 -972
		mu 0 4 531 533 534 532
		f 4 992 973 -890 -973
		mu 0 4 533 535 536 534
		f 4 993 974 -891 -974
		mu 0 4 535 537 538 536
		f 4 994 975 -892 -975
		mu 0 4 537 539 540 538
		f 4 995 976 -893 -976
		mu 0 4 539 541 542 540
		f 4 996 977 -894 -977
		mu 0 4 541 543 544 542
		f 4 997 978 -895 -978
		mu 0 4 543 545 546 544
		f 4 998 979 -896 -979
		mu 0 4 545 547 548 546
		f 4 999 960 -897 -980
		mu 0 4 547 549 550 548
		f 4 980 961 -898 -961
		mu 0 4 549 551 552 550
		f 4 981 962 -899 -962
		mu 0 4 551 553 554 552
		f 4 982 963 -900 -963
		mu 0 4 553 555 556 554
		f 3 -861 -921 921
		mu 0 3 557 558 559
		f 3 -862 -922 922
		mu 0 3 560 557 559
		f 3 -863 -923 923
		mu 0 3 561 560 559
		f 3 -864 -924 924
		mu 0 3 562 561 559
		f 3 -865 -925 925
		mu 0 3 563 562 559
		f 3 -866 -926 926
		mu 0 3 564 563 559
		f 3 -867 -927 927
		mu 0 3 565 564 559
		f 3 -868 -928 928
		mu 0 3 566 565 559
		f 3 -869 -929 929
		mu 0 3 567 566 559
		f 3 -870 -930 930
		mu 0 3 568 567 559
		f 3 -871 -931 931
		mu 0 3 569 568 559
		f 3 -872 -932 932
		mu 0 3 570 569 559
		f 3 -873 -933 933
		mu 0 3 571 570 559
		f 3 -874 -934 934
		mu 0 3 572 571 559
		f 3 -875 -935 935
		mu 0 3 573 572 559
		f 3 -876 -936 936
		mu 0 3 574 573 559
		f 3 -877 -937 937
		mu 0 3 575 574 559
		f 3 -878 -938 938
		mu 0 3 576 575 559
		f 3 -879 -939 939
		mu 0 3 577 576 559
		f 3 -880 -940 920
		mu 0 3 558 577 559
		f 3 880 941 -941
		mu 0 3 578 579 580
		f 3 881 942 -942
		mu 0 3 579 581 580
		f 3 882 943 -943
		mu 0 3 581 582 580
		f 3 883 944 -944
		mu 0 3 582 583 580
		f 3 884 945 -945
		mu 0 3 583 584 580
		f 3 885 946 -946
		mu 0 3 584 585 580
		f 3 886 947 -947
		mu 0 3 585 586 580
		f 3 887 948 -948
		mu 0 3 586 587 580
		f 3 888 949 -949
		mu 0 3 587 588 580
		f 3 889 950 -950
		mu 0 3 588 589 580
		f 3 890 951 -951
		mu 0 3 589 590 580
		f 3 891 952 -952
		mu 0 3 590 591 580
		f 3 892 953 -953
		mu 0 3 591 592 580
		f 3 893 954 -954
		mu 0 3 592 593 580
		f 3 894 955 -955
		mu 0 3 593 594 580
		f 3 895 956 -956
		mu 0 3 594 595 580
		f 3 896 957 -957
		mu 0 3 595 596 580
		f 3 897 958 -958
		mu 0 3 596 597 580
		f 3 898 959 -959
		mu 0 3 597 598 580
		f 3 899 940 -960
		mu 0 3 598 578 580;
	setAttr ".fc[500:999]"
		f 4 1032 1013 -981 -1013
		mu 0 4 599 600 551 549
		f 4 1033 1014 -982 -1014
		mu 0 4 600 601 553 551
		f 4 1034 1015 -983 -1015
		mu 0 4 601 602 555 553
		f 4 1035 1016 -984 -1016
		mu 0 4 603 604 516 515
		f 4 1036 1017 -985 -1017
		mu 0 4 604 605 519 516
		f 4 1037 1018 -986 -1018
		mu 0 4 605 606 521 519
		f 4 1038 1019 -987 -1019
		mu 0 4 606 607 523 521
		f 4 1039 1000 -988 -1020
		mu 0 4 607 608 525 523
		f 4 1020 1001 -989 -1001
		mu 0 4 608 609 527 525
		f 4 1021 1002 -990 -1002
		mu 0 4 609 610 529 527
		f 4 1022 1003 -991 -1003
		mu 0 4 610 611 531 529
		f 4 1023 1004 -992 -1004
		mu 0 4 611 612 533 531
		f 4 1024 1005 -993 -1005
		mu 0 4 612 613 535 533
		f 4 1025 1006 -994 -1006
		mu 0 4 613 614 537 535
		f 4 1026 1007 -995 -1007
		mu 0 4 614 615 539 537
		f 4 1027 1008 -996 -1008
		mu 0 4 615 616 541 539
		f 4 1028 1009 -997 -1009
		mu 0 4 616 617 543 541
		f 4 1029 1010 -998 -1010
		mu 0 4 617 618 545 543
		f 4 1030 1011 -999 -1011
		mu 0 4 618 619 547 545
		f 4 1031 1012 -1000 -1012
		mu 0 4 619 599 549 547
		f 4 865 906 -1021 -906
		mu 0 4 620 621 609 608
		f 4 866 907 -1022 -907
		mu 0 4 621 622 610 609
		f 4 867 908 -1023 -908
		mu 0 4 622 623 611 610
		f 4 868 909 -1024 -909
		mu 0 4 623 624 612 611
		f 4 869 910 -1025 -910
		mu 0 4 624 625 613 612
		f 4 870 911 -1026 -911
		mu 0 4 625 626 614 613
		f 4 871 912 -1027 -912
		mu 0 4 626 627 615 614
		f 4 872 913 -1028 -913
		mu 0 4 627 628 616 615
		f 4 873 914 -1029 -914
		mu 0 4 628 629 617 616
		f 4 874 915 -1030 -915
		mu 0 4 629 630 618 617
		f 4 875 916 -1031 -916
		mu 0 4 630 631 619 618
		f 4 876 917 -1032 -917
		mu 0 4 631 632 599 619
		f 4 877 918 -1033 -918
		mu 0 4 632 633 600 599
		f 4 878 919 -1034 -919
		mu 0 4 633 634 601 600
		f 4 879 900 -1035 -920
		mu 0 4 634 635 602 601
		f 4 860 901 -1036 -901
		mu 0 4 636 637 604 603
		f 4 861 902 -1037 -902
		mu 0 4 637 638 605 604
		f 4 862 903 -1038 -903
		mu 0 4 638 639 606 605
		f 4 863 904 -1039 -904
		mu 0 4 639 640 607 606
		f 4 864 905 -1040 -905
		mu 0 4 640 620 608 607
		f 4 1040 1421 -1061 -1421
		mu 0 4 641 642 643 644
		f 4 1041 1422 -1062 -1422
		mu 0 4 642 645 646 643
		f 4 1042 1423 -1063 -1423
		mu 0 4 645 647 648 646
		f 4 1043 1424 -1064 -1424
		mu 0 4 647 649 650 648
		f 4 1044 1425 -1065 -1425
		mu 0 4 649 651 652 650
		f 4 1045 1426 -1066 -1426
		mu 0 4 651 653 654 652
		f 4 1046 1427 -1067 -1427
		mu 0 4 653 655 656 654
		f 4 1047 1428 -1068 -1428
		mu 0 4 655 657 658 656
		f 4 1048 1429 -1069 -1429
		mu 0 4 657 659 660 658
		f 4 1049 1430 -1070 -1430
		mu 0 4 659 661 662 660
		f 4 1050 1431 -1071 -1431
		mu 0 4 661 663 664 662
		f 4 1051 1432 -1072 -1432
		mu 0 4 663 665 666 664
		f 4 1052 1433 -1073 -1433
		mu 0 4 665 667 668 666
		f 4 1053 1434 -1074 -1434
		mu 0 4 667 669 670 668
		f 4 1054 1435 -1075 -1435
		mu 0 4 669 671 672 670
		f 4 1055 1436 -1076 -1436
		mu 0 4 671 673 674 672
		f 4 1056 1437 -1077 -1437
		mu 0 4 673 675 676 674
		f 4 1057 1438 -1078 -1438
		mu 0 4 675 677 678 676
		f 4 1058 1439 -1079 -1439
		mu 0 4 677 679 680 678
		f 4 1059 1420 -1080 -1440
		mu 0 4 679 681 682 680
		f 4 1060 1441 -1081 -1441
		mu 0 4 644 643 683 684
		f 4 1061 1442 -1082 -1442
		mu 0 4 643 646 685 683
		f 4 1062 1443 -1083 -1443
		mu 0 4 646 648 686 685
		f 4 1063 1444 -1084 -1444
		mu 0 4 648 650 687 686
		f 4 1064 1445 -1085 -1445
		mu 0 4 650 652 688 687
		f 4 1065 1446 -1086 -1446
		mu 0 4 652 654 689 688
		f 4 1066 1447 -1087 -1447
		mu 0 4 654 656 690 689
		f 4 1067 1448 -1088 -1448
		mu 0 4 656 658 691 690
		f 4 1068 1449 -1089 -1449
		mu 0 4 658 660 692 691
		f 4 1069 1450 -1090 -1450
		mu 0 4 660 662 693 692
		f 4 1070 1451 -1091 -1451
		mu 0 4 662 664 694 693
		f 4 1071 1452 -1092 -1452
		mu 0 4 664 666 695 694
		f 4 1072 1453 -1093 -1453
		mu 0 4 666 668 696 695
		f 4 1073 1454 -1094 -1454
		mu 0 4 668 670 697 696
		f 4 1074 1455 -1095 -1455
		mu 0 4 670 672 698 697
		f 4 1075 1456 -1096 -1456
		mu 0 4 672 674 699 698
		f 4 1076 1457 -1097 -1457
		mu 0 4 674 676 700 699
		f 4 1077 1458 -1098 -1458
		mu 0 4 676 678 701 700
		f 4 1078 1459 -1099 -1459
		mu 0 4 678 680 702 701
		f 4 1079 1440 -1100 -1460
		mu 0 4 680 682 703 702
		f 4 1080 1461 -1101 -1461
		mu 0 4 684 683 704 705
		f 4 1081 1462 -1102 -1462
		mu 0 4 683 685 706 704
		f 4 1082 1463 -1103 -1463
		mu 0 4 685 686 707 706
		f 4 1083 1464 -1104 -1464
		mu 0 4 686 687 708 707
		f 4 1084 1465 -1105 -1465
		mu 0 4 687 688 709 708
		f 4 1085 1466 -1106 -1466
		mu 0 4 688 689 710 709
		f 4 1086 1467 -1107 -1467
		mu 0 4 689 690 711 710
		f 4 1087 1468 -1108 -1468
		mu 0 4 690 691 712 711
		f 4 1088 1469 -1109 -1469
		mu 0 4 691 692 713 712
		f 4 1089 1470 -1110 -1470
		mu 0 4 692 693 714 713
		f 4 1090 1471 -1111 -1471
		mu 0 4 693 694 715 714
		f 4 1091 1472 -1112 -1472
		mu 0 4 694 695 716 715
		f 4 1092 1473 -1113 -1473
		mu 0 4 695 696 717 716
		f 4 1093 1474 -1114 -1474
		mu 0 4 696 697 718 717
		f 4 1094 1475 -1115 -1475
		mu 0 4 697 698 719 718
		f 4 1095 1476 -1116 -1476
		mu 0 4 698 699 720 719
		f 4 1096 1477 -1117 -1477
		mu 0 4 699 700 721 720
		f 4 1097 1478 -1118 -1478
		mu 0 4 700 701 722 721
		f 4 1098 1479 -1119 -1479
		mu 0 4 701 702 723 722
		f 4 1099 1460 -1120 -1480
		mu 0 4 702 703 724 723
		f 4 1100 1481 -1121 -1481
		mu 0 4 705 704 725 726
		f 4 1101 1482 -1122 -1482
		mu 0 4 704 706 727 725
		f 4 1102 1483 -1123 -1483
		mu 0 4 706 707 728 727
		f 4 1103 1484 -1124 -1484
		mu 0 4 707 708 729 728
		f 4 1104 1485 -1125 -1485
		mu 0 4 708 709 730 729
		f 4 1105 1486 -1126 -1486
		mu 0 4 709 710 731 730
		f 4 1106 1487 -1127 -1487
		mu 0 4 710 711 732 731
		f 4 1107 1488 -1128 -1488
		mu 0 4 711 712 733 732
		f 4 1108 1489 -1129 -1489
		mu 0 4 712 713 734 733
		f 4 1109 1490 -1130 -1490
		mu 0 4 713 714 735 734
		f 4 1110 1491 -1131 -1491
		mu 0 4 714 715 736 735
		f 4 1111 1492 -1132 -1492
		mu 0 4 715 716 737 736
		f 4 1112 1493 -1133 -1493
		mu 0 4 716 717 738 737
		f 4 1113 1494 -1134 -1494
		mu 0 4 717 718 739 738
		f 4 1114 1495 -1135 -1495
		mu 0 4 718 719 740 739
		f 4 1115 1496 -1136 -1496
		mu 0 4 719 720 741 740
		f 4 1116 1497 -1137 -1497
		mu 0 4 720 721 742 741
		f 4 1117 1498 -1138 -1498
		mu 0 4 721 722 743 742
		f 4 1118 1499 -1139 -1499
		mu 0 4 722 723 744 743
		f 4 1119 1480 -1140 -1500
		mu 0 4 723 724 745 744
		f 4 1120 1501 -1141 -1501
		mu 0 4 726 725 746 747
		f 4 1121 1502 -1142 -1502
		mu 0 4 725 727 748 746
		f 4 1122 1503 -1143 -1503
		mu 0 4 727 728 749 748
		f 4 1123 1504 -1144 -1504
		mu 0 4 728 729 750 749
		f 4 1124 1505 -1145 -1505
		mu 0 4 729 730 751 750
		f 4 1125 1506 -1146 -1506
		mu 0 4 730 731 752 751
		f 4 1126 1507 -1147 -1507
		mu 0 4 731 732 753 752
		f 4 1127 1508 -1148 -1508
		mu 0 4 732 733 754 753
		f 4 1128 1509 -1149 -1509
		mu 0 4 733 734 755 754
		f 4 1129 1510 -1150 -1510
		mu 0 4 734 735 756 755
		f 4 1130 1511 -1151 -1511
		mu 0 4 735 736 757 756
		f 4 1131 1512 -1152 -1512
		mu 0 4 736 737 758 757
		f 4 1132 1513 -1153 -1513
		mu 0 4 737 738 759 758
		f 4 1133 1514 -1154 -1514
		mu 0 4 738 739 760 759
		f 4 1134 1515 -1155 -1515
		mu 0 4 739 740 761 760
		f 4 1135 1516 -1156 -1516
		mu 0 4 740 741 762 761
		f 4 1136 1517 -1157 -1517
		mu 0 4 741 742 763 762
		f 4 1137 1518 -1158 -1518
		mu 0 4 742 743 764 763
		f 4 1138 1519 -1159 -1519
		mu 0 4 743 744 765 764
		f 4 1139 1500 -1160 -1520
		mu 0 4 744 745 766 765
		f 4 1140 1521 -1161 -1521
		mu 0 4 747 746 767 768
		f 4 1141 1522 -1162 -1522
		mu 0 4 746 748 769 767
		f 4 1142 1523 -1163 -1523
		mu 0 4 748 749 770 769
		f 4 1143 1524 -1164 -1524
		mu 0 4 749 750 771 770
		f 4 1144 1525 -1165 -1525
		mu 0 4 750 751 772 771
		f 4 1145 1526 -1166 -1526
		mu 0 4 751 752 773 772
		f 4 1146 1527 -1167 -1527
		mu 0 4 752 753 774 773
		f 4 1147 1528 -1168 -1528
		mu 0 4 753 754 775 774
		f 4 1148 1529 -1169 -1529
		mu 0 4 754 755 776 775
		f 4 1149 1530 -1170 -1530
		mu 0 4 755 756 777 776
		f 4 1150 1531 -1171 -1531
		mu 0 4 756 757 778 777
		f 4 1151 1532 -1172 -1532
		mu 0 4 757 758 779 778
		f 4 1152 1533 -1173 -1533
		mu 0 4 758 759 780 779
		f 4 1153 1534 -1174 -1534
		mu 0 4 759 760 781 780
		f 4 1154 1535 -1175 -1535
		mu 0 4 760 761 782 781
		f 4 1155 1536 -1176 -1536
		mu 0 4 761 762 783 782
		f 4 1156 1537 -1177 -1537
		mu 0 4 762 763 784 783
		f 4 1157 1538 -1178 -1538
		mu 0 4 763 764 785 784
		f 4 1158 1539 -1179 -1539
		mu 0 4 764 765 786 785
		f 4 1159 1520 -1180 -1540
		mu 0 4 765 766 787 786
		f 4 1160 1541 -1181 -1541
		mu 0 4 768 767 788 789
		f 4 1161 1542 -1182 -1542
		mu 0 4 767 769 790 788
		f 4 1162 1543 -1183 -1543
		mu 0 4 769 770 791 790
		f 4 1163 1544 -1184 -1544
		mu 0 4 770 771 792 791
		f 4 1164 1545 -1185 -1545
		mu 0 4 771 772 793 792
		f 4 1165 1546 -1186 -1546
		mu 0 4 772 773 794 793
		f 4 1166 1547 -1187 -1547
		mu 0 4 773 774 795 794
		f 4 1167 1548 -1188 -1548
		mu 0 4 774 775 796 795
		f 4 1168 1549 -1189 -1549
		mu 0 4 775 776 797 796
		f 4 1169 1550 -1190 -1550
		mu 0 4 776 777 798 797
		f 4 1170 1551 -1191 -1551
		mu 0 4 777 778 799 798
		f 4 1171 1552 -1192 -1552
		mu 0 4 778 779 800 799
		f 4 1172 1553 -1193 -1553
		mu 0 4 779 780 801 800
		f 4 1173 1554 -1194 -1554
		mu 0 4 780 781 802 801
		f 4 1174 1555 -1195 -1555
		mu 0 4 781 782 803 802
		f 4 1175 1556 -1196 -1556
		mu 0 4 782 783 804 803
		f 4 1176 1557 -1197 -1557
		mu 0 4 783 784 805 804
		f 4 1177 1558 -1198 -1558
		mu 0 4 784 785 806 805
		f 4 1178 1559 -1199 -1559
		mu 0 4 785 786 807 806
		f 4 1179 1540 -1200 -1560
		mu 0 4 786 787 808 807
		f 4 1180 1561 -1201 -1561
		mu 0 4 789 788 809 810
		f 4 1181 1562 -1202 -1562
		mu 0 4 788 790 811 809
		f 4 1182 1563 -1203 -1563
		mu 0 4 790 791 812 811
		f 4 1183 1564 -1204 -1564
		mu 0 4 791 792 813 812
		f 4 1184 1565 -1205 -1565
		mu 0 4 792 793 814 813
		f 4 1185 1566 -1206 -1566
		mu 0 4 793 794 815 814
		f 4 1186 1567 -1207 -1567
		mu 0 4 794 795 816 815
		f 4 1187 1568 -1208 -1568
		mu 0 4 795 796 817 816
		f 4 1188 1569 -1209 -1569
		mu 0 4 796 797 818 817
		f 4 1189 1570 -1210 -1570
		mu 0 4 797 798 819 818
		f 4 1190 1571 -1211 -1571
		mu 0 4 798 799 820 819
		f 4 1191 1572 -1212 -1572
		mu 0 4 799 800 821 820
		f 4 1192 1573 -1213 -1573
		mu 0 4 800 801 822 821
		f 4 1193 1574 -1214 -1574
		mu 0 4 801 802 823 822
		f 4 1194 1575 -1215 -1575
		mu 0 4 802 803 824 823
		f 4 1195 1576 -1216 -1576
		mu 0 4 803 804 825 824
		f 4 1196 1577 -1217 -1577
		mu 0 4 804 805 826 825
		f 4 1197 1578 -1218 -1578
		mu 0 4 805 806 827 826
		f 4 1198 1579 -1219 -1579
		mu 0 4 806 807 828 827
		f 4 1199 1560 -1220 -1580
		mu 0 4 807 808 829 828
		f 4 1200 1581 -1221 -1581
		mu 0 4 810 809 830 831
		f 4 1201 1582 -1222 -1582
		mu 0 4 809 811 832 830
		f 4 1202 1583 -1223 -1583
		mu 0 4 811 812 833 832
		f 4 1203 1584 -1224 -1584
		mu 0 4 812 813 834 833
		f 4 1204 1585 -1225 -1585
		mu 0 4 813 814 835 834
		f 4 1205 1586 -1226 -1586
		mu 0 4 814 815 836 835
		f 4 1206 1587 -1227 -1587
		mu 0 4 815 816 837 836
		f 4 1207 1588 -1228 -1588
		mu 0 4 816 817 838 837
		f 4 1208 1589 -1229 -1589
		mu 0 4 817 818 839 838
		f 4 1209 1590 -1230 -1590
		mu 0 4 818 819 840 839
		f 4 1210 1591 -1231 -1591
		mu 0 4 819 820 841 840
		f 4 1211 1592 -1232 -1592
		mu 0 4 820 821 842 841
		f 4 1212 1593 -1233 -1593
		mu 0 4 821 822 843 842
		f 4 1213 1594 -1234 -1594
		mu 0 4 822 823 844 843
		f 4 1214 1595 -1235 -1595
		mu 0 4 823 824 845 844
		f 4 1215 1596 -1236 -1596
		mu 0 4 824 825 846 845
		f 4 1216 1597 -1237 -1597
		mu 0 4 825 826 847 846
		f 4 1217 1598 -1238 -1598
		mu 0 4 826 827 848 847
		f 4 1218 1599 -1239 -1599
		mu 0 4 827 828 849 848
		f 4 1219 1580 -1240 -1600
		mu 0 4 828 829 850 849
		f 4 1220 1601 -1241 -1601
		mu 0 4 831 830 851 852
		f 4 1221 1602 -1242 -1602
		mu 0 4 830 832 853 851
		f 4 1222 1603 -1243 -1603
		mu 0 4 832 833 854 853
		f 4 1223 1604 -1244 -1604
		mu 0 4 833 834 855 854
		f 4 1224 1605 -1245 -1605
		mu 0 4 834 835 856 855
		f 4 1225 1606 -1246 -1606
		mu 0 4 835 836 857 856
		f 4 1226 1607 -1247 -1607
		mu 0 4 836 837 858 857
		f 4 1227 1608 -1248 -1608
		mu 0 4 837 838 859 858
		f 4 1228 1609 -1249 -1609
		mu 0 4 838 839 860 859
		f 4 1229 1610 -1250 -1610
		mu 0 4 839 840 861 860
		f 4 1230 1611 -1251 -1611
		mu 0 4 840 841 862 861
		f 4 1231 1612 -1252 -1612
		mu 0 4 841 842 863 862
		f 4 1232 1613 -1253 -1613
		mu 0 4 842 843 864 863
		f 4 1233 1614 -1254 -1614
		mu 0 4 843 844 865 864
		f 4 1234 1615 -1255 -1615
		mu 0 4 844 845 866 865
		f 4 1235 1616 -1256 -1616
		mu 0 4 845 846 867 866
		f 4 1236 1617 -1257 -1617
		mu 0 4 846 847 868 867
		f 4 1237 1618 -1258 -1618
		mu 0 4 847 848 869 868
		f 4 1238 1619 -1259 -1619
		mu 0 4 848 849 870 869
		f 4 1239 1600 -1260 -1620
		mu 0 4 849 850 871 870
		f 4 1240 1621 -1261 -1621
		mu 0 4 852 851 872 873
		f 4 1241 1622 -1262 -1622
		mu 0 4 851 853 874 872
		f 4 1242 1623 -1263 -1623
		mu 0 4 853 854 875 874
		f 4 1243 1624 -1264 -1624
		mu 0 4 854 855 876 875
		f 4 1244 1625 -1265 -1625
		mu 0 4 855 856 877 876
		f 4 1245 1626 -1266 -1626
		mu 0 4 856 857 878 877
		f 4 1246 1627 -1267 -1627
		mu 0 4 857 858 879 878
		f 4 1247 1628 -1268 -1628
		mu 0 4 858 859 880 879
		f 4 1248 1629 -1269 -1629
		mu 0 4 859 860 881 880
		f 4 1249 1630 -1270 -1630
		mu 0 4 860 861 882 881
		f 4 1250 1631 -1271 -1631
		mu 0 4 861 862 883 882
		f 4 1251 1632 -1272 -1632
		mu 0 4 862 863 884 883
		f 4 1252 1633 -1273 -1633
		mu 0 4 863 864 885 884
		f 4 1253 1634 -1274 -1634
		mu 0 4 864 865 886 885
		f 4 1254 1635 -1275 -1635
		mu 0 4 865 866 887 886
		f 4 1255 1636 -1276 -1636
		mu 0 4 866 867 888 887
		f 4 1256 1637 -1277 -1637
		mu 0 4 867 868 889 888
		f 4 1257 1638 -1278 -1638
		mu 0 4 868 869 890 889
		f 4 1258 1639 -1279 -1639
		mu 0 4 869 870 891 890
		f 4 1259 1620 -1280 -1640
		mu 0 4 870 871 892 891
		f 4 1260 1641 -1281 -1641
		mu 0 4 873 872 893 894
		f 4 1261 1642 -1282 -1642
		mu 0 4 872 874 895 893
		f 4 1262 1643 -1283 -1643
		mu 0 4 874 875 896 895
		f 4 1263 1644 -1284 -1644
		mu 0 4 875 876 897 896
		f 4 1264 1645 -1285 -1645
		mu 0 4 876 877 898 897
		f 4 1265 1646 -1286 -1646
		mu 0 4 877 878 899 898
		f 4 1266 1647 -1287 -1647
		mu 0 4 878 879 900 899
		f 4 1267 1648 -1288 -1648
		mu 0 4 879 880 901 900
		f 4 1268 1649 -1289 -1649
		mu 0 4 880 881 902 901
		f 4 1269 1650 -1290 -1650
		mu 0 4 881 882 903 902
		f 4 1270 1651 -1291 -1651
		mu 0 4 882 883 904 903
		f 4 1271 1652 -1292 -1652
		mu 0 4 883 884 905 904
		f 4 1272 1653 -1293 -1653
		mu 0 4 884 885 906 905
		f 4 1273 1654 -1294 -1654
		mu 0 4 885 886 907 906
		f 4 1274 1655 -1295 -1655
		mu 0 4 886 887 908 907
		f 4 1275 1656 -1296 -1656
		mu 0 4 887 888 909 908
		f 4 1276 1657 -1297 -1657
		mu 0 4 888 889 910 909
		f 4 1277 1658 -1298 -1658
		mu 0 4 889 890 911 910
		f 4 1278 1659 -1299 -1659
		mu 0 4 890 891 912 911
		f 4 1279 1640 -1300 -1660
		mu 0 4 891 892 913 912
		f 4 1280 1661 -1301 -1661
		mu 0 4 894 893 914 915
		f 4 1281 1662 -1302 -1662
		mu 0 4 893 895 916 914
		f 4 1282 1663 -1303 -1663
		mu 0 4 895 896 917 916
		f 4 1283 1664 -1304 -1664
		mu 0 4 896 897 918 917
		f 4 1284 1665 -1305 -1665
		mu 0 4 897 898 919 918
		f 4 1285 1666 -1306 -1666
		mu 0 4 898 899 920 919
		f 4 1286 1667 -1307 -1667
		mu 0 4 899 900 921 920
		f 4 1287 1668 -1308 -1668
		mu 0 4 900 901 922 921
		f 4 1288 1669 -1309 -1669
		mu 0 4 901 902 923 922
		f 4 1289 1670 -1310 -1670
		mu 0 4 902 903 924 923
		f 4 1290 1671 -1311 -1671
		mu 0 4 903 904 925 924
		f 4 1291 1672 -1312 -1672
		mu 0 4 904 905 926 925
		f 4 1292 1673 -1313 -1673
		mu 0 4 905 906 927 926
		f 4 1293 1674 -1314 -1674
		mu 0 4 906 907 928 927
		f 4 1294 1675 -1315 -1675
		mu 0 4 907 908 929 928
		f 4 1295 1676 -1316 -1676
		mu 0 4 908 909 930 929
		f 4 1296 1677 -1317 -1677
		mu 0 4 909 910 931 930
		f 4 1297 1678 -1318 -1678
		mu 0 4 910 911 932 931
		f 4 1298 1679 -1319 -1679
		mu 0 4 911 912 933 932
		f 4 1299 1660 -1320 -1680
		mu 0 4 912 913 934 933
		f 4 1300 1681 -1321 -1681
		mu 0 4 915 914 935 936
		f 4 1301 1682 -1322 -1682
		mu 0 4 914 916 937 935
		f 4 1302 1683 -1323 -1683
		mu 0 4 916 917 938 937
		f 4 1303 1684 -1324 -1684
		mu 0 4 917 918 939 938
		f 4 1304 1685 -1325 -1685
		mu 0 4 918 919 940 939
		f 4 1305 1686 -1326 -1686
		mu 0 4 919 920 941 940
		f 4 1306 1687 -1327 -1687
		mu 0 4 920 921 942 941
		f 4 1307 1688 -1328 -1688
		mu 0 4 921 922 943 942
		f 4 1308 1689 -1329 -1689
		mu 0 4 922 923 944 943
		f 4 1309 1690 -1330 -1690
		mu 0 4 923 924 945 944
		f 4 1310 1691 -1331 -1691
		mu 0 4 924 925 946 945
		f 4 1311 1692 -1332 -1692
		mu 0 4 925 926 947 946
		f 4 1312 1693 -1333 -1693
		mu 0 4 926 927 948 947
		f 4 1313 1694 -1334 -1694
		mu 0 4 927 928 949 948
		f 4 1314 1695 -1335 -1695
		mu 0 4 928 929 950 949
		f 4 1315 1696 -1336 -1696
		mu 0 4 929 930 951 950
		f 4 1316 1697 -1337 -1697
		mu 0 4 930 931 952 951
		f 4 1317 1698 -1338 -1698
		mu 0 4 931 932 953 952
		f 4 1318 1699 -1339 -1699
		mu 0 4 932 933 954 953
		f 4 1319 1680 -1340 -1700
		mu 0 4 933 934 955 954
		f 4 1320 1701 -1341 -1701
		mu 0 4 936 935 956 957
		f 4 1321 1702 -1342 -1702
		mu 0 4 935 937 958 956
		f 4 1322 1703 -1343 -1703
		mu 0 4 937 938 959 958
		f 4 1323 1704 -1344 -1704
		mu 0 4 938 939 960 959
		f 4 1324 1705 -1345 -1705
		mu 0 4 939 940 961 960
		f 4 1325 1706 -1346 -1706
		mu 0 4 940 941 962 961
		f 4 1326 1707 -1347 -1707
		mu 0 4 941 942 963 962
		f 4 1327 1708 -1348 -1708
		mu 0 4 942 943 964 963
		f 4 1328 1709 -1349 -1709
		mu 0 4 943 944 965 964
		f 4 1329 1710 -1350 -1710
		mu 0 4 944 945 966 965
		f 4 1330 1711 -1351 -1711
		mu 0 4 945 946 967 966
		f 4 1331 1712 -1352 -1712
		mu 0 4 946 947 968 967
		f 4 1332 1713 -1353 -1713
		mu 0 4 947 948 969 968
		f 4 1333 1714 -1354 -1714
		mu 0 4 948 949 970 969
		f 4 1334 1715 -1355 -1715
		mu 0 4 949 950 971 970
		f 4 1335 1716 -1356 -1716
		mu 0 4 950 951 972 971
		f 4 1336 1717 -1357 -1717
		mu 0 4 951 952 973 972
		f 4 1337 1718 -1358 -1718
		mu 0 4 952 953 974 973
		f 4 1338 1719 -1359 -1719
		mu 0 4 953 954 975 974
		f 4 1339 1700 -1360 -1720
		mu 0 4 954 955 976 975
		f 4 1340 1721 -1361 -1721
		mu 0 4 957 956 977 978
		f 4 1341 1722 -1362 -1722
		mu 0 4 956 958 979 977
		f 4 1342 1723 -1363 -1723
		mu 0 4 958 959 980 979
		f 4 1343 1724 -1364 -1724
		mu 0 4 959 960 981 980
		f 4 1344 1725 -1365 -1725
		mu 0 4 960 961 982 981
		f 4 1345 1726 -1366 -1726
		mu 0 4 961 962 983 982
		f 4 1346 1727 -1367 -1727
		mu 0 4 962 963 984 983
		f 4 1347 1728 -1368 -1728
		mu 0 4 963 964 985 984
		f 4 1348 1729 -1369 -1729
		mu 0 4 964 965 986 985
		f 4 1349 1730 -1370 -1730
		mu 0 4 965 966 987 986
		f 4 1350 1731 -1371 -1731
		mu 0 4 966 967 988 987
		f 4 1351 1732 -1372 -1732
		mu 0 4 967 968 989 988
		f 4 1352 1733 -1373 -1733
		mu 0 4 968 969 990 989
		f 4 1353 1734 -1374 -1734
		mu 0 4 969 970 991 990
		f 4 1354 1735 -1375 -1735
		mu 0 4 970 971 992 991
		f 4 1355 1736 -1376 -1736
		mu 0 4 971 972 993 992
		f 4 1356 1737 -1377 -1737
		mu 0 4 972 973 994 993
		f 4 1357 1738 -1378 -1738
		mu 0 4 973 974 995 994
		f 4 1358 1739 -1379 -1739
		mu 0 4 974 975 996 995
		f 4 1359 1720 -1380 -1740
		mu 0 4 975 976 997 996
		f 4 1360 1741 -1381 -1741
		mu 0 4 978 977 998 999
		f 4 1361 1742 -1382 -1742
		mu 0 4 977 979 1000 998
		f 4 1362 1743 -1383 -1743
		mu 0 4 979 980 1001 1000
		f 4 1363 1744 -1384 -1744
		mu 0 4 980 981 1002 1001
		f 4 1364 1745 -1385 -1745
		mu 0 4 981 982 1003 1002
		f 4 1365 1746 -1386 -1746
		mu 0 4 982 983 1004 1003
		f 4 1366 1747 -1387 -1747
		mu 0 4 983 984 1005 1004
		f 4 1367 1748 -1388 -1748
		mu 0 4 984 985 1006 1005
		f 4 1368 1749 -1389 -1749
		mu 0 4 985 986 1007 1006
		f 4 1369 1750 -1390 -1750
		mu 0 4 986 987 1008 1007
		f 4 1370 1751 -1391 -1751
		mu 0 4 987 988 1009 1008
		f 4 1371 1752 -1392 -1752
		mu 0 4 988 989 1010 1009
		f 4 1372 1753 -1393 -1753
		mu 0 4 989 990 1011 1010
		f 4 1373 1754 -1394 -1754
		mu 0 4 990 991 1012 1011
		f 4 1374 1755 -1395 -1755
		mu 0 4 991 992 1013 1012
		f 4 1375 1756 -1396 -1756
		mu 0 4 992 993 1014 1013
		f 4 1376 1757 -1397 -1757
		mu 0 4 993 994 1015 1014
		f 4 1377 1758 -1398 -1758
		mu 0 4 994 995 1016 1015
		f 4 1378 1759 -1399 -1759
		mu 0 4 995 996 1017 1016
		f 4 1379 1740 -1400 -1760
		mu 0 4 996 997 1018 1017
		f 4 1380 1761 -1401 -1761
		mu 0 4 999 998 1019 1020
		f 4 1381 1762 -1402 -1762
		mu 0 4 998 1000 1021 1019
		f 4 1382 1763 -1403 -1763
		mu 0 4 1000 1001 1022 1021
		f 4 1383 1764 -1404 -1764
		mu 0 4 1001 1002 1023 1022
		f 4 1384 1765 -1405 -1765
		mu 0 4 1002 1003 1024 1023
		f 4 1385 1766 -1406 -1766
		mu 0 4 1003 1004 1025 1024
		f 4 1386 1767 -1407 -1767
		mu 0 4 1004 1005 1026 1025
		f 4 1387 1768 -1408 -1768
		mu 0 4 1005 1006 1027 1026
		f 4 1388 1769 -1409 -1769
		mu 0 4 1006 1007 1028 1027
		f 4 1389 1770 -1410 -1770
		mu 0 4 1007 1008 1029 1028
		f 4 1390 1771 -1411 -1771
		mu 0 4 1008 1009 1030 1029
		f 4 1391 1772 -1412 -1772
		mu 0 4 1009 1010 1031 1030
		f 4 1392 1773 -1413 -1773
		mu 0 4 1010 1011 1032 1031
		f 4 1393 1774 -1414 -1774
		mu 0 4 1011 1012 1033 1032
		f 4 1394 1775 -1415 -1775
		mu 0 4 1012 1013 1034 1033
		f 4 1395 1776 -1416 -1776
		mu 0 4 1013 1014 1035 1034
		f 4 1396 1777 -1417 -1777
		mu 0 4 1014 1015 1036 1035
		f 4 1397 1778 -1418 -1778
		mu 0 4 1015 1016 1037 1036
		f 4 1398 1779 -1419 -1779
		mu 0 4 1016 1017 1038 1037
		f 4 1399 1760 -1420 -1780
		mu 0 4 1017 1018 1039 1038
		f 3 -1041 -1781 1781
		mu 0 3 642 641 1040
		f 3 -1042 -1782 1782
		mu 0 3 645 642 1041
		f 3 -1043 -1783 1783
		mu 0 3 647 645 1042
		f 3 -1044 -1784 1784
		mu 0 3 649 647 1043
		f 3 -1045 -1785 1785
		mu 0 3 651 649 1044
		f 3 -1046 -1786 1786
		mu 0 3 653 651 1045
		f 3 -1047 -1787 1787
		mu 0 3 655 653 1046
		f 3 -1048 -1788 1788
		mu 0 3 657 655 1047
		f 3 -1049 -1789 1789
		mu 0 3 659 657 1048
		f 3 -1050 -1790 1790
		mu 0 3 661 659 1049
		f 3 -1051 -1791 1791
		mu 0 3 663 661 1050
		f 3 -1052 -1792 1792
		mu 0 3 665 663 1051
		f 3 -1053 -1793 1793
		mu 0 3 667 665 1052
		f 3 -1054 -1794 1794
		mu 0 3 669 667 1053
		f 3 -1055 -1795 1795
		mu 0 3 671 669 1054
		f 3 -1056 -1796 1796
		mu 0 3 673 671 1055
		f 3 -1057 -1797 1797
		mu 0 3 675 673 1056
		f 3 -1058 -1798 1798
		mu 0 3 677 675 1057
		f 3 -1059 -1799 1799
		mu 0 3 679 677 1058
		f 3 -1060 -1800 1780
		mu 0 3 681 679 1059
		f 3 1400 1801 -1801
		mu 0 3 1020 1019 1060
		f 3 1401 1802 -1802
		mu 0 3 1019 1021 1061
		f 3 1402 1803 -1803
		mu 0 3 1021 1022 1062
		f 3 1403 1804 -1804
		mu 0 3 1022 1023 1063
		f 3 1404 1805 -1805
		mu 0 3 1023 1024 1064
		f 3 1405 1806 -1806
		mu 0 3 1024 1025 1065
		f 3 1406 1807 -1807
		mu 0 3 1025 1026 1066
		f 3 1407 1808 -1808
		mu 0 3 1026 1027 1067
		f 3 1408 1809 -1809
		mu 0 3 1027 1028 1068
		f 3 1409 1810 -1810
		mu 0 3 1028 1029 1069
		f 3 1410 1811 -1811
		mu 0 3 1029 1030 1070
		f 3 1411 1812 -1812
		mu 0 3 1030 1031 1071
		f 3 1412 1813 -1813
		mu 0 3 1031 1032 1072
		f 3 1413 1814 -1814
		mu 0 3 1032 1033 1073
		f 3 1414 1815 -1815
		mu 0 3 1033 1034 1074
		f 3 1415 1816 -1816
		mu 0 3 1034 1035 1075
		f 3 1416 1817 -1817
		mu 0 3 1035 1036 1076
		f 3 1417 1818 -1818
		mu 0 3 1036 1037 1077
		f 3 1418 1819 -1819
		mu 0 3 1037 1038 1078
		f 3 1419 1800 -1820
		mu 0 3 1038 1039 1079
		f 4 1943 1924 -1841 -1924
		mu 0 4 1080 1081 1082 1083
		f 4 1944 1925 -1842 -1925
		mu 0 4 1081 1084 1085 1082
		f 4 1945 1926 -1843 -1926
		mu 0 4 1084 1086 1087 1085
		f 4 1946 1927 -1844 -1927
		mu 0 4 1086 1088 1089 1087
		f 4 1947 1928 -1845 -1928
		mu 0 4 1088 1090 1091 1089
		f 4 1948 1929 -1846 -1929
		mu 0 4 1090 1092 1093 1091
		f 4 1949 1930 -1847 -1930
		mu 0 4 1092 1094 1095 1093
		f 4 1950 1931 -1848 -1931
		mu 0 4 1094 1096 1097 1095
		f 4 1951 1932 -1849 -1932
		mu 0 4 1096 1098 1099 1097
		f 4 1952 1933 -1850 -1933
		mu 0 4 1098 1100 1101 1099
		f 4 1953 1934 -1851 -1934
		mu 0 4 1100 1102 1103 1101
		f 4 1954 1935 -1852 -1935
		mu 0 4 1102 1104 1105 1103
		f 4 1955 1936 -1853 -1936
		mu 0 4 1104 1106 1107 1105
		f 4 1956 1937 -1854 -1937
		mu 0 4 1106 1108 1109 1107
		f 4 1957 1938 -1855 -1938
		mu 0 4 1108 1110 1111 1109
		f 4 1958 1939 -1856 -1939
		mu 0 4 1110 1112 1113 1111
		f 4 1959 1920 -1857 -1940
		mu 0 4 1112 1114 1115 1113
		f 4 1940 1921 -1858 -1921
		mu 0 4 1114 1116 1117 1115
		f 4 1941 1922 -1859 -1922
		mu 0 4 1116 1118 1119 1117
		f 4 1942 1923 -1860 -1923
		mu 0 4 1118 1120 1121 1119
		f 3 -1821 -1881 1881
		mu 0 3 1122 1123 1124
		f 3 -1822 -1882 1882
		mu 0 3 1125 1122 1124
		f 3 -1823 -1883 1883
		mu 0 3 1126 1125 1124
		f 3 -1824 -1884 1884
		mu 0 3 1127 1126 1124
		f 3 -1825 -1885 1885
		mu 0 3 1128 1127 1124
		f 3 -1826 -1886 1886
		mu 0 3 1129 1128 1124
		f 3 -1827 -1887 1887
		mu 0 3 1130 1129 1124
		f 3 -1828 -1888 1888
		mu 0 3 1131 1130 1124
		f 3 -1829 -1889 1889
		mu 0 3 1132 1131 1124
		f 3 -1830 -1890 1890
		mu 0 3 1133 1132 1124
		f 3 -1831 -1891 1891
		mu 0 3 1134 1133 1124
		f 3 -1832 -1892 1892
		mu 0 3 1135 1134 1124
		f 3 -1833 -1893 1893
		mu 0 3 1136 1135 1124
		f 3 -1834 -1894 1894
		mu 0 3 1137 1136 1124
		f 3 -1835 -1895 1895
		mu 0 3 1138 1137 1124
		f 3 -1836 -1896 1896
		mu 0 3 1139 1138 1124
		f 3 -1837 -1897 1897
		mu 0 3 1140 1139 1124
		f 3 -1838 -1898 1898
		mu 0 3 1141 1140 1124
		f 3 -1839 -1899 1899
		mu 0 3 1142 1141 1124
		f 3 -1840 -1900 1880
		mu 0 3 1123 1142 1124
		f 3 1840 1901 -1901
		mu 0 3 1143 1144 1145
		f 3 1841 1902 -1902
		mu 0 3 1144 1146 1145
		f 3 1842 1903 -1903
		mu 0 3 1146 1147 1145
		f 3 1843 1904 -1904
		mu 0 3 1147 1148 1145
		f 3 1844 1905 -1905
		mu 0 3 1148 1149 1145
		f 3 1845 1906 -1906
		mu 0 3 1149 1150 1145
		f 3 1846 1907 -1907
		mu 0 3 1150 1151 1145
		f 3 1847 1908 -1908
		mu 0 3 1151 1152 1145
		f 3 1848 1909 -1909
		mu 0 3 1152 1153 1145
		f 3 1849 1910 -1910
		mu 0 3 1153 1154 1145
		f 3 1850 1911 -1911
		mu 0 3 1154 1155 1145
		f 3 1851 1912 -1912
		mu 0 3 1155 1156 1145
		f 3 1852 1913 -1913
		mu 0 3 1156 1157 1145
		f 3 1853 1914 -1914
		mu 0 3 1157 1158 1145
		f 3 1854 1915 -1915
		mu 0 3 1158 1159 1145
		f 3 1855 1916 -1916
		mu 0 3 1159 1160 1145
		f 3 1856 1917 -1917
		mu 0 3 1160 1161 1145
		f 3 1857 1918 -1918
		mu 0 3 1161 1162 1145
		f 3 1858 1919 -1919
		mu 0 3 1162 1163 1145
		f 3 1859 1900 -1920
		mu 0 3 1163 1143 1145;
	setAttr ".fc[1000:1459]"
		f 4 1992 1973 -1941 -1973
		mu 0 4 1164 1165 1116 1114
		f 4 1993 1974 -1942 -1974
		mu 0 4 1165 1166 1118 1116
		f 4 1994 1975 -1943 -1975
		mu 0 4 1166 1167 1120 1118
		f 4 1995 1976 -1944 -1976
		mu 0 4 1168 1169 1081 1080
		f 4 1996 1977 -1945 -1977
		mu 0 4 1169 1170 1084 1081
		f 4 1997 1978 -1946 -1978
		mu 0 4 1170 1171 1086 1084
		f 4 1998 1979 -1947 -1979
		mu 0 4 1171 1172 1088 1086
		f 4 1999 1960 -1948 -1980
		mu 0 4 1172 1173 1090 1088
		f 4 1980 1961 -1949 -1961
		mu 0 4 1173 1174 1092 1090
		f 4 1981 1962 -1950 -1962
		mu 0 4 1174 1175 1094 1092
		f 4 1982 1963 -1951 -1963
		mu 0 4 1175 1176 1096 1094
		f 4 1983 1964 -1952 -1964
		mu 0 4 1176 1177 1098 1096
		f 4 1984 1965 -1953 -1965
		mu 0 4 1177 1178 1100 1098
		f 4 1985 1966 -1954 -1966
		mu 0 4 1178 1179 1102 1100
		f 4 1986 1967 -1955 -1967
		mu 0 4 1179 1180 1104 1102
		f 4 1987 1968 -1956 -1968
		mu 0 4 1180 1181 1106 1104
		f 4 1988 1969 -1957 -1969
		mu 0 4 1181 1182 1108 1106
		f 4 1989 1970 -1958 -1970
		mu 0 4 1182 1183 1110 1108
		f 4 1990 1971 -1959 -1971
		mu 0 4 1183 1184 1112 1110
		f 4 1991 1972 -1960 -1972
		mu 0 4 1184 1164 1114 1112
		f 4 1825 1866 -1981 -1866
		mu 0 4 1185 1186 1174 1173
		f 4 1826 1867 -1982 -1867
		mu 0 4 1186 1187 1175 1174
		f 4 1827 1868 -1983 -1868
		mu 0 4 1187 1188 1176 1175
		f 4 1828 1869 -1984 -1869
		mu 0 4 1188 1189 1177 1176
		f 4 1829 1870 -1985 -1870
		mu 0 4 1189 1190 1178 1177
		f 4 1830 1871 -1986 -1871
		mu 0 4 1190 1191 1179 1178
		f 4 1831 1872 -1987 -1872
		mu 0 4 1191 1192 1180 1179
		f 4 1832 1873 -1988 -1873
		mu 0 4 1192 1193 1181 1180
		f 4 1833 1874 -1989 -1874
		mu 0 4 1193 1194 1182 1181
		f 4 1834 1875 -1990 -1875
		mu 0 4 1194 1195 1183 1182
		f 4 1835 1876 -1991 -1876
		mu 0 4 1195 1196 1184 1183
		f 4 1836 1877 -1992 -1877
		mu 0 4 1196 1197 1164 1184
		f 4 1837 1878 -1993 -1878
		mu 0 4 1197 1198 1165 1164
		f 4 1838 1879 -1994 -1879
		mu 0 4 1198 1199 1166 1165
		f 4 1839 1860 -1995 -1880
		mu 0 4 1199 1200 1167 1166
		f 4 1820 1861 -1996 -1861
		mu 0 4 1201 1202 1169 1168
		f 4 1821 1862 -1997 -1862
		mu 0 4 1202 1203 1170 1169
		f 4 1822 1863 -1998 -1863
		mu 0 4 1203 1204 1171 1170
		f 4 1823 1864 -1999 -1864
		mu 0 4 1204 1205 1172 1171
		f 4 1824 1865 -2000 -1865
		mu 0 4 1205 1185 1173 1172
		f 4 2016 2013 2005 -2013
		mu 0 4 1206 1207 1208 1209
		f 4 2019 2012 2007 -2016
		mu 0 4 1210 1206 1209 1211
		f 4 2018 2015 2009 -2015
		mu 0 4 1212 1210 1211 1213
		f 4 2017 2014 2011 -2014
		mu 0 4 1214 1212 1213 1215
		f 4 -2012 -2010 -2008 -2006
		mu 0 4 1208 1216 1217 1209
		f 4 2010 2004 2006 2008
		mu 0 4 1218 1219 1220 1221
		f 4 2000 -2017 -2002 -2005
		mu 0 4 1219 1207 1206 1220
		f 4 2003 -2018 -2001 -2011
		mu 0 4 1222 1212 1214 1223
		f 4 2002 -2019 -2004 -2009
		mu 0 4 1224 1210 1212 1222
		f 4 2001 -2020 -2003 -2007
		mu 0 4 1220 1206 1210 1224
		f 4 2036 2033 2025 -2033
		mu 0 4 1225 1226 1227 1228
		f 4 2039 2032 2027 -2036
		mu 0 4 1229 1225 1228 1230
		f 4 2038 2035 2029 -2035
		mu 0 4 1231 1229 1230 1232
		f 4 2037 2034 2031 -2034
		mu 0 4 1233 1231 1232 1234
		f 4 -2032 -2030 -2028 -2026
		mu 0 4 1227 1235 1236 1228
		f 4 2030 2024 2026 2028
		mu 0 4 1237 1238 1239 1240
		f 4 2020 -2037 -2022 -2025
		mu 0 4 1238 1226 1225 1239
		f 4 2023 -2038 -2021 -2031
		mu 0 4 1241 1231 1233 1242
		f 4 2022 -2039 -2024 -2029
		mu 0 4 1243 1229 1231 1241
		f 4 2021 -2040 -2023 -2027
		mu 0 4 1239 1225 1229 1243
		f 4 2040 2421 -2061 -2421
		mu 0 4 1244 1245 1246 1247
		f 4 2041 2422 -2062 -2422
		mu 0 4 1245 1248 1249 1246
		f 4 2042 2423 -2063 -2423
		mu 0 4 1248 1250 1251 1249
		f 4 2043 2424 -2064 -2424
		mu 0 4 1250 1252 1253 1251
		f 4 2044 2425 -2065 -2425
		mu 0 4 1252 1254 1255 1253
		f 4 2045 2426 -2066 -2426
		mu 0 4 1254 1256 1257 1255
		f 4 2046 2427 -2067 -2427
		mu 0 4 1256 1258 1259 1257
		f 4 2047 2428 -2068 -2428
		mu 0 4 1258 1260 1261 1259
		f 4 2048 2429 -2069 -2429
		mu 0 4 1260 1262 1263 1261
		f 4 2049 2430 -2070 -2430
		mu 0 4 1262 1264 1265 1263
		f 4 2050 2431 -2071 -2431
		mu 0 4 1264 1266 1267 1265
		f 4 2051 2432 -2072 -2432
		mu 0 4 1266 1268 1269 1267
		f 4 2052 2433 -2073 -2433
		mu 0 4 1268 1270 1271 1269
		f 4 2053 2434 -2074 -2434
		mu 0 4 1270 1272 1273 1271
		f 4 2054 2435 -2075 -2435
		mu 0 4 1272 1274 1275 1273
		f 4 2055 2436 -2076 -2436
		mu 0 4 1274 1276 1277 1275
		f 4 2056 2437 -2077 -2437
		mu 0 4 1276 1278 1279 1277
		f 4 2057 2438 -2078 -2438
		mu 0 4 1278 1280 1281 1279
		f 4 2058 2439 -2079 -2439
		mu 0 4 1280 1282 1283 1281
		f 4 2059 2420 -2080 -2440
		mu 0 4 1282 1284 1285 1283
		f 4 2060 2441 -2081 -2441
		mu 0 4 1247 1246 1286 1287
		f 4 2061 2442 -2082 -2442
		mu 0 4 1246 1249 1288 1286
		f 4 2062 2443 -2083 -2443
		mu 0 4 1249 1251 1289 1288
		f 4 2063 2444 -2084 -2444
		mu 0 4 1251 1253 1290 1289
		f 4 2064 2445 -2085 -2445
		mu 0 4 1253 1255 1291 1290
		f 4 2065 2446 -2086 -2446
		mu 0 4 1255 1257 1292 1291
		f 4 2066 2447 -2087 -2447
		mu 0 4 1257 1259 1293 1292
		f 4 2067 2448 -2088 -2448
		mu 0 4 1259 1261 1294 1293
		f 4 2068 2449 -2089 -2449
		mu 0 4 1261 1263 1295 1294
		f 4 2069 2450 -2090 -2450
		mu 0 4 1263 1265 1296 1295
		f 4 2070 2451 -2091 -2451
		mu 0 4 1265 1267 1297 1296
		f 4 2071 2452 -2092 -2452
		mu 0 4 1267 1269 1298 1297
		f 4 2072 2453 -2093 -2453
		mu 0 4 1269 1271 1299 1298
		f 4 2073 2454 -2094 -2454
		mu 0 4 1271 1273 1300 1299
		f 4 2074 2455 -2095 -2455
		mu 0 4 1273 1275 1301 1300
		f 4 2075 2456 -2096 -2456
		mu 0 4 1275 1277 1302 1301
		f 4 2076 2457 -2097 -2457
		mu 0 4 1277 1279 1303 1302
		f 4 2077 2458 -2098 -2458
		mu 0 4 1279 1281 1304 1303
		f 4 2078 2459 -2099 -2459
		mu 0 4 1281 1283 1305 1304
		f 4 2079 2440 -2100 -2460
		mu 0 4 1283 1285 1306 1305
		f 4 2080 2461 -2101 -2461
		mu 0 4 1287 1286 1307 1308
		f 4 2081 2462 -2102 -2462
		mu 0 4 1286 1288 1309 1307
		f 4 2082 2463 -2103 -2463
		mu 0 4 1288 1289 1310 1309
		f 4 2083 2464 -2104 -2464
		mu 0 4 1289 1290 1311 1310
		f 4 2084 2465 -2105 -2465
		mu 0 4 1290 1291 1312 1311
		f 4 2085 2466 -2106 -2466
		mu 0 4 1291 1292 1313 1312
		f 4 2086 2467 -2107 -2467
		mu 0 4 1292 1293 1314 1313
		f 4 2087 2468 -2108 -2468
		mu 0 4 1293 1294 1315 1314
		f 4 2088 2469 -2109 -2469
		mu 0 4 1294 1295 1316 1315
		f 4 2089 2470 -2110 -2470
		mu 0 4 1295 1296 1317 1316
		f 4 2090 2471 -2111 -2471
		mu 0 4 1296 1297 1318 1317
		f 4 2091 2472 -2112 -2472
		mu 0 4 1297 1298 1319 1318
		f 4 2092 2473 -2113 -2473
		mu 0 4 1298 1299 1320 1319
		f 4 2093 2474 -2114 -2474
		mu 0 4 1299 1300 1321 1320
		f 4 2094 2475 -2115 -2475
		mu 0 4 1300 1301 1322 1321
		f 4 2095 2476 -2116 -2476
		mu 0 4 1301 1302 1323 1322
		f 4 2096 2477 -2117 -2477
		mu 0 4 1302 1303 1324 1323
		f 4 2097 2478 -2118 -2478
		mu 0 4 1303 1304 1325 1324
		f 4 2098 2479 -2119 -2479
		mu 0 4 1304 1305 1326 1325
		f 4 2099 2460 -2120 -2480
		mu 0 4 1305 1306 1327 1326
		f 4 2100 2481 -2121 -2481
		mu 0 4 1308 1307 1328 1329
		f 4 2101 2482 -2122 -2482
		mu 0 4 1307 1309 1330 1328
		f 4 2102 2483 -2123 -2483
		mu 0 4 1309 1310 1331 1330
		f 4 2103 2484 -2124 -2484
		mu 0 4 1310 1311 1332 1331
		f 4 2104 2485 -2125 -2485
		mu 0 4 1311 1312 1333 1332
		f 4 2105 2486 -2126 -2486
		mu 0 4 1312 1313 1334 1333
		f 4 2106 2487 -2127 -2487
		mu 0 4 1313 1314 1335 1334
		f 4 2107 2488 -2128 -2488
		mu 0 4 1314 1315 1336 1335
		f 4 2108 2489 -2129 -2489
		mu 0 4 1315 1316 1337 1336
		f 4 2109 2490 -2130 -2490
		mu 0 4 1316 1317 1338 1337
		f 4 2110 2491 -2131 -2491
		mu 0 4 1317 1318 1339 1338
		f 4 2111 2492 -2132 -2492
		mu 0 4 1318 1319 1340 1339
		f 4 2112 2493 -2133 -2493
		mu 0 4 1319 1320 1341 1340
		f 4 2113 2494 -2134 -2494
		mu 0 4 1320 1321 1342 1341
		f 4 2114 2495 -2135 -2495
		mu 0 4 1321 1322 1343 1342
		f 4 2115 2496 -2136 -2496
		mu 0 4 1322 1323 1344 1343
		f 4 2116 2497 -2137 -2497
		mu 0 4 1323 1324 1345 1344
		f 4 2117 2498 -2138 -2498
		mu 0 4 1324 1325 1346 1345
		f 4 2118 2499 -2139 -2499
		mu 0 4 1325 1326 1347 1346
		f 4 2119 2480 -2140 -2500
		mu 0 4 1326 1327 1348 1347
		f 4 2120 2501 -2141 -2501
		mu 0 4 1329 1328 1349 1350
		f 4 2121 2502 -2142 -2502
		mu 0 4 1328 1330 1351 1349
		f 4 2122 2503 -2143 -2503
		mu 0 4 1330 1331 1352 1351
		f 4 2123 2504 -2144 -2504
		mu 0 4 1331 1332 1353 1352
		f 4 2124 2505 -2145 -2505
		mu 0 4 1332 1333 1354 1353
		f 4 2125 2506 -2146 -2506
		mu 0 4 1333 1334 1355 1354
		f 4 2126 2507 -2147 -2507
		mu 0 4 1334 1335 1356 1355
		f 4 2127 2508 -2148 -2508
		mu 0 4 1335 1336 1357 1356
		f 4 2128 2509 -2149 -2509
		mu 0 4 1336 1337 1358 1357
		f 4 2129 2510 -2150 -2510
		mu 0 4 1337 1338 1359 1358
		f 4 2130 2511 -2151 -2511
		mu 0 4 1338 1339 1360 1359
		f 4 2131 2512 -2152 -2512
		mu 0 4 1339 1340 1361 1360
		f 4 2132 2513 -2153 -2513
		mu 0 4 1340 1341 1362 1361
		f 4 2133 2514 -2154 -2514
		mu 0 4 1341 1342 1363 1362
		f 4 2134 2515 -2155 -2515
		mu 0 4 1342 1343 1364 1363
		f 4 2135 2516 -2156 -2516
		mu 0 4 1343 1344 1365 1364
		f 4 2136 2517 -2157 -2517
		mu 0 4 1344 1345 1366 1365
		f 4 2137 2518 -2158 -2518
		mu 0 4 1345 1346 1367 1366
		f 4 2138 2519 -2159 -2519
		mu 0 4 1346 1347 1368 1367
		f 4 2139 2500 -2160 -2520
		mu 0 4 1347 1348 1369 1368
		f 4 2140 2521 -2161 -2521
		mu 0 4 1350 1349 1370 1371
		f 4 2141 2522 -2162 -2522
		mu 0 4 1349 1351 1372 1370
		f 4 2142 2523 -2163 -2523
		mu 0 4 1351 1352 1373 1372
		f 4 2143 2524 -2164 -2524
		mu 0 4 1352 1353 1374 1373
		f 4 2144 2525 -2165 -2525
		mu 0 4 1353 1354 1375 1374
		f 4 2145 2526 -2166 -2526
		mu 0 4 1354 1355 1376 1375
		f 4 2146 2527 -2167 -2527
		mu 0 4 1355 1356 1377 1376
		f 4 2147 2528 -2168 -2528
		mu 0 4 1356 1357 1378 1377
		f 4 2148 2529 -2169 -2529
		mu 0 4 1357 1358 1379 1378
		f 4 2149 2530 -2170 -2530
		mu 0 4 1358 1359 1380 1379
		f 4 2150 2531 -2171 -2531
		mu 0 4 1359 1360 1381 1380
		f 4 2151 2532 -2172 -2532
		mu 0 4 1360 1361 1382 1381
		f 4 2152 2533 -2173 -2533
		mu 0 4 1361 1362 1383 1382
		f 4 2153 2534 -2174 -2534
		mu 0 4 1362 1363 1384 1383
		f 4 2154 2535 -2175 -2535
		mu 0 4 1363 1364 1385 1384
		f 4 2155 2536 -2176 -2536
		mu 0 4 1364 1365 1386 1385
		f 4 2156 2537 -2177 -2537
		mu 0 4 1365 1366 1387 1386
		f 4 2157 2538 -2178 -2538
		mu 0 4 1366 1367 1388 1387
		f 4 2158 2539 -2179 -2539
		mu 0 4 1367 1368 1389 1388
		f 4 2159 2520 -2180 -2540
		mu 0 4 1368 1369 1390 1389
		f 4 2160 2541 -2181 -2541
		mu 0 4 1371 1370 1391 1392
		f 4 2161 2542 -2182 -2542
		mu 0 4 1370 1372 1393 1391
		f 4 2162 2543 -2183 -2543
		mu 0 4 1372 1373 1394 1393
		f 4 2163 2544 -2184 -2544
		mu 0 4 1373 1374 1395 1394
		f 4 2164 2545 -2185 -2545
		mu 0 4 1374 1375 1396 1395
		f 4 2165 2546 -2186 -2546
		mu 0 4 1375 1376 1397 1396
		f 4 2166 2547 -2187 -2547
		mu 0 4 1376 1377 1398 1397
		f 4 2167 2548 -2188 -2548
		mu 0 4 1377 1378 1399 1398
		f 4 2168 2549 -2189 -2549
		mu 0 4 1378 1379 1400 1399
		f 4 2169 2550 -2190 -2550
		mu 0 4 1379 1380 1401 1400
		f 4 2170 2551 -2191 -2551
		mu 0 4 1380 1381 1402 1401
		f 4 2171 2552 -2192 -2552
		mu 0 4 1381 1382 1403 1402
		f 4 2172 2553 -2193 -2553
		mu 0 4 1382 1383 1404 1403
		f 4 2173 2554 -2194 -2554
		mu 0 4 1383 1384 1405 1404
		f 4 2174 2555 -2195 -2555
		mu 0 4 1384 1385 1406 1405
		f 4 2175 2556 -2196 -2556
		mu 0 4 1385 1386 1407 1406
		f 4 2176 2557 -2197 -2557
		mu 0 4 1386 1387 1408 1407
		f 4 2177 2558 -2198 -2558
		mu 0 4 1387 1388 1409 1408
		f 4 2178 2559 -2199 -2559
		mu 0 4 1388 1389 1410 1409
		f 4 2179 2540 -2200 -2560
		mu 0 4 1389 1390 1411 1410
		f 4 2180 2561 -2201 -2561
		mu 0 4 1392 1391 1412 1413
		f 4 2181 2562 -2202 -2562
		mu 0 4 1391 1393 1414 1412
		f 4 2182 2563 -2203 -2563
		mu 0 4 1393 1394 1415 1414
		f 4 2183 2564 -2204 -2564
		mu 0 4 1394 1395 1416 1415
		f 4 2184 2565 -2205 -2565
		mu 0 4 1395 1396 1417 1416
		f 4 2185 2566 -2206 -2566
		mu 0 4 1396 1397 1418 1417
		f 4 2186 2567 -2207 -2567
		mu 0 4 1397 1398 1419 1418
		f 4 2187 2568 -2208 -2568
		mu 0 4 1398 1399 1420 1419
		f 4 2188 2569 -2209 -2569
		mu 0 4 1399 1400 1421 1420
		f 4 2189 2570 -2210 -2570
		mu 0 4 1400 1401 1422 1421
		f 4 2190 2571 -2211 -2571
		mu 0 4 1401 1402 1423 1422
		f 4 2191 2572 -2212 -2572
		mu 0 4 1402 1403 1424 1423
		f 4 2192 2573 -2213 -2573
		mu 0 4 1403 1404 1425 1424
		f 4 2193 2574 -2214 -2574
		mu 0 4 1404 1405 1426 1425
		f 4 2194 2575 -2215 -2575
		mu 0 4 1405 1406 1427 1426
		f 4 2195 2576 -2216 -2576
		mu 0 4 1406 1407 1428 1427
		f 4 2196 2577 -2217 -2577
		mu 0 4 1407 1408 1429 1428
		f 4 2197 2578 -2218 -2578
		mu 0 4 1408 1409 1430 1429
		f 4 2198 2579 -2219 -2579
		mu 0 4 1409 1410 1431 1430
		f 4 2199 2560 -2220 -2580
		mu 0 4 1410 1411 1432 1431
		f 4 2200 2581 -2221 -2581
		mu 0 4 1413 1412 1433 1434
		f 4 2201 2582 -2222 -2582
		mu 0 4 1412 1414 1435 1433
		f 4 2202 2583 -2223 -2583
		mu 0 4 1414 1415 1436 1435
		f 4 2203 2584 -2224 -2584
		mu 0 4 1415 1416 1437 1436
		f 4 2204 2585 -2225 -2585
		mu 0 4 1416 1417 1438 1437
		f 4 2205 2586 -2226 -2586
		mu 0 4 1417 1418 1439 1438
		f 4 2206 2587 -2227 -2587
		mu 0 4 1418 1419 1440 1439
		f 4 2207 2588 -2228 -2588
		mu 0 4 1419 1420 1441 1440
		f 4 2208 2589 -2229 -2589
		mu 0 4 1420 1421 1442 1441
		f 4 2209 2590 -2230 -2590
		mu 0 4 1421 1422 1443 1442
		f 4 2210 2591 -2231 -2591
		mu 0 4 1422 1423 1444 1443
		f 4 2211 2592 -2232 -2592
		mu 0 4 1423 1424 1445 1444
		f 4 2212 2593 -2233 -2593
		mu 0 4 1424 1425 1446 1445
		f 4 2213 2594 -2234 -2594
		mu 0 4 1425 1426 1447 1446
		f 4 2214 2595 -2235 -2595
		mu 0 4 1426 1427 1448 1447
		f 4 2215 2596 -2236 -2596
		mu 0 4 1427 1428 1449 1448
		f 4 2216 2597 -2237 -2597
		mu 0 4 1428 1429 1450 1449
		f 4 2217 2598 -2238 -2598
		mu 0 4 1429 1430 1451 1450
		f 4 2218 2599 -2239 -2599
		mu 0 4 1430 1431 1452 1451
		f 4 2219 2580 -2240 -2600
		mu 0 4 1431 1432 1453 1452
		f 4 2220 2601 -2241 -2601
		mu 0 4 1434 1433 1454 1455
		f 4 2221 2602 -2242 -2602
		mu 0 4 1433 1435 1456 1454
		f 4 2222 2603 -2243 -2603
		mu 0 4 1435 1436 1457 1456
		f 4 2223 2604 -2244 -2604
		mu 0 4 1436 1437 1458 1457
		f 4 2224 2605 -2245 -2605
		mu 0 4 1437 1438 1459 1458
		f 4 2225 2606 -2246 -2606
		mu 0 4 1438 1439 1460 1459
		f 4 2226 2607 -2247 -2607
		mu 0 4 1439 1440 1461 1460
		f 4 2227 2608 -2248 -2608
		mu 0 4 1440 1441 1462 1461
		f 4 2228 2609 -2249 -2609
		mu 0 4 1441 1442 1463 1462
		f 4 2229 2610 -2250 -2610
		mu 0 4 1442 1443 1464 1463
		f 4 2230 2611 -2251 -2611
		mu 0 4 1443 1444 1465 1464
		f 4 2231 2612 -2252 -2612
		mu 0 4 1444 1445 1466 1465
		f 4 2232 2613 -2253 -2613
		mu 0 4 1445 1446 1467 1466
		f 4 2233 2614 -2254 -2614
		mu 0 4 1446 1447 1468 1467
		f 4 2234 2615 -2255 -2615
		mu 0 4 1447 1448 1469 1468
		f 4 2235 2616 -2256 -2616
		mu 0 4 1448 1449 1470 1469
		f 4 2236 2617 -2257 -2617
		mu 0 4 1449 1450 1471 1470
		f 4 2237 2618 -2258 -2618
		mu 0 4 1450 1451 1472 1471
		f 4 2238 2619 -2259 -2619
		mu 0 4 1451 1452 1473 1472
		f 4 2239 2600 -2260 -2620
		mu 0 4 1452 1453 1474 1473
		f 4 2240 2621 -2261 -2621
		mu 0 4 1455 1454 1475 1476
		f 4 2241 2622 -2262 -2622
		mu 0 4 1454 1456 1477 1475
		f 4 2242 2623 -2263 -2623
		mu 0 4 1456 1457 1478 1477
		f 4 2243 2624 -2264 -2624
		mu 0 4 1457 1458 1479 1478
		f 4 2244 2625 -2265 -2625
		mu 0 4 1458 1459 1480 1479
		f 4 2245 2626 -2266 -2626
		mu 0 4 1459 1460 1481 1480
		f 4 2246 2627 -2267 -2627
		mu 0 4 1460 1461 1482 1481
		f 4 2247 2628 -2268 -2628
		mu 0 4 1461 1462 1483 1482
		f 4 2248 2629 -2269 -2629
		mu 0 4 1462 1463 1484 1483
		f 4 2249 2630 -2270 -2630
		mu 0 4 1463 1464 1485 1484
		f 4 2250 2631 -2271 -2631
		mu 0 4 1464 1465 1486 1485
		f 4 2251 2632 -2272 -2632
		mu 0 4 1465 1466 1487 1486
		f 4 2252 2633 -2273 -2633
		mu 0 4 1466 1467 1488 1487
		f 4 2253 2634 -2274 -2634
		mu 0 4 1467 1468 1489 1488
		f 4 2254 2635 -2275 -2635
		mu 0 4 1468 1469 1490 1489
		f 4 2255 2636 -2276 -2636
		mu 0 4 1469 1470 1491 1490
		f 4 2256 2637 -2277 -2637
		mu 0 4 1470 1471 1492 1491
		f 4 2257 2638 -2278 -2638
		mu 0 4 1471 1472 1493 1492
		f 4 2258 2639 -2279 -2639
		mu 0 4 1472 1473 1494 1493
		f 4 2259 2620 -2280 -2640
		mu 0 4 1473 1474 1495 1494
		f 4 2260 2641 -2281 -2641
		mu 0 4 1476 1475 1496 1497
		f 4 2261 2642 -2282 -2642
		mu 0 4 1475 1477 1498 1496
		f 4 2262 2643 -2283 -2643
		mu 0 4 1477 1478 1499 1498
		f 4 2263 2644 -2284 -2644
		mu 0 4 1478 1479 1500 1499
		f 4 2264 2645 -2285 -2645
		mu 0 4 1479 1480 1501 1500
		f 4 2265 2646 -2286 -2646
		mu 0 4 1480 1481 1502 1501
		f 4 2266 2647 -2287 -2647
		mu 0 4 1481 1482 1503 1502
		f 4 2267 2648 -2288 -2648
		mu 0 4 1482 1483 1504 1503
		f 4 2268 2649 -2289 -2649
		mu 0 4 1483 1484 1505 1504
		f 4 2269 2650 -2290 -2650
		mu 0 4 1484 1485 1506 1505
		f 4 2270 2651 -2291 -2651
		mu 0 4 1485 1486 1507 1506
		f 4 2271 2652 -2292 -2652
		mu 0 4 1486 1487 1508 1507
		f 4 2272 2653 -2293 -2653
		mu 0 4 1487 1488 1509 1508
		f 4 2273 2654 -2294 -2654
		mu 0 4 1488 1489 1510 1509
		f 4 2274 2655 -2295 -2655
		mu 0 4 1489 1490 1511 1510
		f 4 2275 2656 -2296 -2656
		mu 0 4 1490 1491 1512 1511
		f 4 2276 2657 -2297 -2657
		mu 0 4 1491 1492 1513 1512
		f 4 2277 2658 -2298 -2658
		mu 0 4 1492 1493 1514 1513
		f 4 2278 2659 -2299 -2659
		mu 0 4 1493 1494 1515 1514
		f 4 2279 2640 -2300 -2660
		mu 0 4 1494 1495 1516 1515
		f 4 2280 2661 -2301 -2661
		mu 0 4 1497 1496 1517 1518
		f 4 2281 2662 -2302 -2662
		mu 0 4 1496 1498 1519 1517
		f 4 2282 2663 -2303 -2663
		mu 0 4 1498 1499 1520 1519
		f 4 2283 2664 -2304 -2664
		mu 0 4 1499 1500 1521 1520
		f 4 2284 2665 -2305 -2665
		mu 0 4 1500 1501 1522 1521
		f 4 2285 2666 -2306 -2666
		mu 0 4 1501 1502 1523 1522
		f 4 2286 2667 -2307 -2667
		mu 0 4 1502 1503 1524 1523
		f 4 2287 2668 -2308 -2668
		mu 0 4 1503 1504 1525 1524
		f 4 2288 2669 -2309 -2669
		mu 0 4 1504 1505 1526 1525
		f 4 2289 2670 -2310 -2670
		mu 0 4 1505 1506 1527 1526
		f 4 2290 2671 -2311 -2671
		mu 0 4 1506 1507 1528 1527
		f 4 2291 2672 -2312 -2672
		mu 0 4 1507 1508 1529 1528
		f 4 2292 2673 -2313 -2673
		mu 0 4 1508 1509 1530 1529
		f 4 2293 2674 -2314 -2674
		mu 0 4 1509 1510 1531 1530
		f 4 2294 2675 -2315 -2675
		mu 0 4 1510 1511 1532 1531
		f 4 2295 2676 -2316 -2676
		mu 0 4 1511 1512 1533 1532
		f 4 2296 2677 -2317 -2677
		mu 0 4 1512 1513 1534 1533
		f 4 2297 2678 -2318 -2678
		mu 0 4 1513 1514 1535 1534
		f 4 2298 2679 -2319 -2679
		mu 0 4 1514 1515 1536 1535
		f 4 2299 2660 -2320 -2680
		mu 0 4 1515 1516 1537 1536
		f 4 2300 2681 -2321 -2681
		mu 0 4 1518 1517 1538 1539
		f 4 2301 2682 -2322 -2682
		mu 0 4 1517 1519 1540 1538
		f 4 2302 2683 -2323 -2683
		mu 0 4 1519 1520 1541 1540
		f 4 2303 2684 -2324 -2684
		mu 0 4 1520 1521 1542 1541
		f 4 2304 2685 -2325 -2685
		mu 0 4 1521 1522 1543 1542
		f 4 2305 2686 -2326 -2686
		mu 0 4 1522 1523 1544 1543
		f 4 2306 2687 -2327 -2687
		mu 0 4 1523 1524 1545 1544
		f 4 2307 2688 -2328 -2688
		mu 0 4 1524 1525 1546 1545
		f 4 2308 2689 -2329 -2689
		mu 0 4 1525 1526 1547 1546
		f 4 2309 2690 -2330 -2690
		mu 0 4 1526 1527 1548 1547
		f 4 2310 2691 -2331 -2691
		mu 0 4 1527 1528 1549 1548
		f 4 2311 2692 -2332 -2692
		mu 0 4 1528 1529 1550 1549
		f 4 2312 2693 -2333 -2693
		mu 0 4 1529 1530 1551 1550
		f 4 2313 2694 -2334 -2694
		mu 0 4 1530 1531 1552 1551
		f 4 2314 2695 -2335 -2695
		mu 0 4 1531 1532 1553 1552
		f 4 2315 2696 -2336 -2696
		mu 0 4 1532 1533 1554 1553
		f 4 2316 2697 -2337 -2697
		mu 0 4 1533 1534 1555 1554
		f 4 2317 2698 -2338 -2698
		mu 0 4 1534 1535 1556 1555
		f 4 2318 2699 -2339 -2699
		mu 0 4 1535 1536 1557 1556
		f 4 2319 2680 -2340 -2700
		mu 0 4 1536 1537 1558 1557
		f 4 2320 2701 -2341 -2701
		mu 0 4 1539 1538 1559 1560
		f 4 2321 2702 -2342 -2702
		mu 0 4 1538 1540 1561 1559
		f 4 2322 2703 -2343 -2703
		mu 0 4 1540 1541 1562 1561
		f 4 2323 2704 -2344 -2704
		mu 0 4 1541 1542 1563 1562
		f 4 2324 2705 -2345 -2705
		mu 0 4 1542 1543 1564 1563
		f 4 2325 2706 -2346 -2706
		mu 0 4 1543 1544 1565 1564
		f 4 2326 2707 -2347 -2707
		mu 0 4 1544 1545 1566 1565
		f 4 2327 2708 -2348 -2708
		mu 0 4 1545 1546 1567 1566
		f 4 2328 2709 -2349 -2709
		mu 0 4 1546 1547 1568 1567
		f 4 2329 2710 -2350 -2710
		mu 0 4 1547 1548 1569 1568
		f 4 2330 2711 -2351 -2711
		mu 0 4 1548 1549 1570 1569
		f 4 2331 2712 -2352 -2712
		mu 0 4 1549 1550 1571 1570
		f 4 2332 2713 -2353 -2713
		mu 0 4 1550 1551 1572 1571
		f 4 2333 2714 -2354 -2714
		mu 0 4 1551 1552 1573 1572
		f 4 2334 2715 -2355 -2715
		mu 0 4 1552 1553 1574 1573
		f 4 2335 2716 -2356 -2716
		mu 0 4 1553 1554 1575 1574
		f 4 2336 2717 -2357 -2717
		mu 0 4 1554 1555 1576 1575
		f 4 2337 2718 -2358 -2718
		mu 0 4 1555 1556 1577 1576
		f 4 2338 2719 -2359 -2719
		mu 0 4 1556 1557 1578 1577
		f 4 2339 2700 -2360 -2720
		mu 0 4 1557 1558 1579 1578
		f 4 2340 2721 -2361 -2721
		mu 0 4 1560 1559 1580 1581
		f 4 2341 2722 -2362 -2722
		mu 0 4 1559 1561 1582 1580
		f 4 2342 2723 -2363 -2723
		mu 0 4 1561 1562 1583 1582
		f 4 2343 2724 -2364 -2724
		mu 0 4 1562 1563 1584 1583
		f 4 2344 2725 -2365 -2725
		mu 0 4 1563 1564 1585 1584
		f 4 2345 2726 -2366 -2726
		mu 0 4 1564 1565 1586 1585
		f 4 2346 2727 -2367 -2727
		mu 0 4 1565 1566 1587 1586
		f 4 2347 2728 -2368 -2728
		mu 0 4 1566 1567 1588 1587
		f 4 2348 2729 -2369 -2729
		mu 0 4 1567 1568 1589 1588
		f 4 2349 2730 -2370 -2730
		mu 0 4 1568 1569 1590 1589
		f 4 2350 2731 -2371 -2731
		mu 0 4 1569 1570 1591 1590
		f 4 2351 2732 -2372 -2732
		mu 0 4 1570 1571 1592 1591
		f 4 2352 2733 -2373 -2733
		mu 0 4 1571 1572 1593 1592
		f 4 2353 2734 -2374 -2734
		mu 0 4 1572 1573 1594 1593
		f 4 2354 2735 -2375 -2735
		mu 0 4 1573 1574 1595 1594
		f 4 2355 2736 -2376 -2736
		mu 0 4 1574 1575 1596 1595
		f 4 2356 2737 -2377 -2737
		mu 0 4 1575 1576 1597 1596
		f 4 2357 2738 -2378 -2738
		mu 0 4 1576 1577 1598 1597
		f 4 2358 2739 -2379 -2739
		mu 0 4 1577 1578 1599 1598
		f 4 2359 2720 -2380 -2740
		mu 0 4 1578 1579 1600 1599
		f 4 2360 2741 -2381 -2741
		mu 0 4 1581 1580 1601 1602
		f 4 2361 2742 -2382 -2742
		mu 0 4 1580 1582 1603 1601
		f 4 2362 2743 -2383 -2743
		mu 0 4 1582 1583 1604 1603
		f 4 2363 2744 -2384 -2744
		mu 0 4 1583 1584 1605 1604
		f 4 2364 2745 -2385 -2745
		mu 0 4 1584 1585 1606 1605
		f 4 2365 2746 -2386 -2746
		mu 0 4 1585 1586 1607 1606
		f 4 2366 2747 -2387 -2747
		mu 0 4 1586 1587 1608 1607
		f 4 2367 2748 -2388 -2748
		mu 0 4 1587 1588 1609 1608
		f 4 2368 2749 -2389 -2749
		mu 0 4 1588 1589 1610 1609
		f 4 2369 2750 -2390 -2750
		mu 0 4 1589 1590 1611 1610
		f 4 2370 2751 -2391 -2751
		mu 0 4 1590 1591 1612 1611
		f 4 2371 2752 -2392 -2752
		mu 0 4 1591 1592 1613 1612
		f 4 2372 2753 -2393 -2753
		mu 0 4 1592 1593 1614 1613
		f 4 2373 2754 -2394 -2754
		mu 0 4 1593 1594 1615 1614
		f 4 2374 2755 -2395 -2755
		mu 0 4 1594 1595 1616 1615
		f 4 2375 2756 -2396 -2756
		mu 0 4 1595 1596 1617 1616
		f 4 2376 2757 -2397 -2757
		mu 0 4 1596 1597 1618 1617
		f 4 2377 2758 -2398 -2758
		mu 0 4 1597 1598 1619 1618
		f 4 2378 2759 -2399 -2759
		mu 0 4 1598 1599 1620 1619
		f 4 2379 2740 -2400 -2760
		mu 0 4 1599 1600 1621 1620
		f 4 2380 2761 -2401 -2761
		mu 0 4 1602 1601 1622 1623
		f 4 2381 2762 -2402 -2762
		mu 0 4 1601 1603 1624 1622
		f 4 2382 2763 -2403 -2763
		mu 0 4 1603 1604 1625 1624
		f 4 2383 2764 -2404 -2764
		mu 0 4 1604 1605 1626 1625
		f 4 2384 2765 -2405 -2765
		mu 0 4 1605 1606 1627 1626
		f 4 2385 2766 -2406 -2766
		mu 0 4 1606 1607 1628 1627
		f 4 2386 2767 -2407 -2767
		mu 0 4 1607 1608 1629 1628
		f 4 2387 2768 -2408 -2768
		mu 0 4 1608 1609 1630 1629
		f 4 2388 2769 -2409 -2769
		mu 0 4 1609 1610 1631 1630
		f 4 2389 2770 -2410 -2770
		mu 0 4 1610 1611 1632 1631
		f 4 2390 2771 -2411 -2771
		mu 0 4 1611 1612 1633 1632
		f 4 2391 2772 -2412 -2772
		mu 0 4 1612 1613 1634 1633
		f 4 2392 2773 -2413 -2773
		mu 0 4 1613 1614 1635 1634
		f 4 2393 2774 -2414 -2774
		mu 0 4 1614 1615 1636 1635
		f 4 2394 2775 -2415 -2775
		mu 0 4 1615 1616 1637 1636
		f 4 2395 2776 -2416 -2776
		mu 0 4 1616 1617 1638 1637
		f 4 2396 2777 -2417 -2777
		mu 0 4 1617 1618 1639 1638
		f 4 2397 2778 -2418 -2778
		mu 0 4 1618 1619 1640 1639
		f 4 2398 2779 -2419 -2779
		mu 0 4 1619 1620 1641 1640
		f 4 2399 2760 -2420 -2780
		mu 0 4 1620 1621 1642 1641
		f 3 -2041 -2781 2781
		mu 0 3 1245 1244 1643
		f 3 -2042 -2782 2782
		mu 0 3 1248 1245 1644
		f 3 -2043 -2783 2783
		mu 0 3 1250 1248 1645
		f 3 -2044 -2784 2784
		mu 0 3 1252 1250 1646
		f 3 -2045 -2785 2785
		mu 0 3 1254 1252 1647
		f 3 -2046 -2786 2786
		mu 0 3 1256 1254 1648
		f 3 -2047 -2787 2787
		mu 0 3 1258 1256 1649
		f 3 -2048 -2788 2788
		mu 0 3 1260 1258 1650
		f 3 -2049 -2789 2789
		mu 0 3 1262 1260 1651
		f 3 -2050 -2790 2790
		mu 0 3 1264 1262 1652
		f 3 -2051 -2791 2791
		mu 0 3 1266 1264 1653
		f 3 -2052 -2792 2792
		mu 0 3 1268 1266 1654
		f 3 -2053 -2793 2793
		mu 0 3 1270 1268 1655
		f 3 -2054 -2794 2794
		mu 0 3 1272 1270 1656
		f 3 -2055 -2795 2795
		mu 0 3 1274 1272 1657
		f 3 -2056 -2796 2796
		mu 0 3 1276 1274 1658
		f 3 -2057 -2797 2797
		mu 0 3 1278 1276 1659
		f 3 -2058 -2798 2798
		mu 0 3 1280 1278 1660
		f 3 -2059 -2799 2799
		mu 0 3 1282 1280 1661
		f 3 -2060 -2800 2780
		mu 0 3 1284 1282 1662
		f 3 2400 2801 -2801
		mu 0 3 1623 1622 1663
		f 3 2401 2802 -2802
		mu 0 3 1622 1624 1664
		f 3 2402 2803 -2803
		mu 0 3 1624 1625 1665
		f 3 2403 2804 -2804
		mu 0 3 1625 1626 1666
		f 3 2404 2805 -2805
		mu 0 3 1626 1627 1667
		f 3 2405 2806 -2806
		mu 0 3 1627 1628 1668
		f 3 2406 2807 -2807
		mu 0 3 1628 1629 1669
		f 3 2407 2808 -2808
		mu 0 3 1629 1630 1670
		f 3 2408 2809 -2809
		mu 0 3 1630 1631 1671
		f 3 2409 2810 -2810
		mu 0 3 1631 1632 1672
		f 3 2410 2811 -2811
		mu 0 3 1632 1633 1673
		f 3 2411 2812 -2812
		mu 0 3 1633 1634 1674
		f 3 2412 2813 -2813
		mu 0 3 1634 1635 1675
		f 3 2413 2814 -2814
		mu 0 3 1635 1636 1676
		f 3 2414 2815 -2815
		mu 0 3 1636 1637 1677
		f 3 2415 2816 -2816
		mu 0 3 1637 1638 1678
		f 3 2416 2817 -2817
		mu 0 3 1638 1639 1679
		f 3 2417 2818 -2818
		mu 0 3 1639 1640 1680
		f 3 2418 2819 -2819
		mu 0 3 1640 1641 1681
		f 3 2419 2800 -2820
		mu 0 3 1641 1642 1682;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder9";
	rename -uid "BA723A05-4477-6F37-6BA2-E0B366968A0B";
	setAttr ".rp" -type "double3" -0.018471701223377934 -2.0029845233840229 -0.01685468176238708 ;
	setAttr ".sp" -type "double3" -0.018471701223377934 -2.0029845233840229 -0.01685468176238708 ;
createNode mesh -n "pCylinder9Shape" -p "pCylinder9";
	rename -uid "3E79D6FE-464E-F50E-79DD-FC9E7E3C3379";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "475D8C89-498A-0DE4-AF8F-DDA2B2466A90";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "27B9D778-4C4E-4160-E71C-C8B775BCB81E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "09E32E6D-4462-DF03-7A20-8EB87A6827DB";
createNode displayLayerManager -n "layerManager";
	rename -uid "B0AC6466-48E4-A177-50EF-3196CBB82BFD";
createNode displayLayer -n "defaultLayer";
	rename -uid "147EB9B6-4EA9-04E2-3F8A-17AAD70369A4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7143528B-4967-C781-C943-46856D0E8BCF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "35575E86-4F7A-3ACD-FB0C-749CE53C7E61";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E8845ADD-4C97-B585-0AF6-2989A4A3B9F8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 748\n                -height 437\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 748\n            -height 437\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 748\\n    -height 437\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 748\\n    -height 437\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9D78F117-4B54-5ED2-0860-CDBB0AF83013";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere1";
	rename -uid "4A396BFE-4FDF-6BEF-C31E-B6B5983F6392";
createNode polyTweak -n "polyTweak1";
	rename -uid "7317B659-433A-9208-D818-608042B5409F";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[132]" -type "float3" 0.0069014854 -0.025682844 -0.026288804 ;
	setAttr ".tk[133]" -type "float3" -0.081470624 -0.078843415 -0.10103444 ;
	setAttr ".tk[134]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[135]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[136]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[137]" -type "float3" 0.031036926 0 -0.17433582 ;
	setAttr ".tk[152]" -type "float3" 0 -0.031158123 -0.25506198 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[155]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[156]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[157]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[158]" -type "float3" 0.033227619 -0.010727344 -0.072255284 ;
	setAttr ".tk[172]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[173]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[174]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[175]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[176]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[177]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[178]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[179]" -type "float3" 0.015382559 -0.0097465124 0.21544304 ;
	setAttr ".tk[192]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[193]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[194]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[195]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[196]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[197]" -type "float3" 1.4901161e-008 0 -0.41472313 ;
	setAttr ".tk[198]" -type "float3" 0 0 -0.15573265 ;
	setAttr ".tk[199]" -type "float3" 0.0084763467 0.0039157374 0.22829486 ;
	setAttr ".tk[212]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[213]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[214]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[215]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[216]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[217]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[218]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[219]" -type "float3" 0.041182734 0.043169528 0.2510753 ;
	setAttr ".tk[232]" -type "float3" -0.0033111516 0.064261936 -0.13292481 ;
	setAttr ".tk[233]" -type "float3" 0 0.04460974 -0.41472322 ;
	setAttr ".tk[234]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[235]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[236]" -type "float3" 0 0 -0.41472313 ;
	setAttr ".tk[237]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[238]" -type "float3" 0.08315102 0.040768676 -0.027508123 ;
	setAttr ".tk[253]" -type "float3" 0 0 -0.091911629 ;
	setAttr ".tk[254]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[255]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[256]" -type "float3" 0 0 -0.41472319 ;
	setAttr ".tk[257]" -type "float3" 0.038044311 0.048432626 -0.096151739 ;
	setAttr ".tk[258]" -type "float3" 0.025055856 -0.037793074 0.075887591 ;
	setAttr ".tk[277]" -type "float3" 0.01412003 -0.023840467 0.048691064 ;
createNode polySplit -n "polySplit1";
	rename -uid "E234FF3D-47AF-BB01-B16B-688527E90B3D";
	setAttr -s 2 ".e[0:1]"  0.46604699 0.41069001;
	setAttr -s 2 ".d[0:1]"  -2147483416 -2147483436;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "D5C8D95E-49C1-2CF0-FCC6-63B62C4D802C";
	setAttr -s 7 ".e[0:6]"  0.48839 0.47461101 0.48584601 0.43114799
		 0.52665901 0.38612199 0.336909;
	setAttr -s 7 ".d[0:6]"  -2147483136 -2147483135 -2147483134 -2147483133 -2147483132 -2147483131 
		-2147483130;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "23843269-4335-E54E-8E90-9E87EAB17CAE";
	setAttr -s 2 ".e[0:1]"  1 0.42250901;
	setAttr -s 2 ".d[0:1]"  -2147483136 -2147483137;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "A97F18C6-469A-48F3-594F-4EBFB98F1DFB";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[131]" -type "float3" 0.081566453 0 0 ;
	setAttr ".tk[137]" -type "float3" -0.074156865 0 -0.083413661 ;
	setAttr ".tk[151]" -type "float3" 0.11648366 0 0.047218692 ;
	setAttr ".tk[152]" -type "float3" -0.0013896665 0.023865599 -0.011317927 ;
	setAttr ".tk[171]" -type "float3" 0.10282049 0 0 ;
	setAttr ".tk[191]" -type "float3" 0.10194302 0 0 ;
	setAttr ".tk[211]" -type "float3" 0.1052696 0 0 ;
	setAttr ".tk[231]" -type "float3" 0.091350734 -0.01116439 0.044474948 ;
	setAttr ".tk[236]" -type "float3" -7.4505806e-009 -1.4901161e-008 -2.2351742e-008 ;
	setAttr ".tk[251]" -type "float3" 0.10495321 -0.052517228 0.11222866 ;
	setAttr ".tk[252]" -type "float3" 0.020346418 -0.0093191387 -0.014538002 ;
	setAttr ".tk[384]" -type "float3" 0 -0.028008431 -0.090607919 ;
	setAttr ".tk[385]" -type "float3" 0 0 -0.083559632 ;
	setAttr ".tk[391]" -type "float3" 0.10667998 0 0.083516598 ;
createNode polySplit -n "polySplit4";
	rename -uid "36F893DC-47DF-2205-6471-2BA021B57542";
	setAttr -s 2 ".e[0:1]"  0 0.53357702;
	setAttr -s 2 ".d[0:1]"  -2147483412 -2147483031;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "08D964CE-4C4A-48D6-D8F9-64B933E34F81";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[392]" -type "float3" -0.075107791 0.0091965236 -0.012797134 ;
createNode polySplit -n "polySplit5";
	rename -uid "276C2B5F-4E22-B59D-6D2B-DA8EA234E84E";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483392 -2147482850;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "92A519A5-459D-1AF8-BE83-289A6430C600";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483436 -2147483416;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "40EB0EE9-464C-98B6-CAC2-06B71DF90F44";
	setAttr -s 3 ".e[0:2]"  0 0.56561702 1;
	setAttr -s 3 ".d[0:2]"  -2147483436 -2147482866 -2147483055;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "20948590-4DFD-FE9D-8412-8AA6BFC941C4";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147482858 -2147483496;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "D66955C4-4483-21D8-07E0-96A5F8F92A20";
	setAttr -s 3 ".e[0:2]"  0 0.49269301 0;
	setAttr -s 3 ".d[0:2]"  -2147483476 -2147483496 -2147482864;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "1EA2BF91-4808-192B-D71B-03B28D2093E4";
	setAttr -s 3 ".e[0:2]"  0 0.38318899 1;
	setAttr -s 3 ".d[0:2]"  -2147483512 -2147482854 -2147483492;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "345569DE-4CA0-CD46-CECE-98A87F06694B";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483515 -2147482857;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "645724BC-4F5D-70CF-425B-85963D8DCC0C";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483035 -2147483034;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "57F39B58-4E52-AECF-E79F-3187ED942925";
	setAttr -s 3 ".e[0:2]"  1 0.46713701 1;
	setAttr -s 3 ".d[0:2]"  -2147483416 -2147483035 -2147483395;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "63BCB2A1-46C4-79F3-0EFB-D5AC316A11E4";
	setAttr ".uopa" yes;
	setAttr ".tk[198]" -type "float3"  0 0 0.18590446;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3E0C76C6-477C-C558-8D3B-6A92365AE6AB";
	setAttr ".dc" -type "componentList" 1 "vtx[198]";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "23997459-45AE-6213-28D1-929FD47BFD73";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit14";
	rename -uid "493CF3C0-46A3-A1DC-B708-EF88F74B3339";
	setAttr -s 21 ".e[0:20]"  0.812419 0.81669003 0.81778502 0.82330799
		 0.81200999 0.81686801 0.821747 0.81542599 0.82141602 0.812958 0.812226 0.812419 0.81314701
		 0.82222402 0.815063 0.81656998 0.81015301 0.81652701 0.81168002 0.81492198 0.812419;
	setAttr -s 21 ".d[0:20]"  -2147483595 -2147483594 -2147483593 -2147483592 -2147483591 -2147483590 
		-2147483589 -2147483608 -2147483607 -2147483606 -2147483605 -2147483604 -2147483603 -2147483602 -2147483601 -2147483600 -2147483599 -2147483598 
		-2147483597 -2147483596 -2147483595;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "611F6995-464C-9119-6694-6E89BFB16FDE";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[20:39]" -type "float3"  -0.23077698 0 0 -0.18713006
		 -4.6566129e-010 0.051129889 -0.15638427 0 0.093332149 -0.1243118 0 0.13106346 -0.031768005
		 0 0.15448134 0.04922751 0 0.15750757 0.10434359 0 0.094650559 0.15611079 0 0.06315697
		 0.20061985 0 0.042274989 0.24456735 0 -0.017873619 0.23145328 0 -0.09617728 0.22023438
		 0.0019006184 -0.14816284 0.16637284 0 -0.17048511 0.15241237 0 -0.22210789 0.065434575
		 0 -0.25632209 0 0 -0.25888005 -0.07416521 0 -0.25164711 -0.14320424 0 -0.19265264
		 -0.20495808 0 -0.13203837 -0.21864027 0 -0.070252314;
createNode polySplit -n "polySplit15";
	rename -uid "B85DE9EC-4F84-DC28-9C23-F28D804BBF87";
	setAttr -s 21 ".e[0:20]"  0.55670398 0.54816598 0.53652 0.55473697
		 0.52686501 0.54905599 0.49875301 0.493065 0.49661601 0.524652 0.54027301 0.52815503
		 0.53015602 0.54220003 0.52945101 0.52654397 0.51541603 0.51660901 0.51563102 0.538571
		 0.55670398;
	setAttr -s 21 ".d[0:20]"  -2147483529 -2147483548 -2147483547 -2147483546 -2147483545 -2147483544 
		-2147483543 -2147483542 -2147483541 -2147483540 -2147483539 -2147483538 -2147483537 -2147483536 -2147483535 -2147483534 -2147483533 -2147483532 
		-2147483531 -2147483530 -2147483529;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "CB2912F9-40CA-47C1-1843-F6B825CB2D49";
	setAttr -s 15 ".e[0:14]"  0.48183101 0.479669 0.509314 0.51189297 0.52334499
		 0.52863801 0.54543 0.55982602 0.564138 0.57307601 0.59726298 0.593997 0.604828 0.64138699
		 0.610098;
	setAttr -s 15 ".d[0:14]"  -2147483560 -2147483559 -2147483558 -2147483557 -2147483556 -2147483555 
		-2147483554 -2147483553 -2147483552 -2147483551 -2147483550 -2147483549 -2147483568 -2147483567 -2147483566;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "2D4A9C68-4ED8-CA2C-6641-9C98FA598EAF";
	setAttr -s 7 ".e[0:6]"  0 0.578475 0.586568 0.59094399 0.594576 0.556988
		 1;
	setAttr -s 7 ".d[0:6]"  -2147483454 -2147483565 -2147483564 -2147483563 -2147483562 -2147483561 
		-2147483560;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "F3B01A3F-49A2-93C7-B5AC-5198AD0F0CD4";
	setAttr ".uopa" yes;
	setAttr -s 74 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[20]" -type "float3" -0.049524065 -0.044519119 0.092765771 ;
	setAttr ".tk[21]" -type "float3" -0.031449407 -0.035023294 0.14294571 ;
	setAttr ".tk[22]" -type "float3" -0.031994589 -0.035935052 0.13289408 ;
	setAttr ".tk[23]" -type "float3" 0.017528858 -0.044776991 0.10556417 ;
	setAttr ".tk[24]" -type "float3" 0 -0.039017387 0.17169145 ;
	setAttr ".tk[25]" -type "float3" 0.047146142 -0.036901657 0.14893778 ;
	setAttr ".tk[26]" -type "float3" 0.11341136 -0.039669 0.13100614 ;
	setAttr ".tk[27]" -type "float3" 0.12940475 -0.05602302 0.11960746 ;
	setAttr ".tk[28]" -type "float3" 0.03580524 -0.044628132 0.14669795 ;
	setAttr ".tk[29]" -type "float3" 0.075899772 -0.054708421 0.10460062 ;
	setAttr ".tk[30]" -type "float3" 0.071359508 -0.055654041 0.067091659 ;
	setAttr ".tk[31]" -type "float3" 0.027416356 -0.051161081 0.014480034 ;
	setAttr ".tk[32]" -type "float3" 0.041424535 -0.051589772 -0.061233375 ;
	setAttr ".tk[33]" -type "float3" 0.0056420574 -0.059183843 -0.090708956 ;
	setAttr ".tk[34]" -type "float3" 0.042952754 -0.04168918 -0.035005994 ;
	setAttr ".tk[35]" -type "float3" 0.024005394 -0.038665343 -0.046008743 ;
	setAttr ".tk[36]" -type "float3" -0.034207657 -0.042610921 -0.022451589 ;
	setAttr ".tk[37]" -type "float3" -0.064046517 -0.040972862 0.0076311873 ;
	setAttr ".tk[38]" -type "float3" -0.062444117 -0.04115241 0.038669884 ;
	setAttr ".tk[39]" -type "float3" -0.062337037 -0.040365379 0.072557047 ;
	setAttr ".tk[40]" -type "float3" 0 0.25140038 0 ;
	setAttr ".tk[41]" -type "float3" -0.028011138 0.23517312 -0.0086351633 ;
	setAttr ".tk[62]" -type "float3" 0.018409405 0 -0.046865866 ;
	setAttr ".tk[71]" -type "float3" -0.030515587 -0.01464102 0.031949915 ;
	setAttr ".tk[72]" -type "float3" 1.8626451e-009 9.3132257e-010 0.032982189 ;
	setAttr ".tk[73]" -type "float3" 0.023979235 -0.01337088 0.081410453 ;
	setAttr ".tk[74]" -type "float3" -0.032267172 0 0.091814801 ;
	setAttr ".tk[75]" -type "float3" 0 0 0.068063095 ;
	setAttr ".tk[76]" -type "float3" 0.10508618 0 0.036510427 ;
	setAttr ".tk[77]" -type "float3" 0.10347836 0 -0.019990239 ;
	setAttr ".tk[78]" -type "float3" 0.084398583 0 -0.069225162 ;
	setAttr ".tk[79]" -type "float3" 0.051621303 0 -0.056608446 ;
	setAttr ".tk[80]" -type "float3" 0.072369456 0 -0.036066286 ;
	setAttr ".tk[81]" -type "float3" 0.036102518 0 -0.054123532 ;
	setAttr ".tk[82]" -type "float3" -0.095238231 0.23518714 -0.081228681 ;
	setAttr ".tk[83]" -type "float3" -0.13549463 0.23518714 -0.016380854 ;
	setAttr ".tk[84]" -type "float3" -0.15277497 0.23518714 0.040831435 ;
	setAttr ".tk[85]" -type "float3" -0.11446599 0.2355369 0.096236594 ;
	setAttr ".tk[86]" -type "float3" -0.049921289 0.23518714 0.082040094 ;
	setAttr ".tk[87]" -type "float3" 0.010045817 0.23518714 0.10488304 ;
	setAttr ".tk[88]" -type "float3" 0.070422426 0.23518714 0.10297599 ;
	setAttr ".tk[89]" -type "float3" 0.11130264 0.23518714 0.098880373 ;
	setAttr ".tk[90]" -type "float3" 0.1391497 0.23518714 0.069516338 ;
	setAttr ".tk[91]" -type "float3" 0.16011043 0.23518714 0.028563764 ;
	setAttr ".tk[92]" -type "float3" 0.18577102 0.23518714 -0.004730409 ;
	setAttr ".tk[93]" -type "float3" 0.16630153 0.23518714 -0.026050117 ;
	setAttr ".tk[94]" -type "float3" 0.17894551 0.23518714 -0.068983197 ;
	setAttr ".tk[95]" -type "float3" 0.16011706 0.23518714 -0.10850953 ;
	setAttr ".tk[96]" -type "float3" 0.09129028 0.23518714 -0.13085108 ;
	setAttr ".tk[97]" -type "float3" 0.067710698 0.23518714 -0.1475362 ;
	setAttr ".tk[98]" -type "float3" 0.045424245 0.23518714 -0.17114572 ;
	setAttr ".tk[99]" -type "float3" -0.0088730752 0.23518714 -0.17498572 ;
	setAttr ".tk[100]" -type "float3" -0.061185695 0.23518714 -0.15738769 ;
	setAttr ".tk[101]" -type "float3" -0.10087143 0.23518714 -0.10372474 ;
createNode polySplit -n "polySplit18";
	rename -uid "BB99B00A-4531-88AE-66C4-349995076232";
	setAttr -s 21 ".e[0:20]"  0.53451502 0.52558303 0.52173901 0.49301901
		 0.490347 0.50527197 0.487867 0.467502 0.47070599 0.44751501 0.44854 0.43764701 0.43414199
		 0.44525301 0.45689201 0.45596001 0.449296 0.488915 0.497758 0.50729197 0.53451502;
	setAttr -s 21 ".d[0:20]"  -2147483586 -2147483587 -2147483588 -2147483569 -2147483570 -2147483571 
		-2147483572 -2147483573 -2147483574 -2147483575 -2147483576 -2147483577 -2147483578 -2147483579 -2147483580 -2147483581 -2147483582 -2147483583 
		-2147483584 -2147483585 -2147483586;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "3CD8C8B1-42C0-7DAA-7948-CBAF85E662CD";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[40]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[102]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[108]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[110]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[115]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.3086355 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.3086355 0 ;
createNode polySplit -n "polySplit19";
	rename -uid "25AFBB59-48FE-B494-D413-19A365C88463";
	setAttr -s 21 ".e[0:20]"  0.47651801 0.461043 0.442063 0.438328 0.46528801
		 0.43536299 0.455612 0.43820301 0.424124 0.47799799 0.48295599 0.48341101 0.472864
		 0.45531899 0.46228901 0.45930699 0.47371399 0.48407599 0.495231 0.48901999 0.47651801;
	setAttr -s 21 ".d[0:20]"  -2147483423 -2147483424 -2147483425 -2147483426 -2147483427 -2147483428 
		-2147483409 -2147483410 -2147483411 -2147483412 -2147483413 -2147483414 -2147483415 -2147483416 -2147483417 -2147483418 -2147483419 -2147483420 
		-2147483421 -2147483422 -2147483423;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "B0FB5EDE-4A07-A86D-EFEC-9F8C8B22489C";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit20";
	rename -uid "A5B2B1FF-4B20-D734-0FC9-91A1CF263CBF";
	setAttr -s 21 ".e[0:20]"  0.83378899 0.82769603 0.82742703 0.833009
		 0.84389502 0.84534198 0.83931899 0.84555399 0.85445499 0.86161 0.86632001 0.86812299
		 0.86684299 0.86260498 0.85582399 0.85855001 0.85497701 0.85631597 0.84800899 0.84299201
		 0.83378899;
	setAttr -s 21 ".d[0:20]"  -2147483591 -2147483590 -2147483589 -2147483608 -2147483607 -2147483606 
		-2147483605 -2147483604 -2147483603 -2147483602 -2147483601 -2147483600 -2147483599 -2147483598 -2147483597 -2147483596 -2147483595 -2147483594 
		-2147483593 -2147483592 -2147483591;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "8FE9AE8C-472A-67CD-D1F2-4A9E61534276";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk";
	setAttr ".tk[1]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[5]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[7]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[11]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[13]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[14]" -type "float3" -8.8817842e-016 0 0 ;
	setAttr ".tk[15]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[17]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.38638943 0 0.12214765 ;
	setAttr ".tk[21]" -type "float3" -0.32868218 0 0.2323387 ;
	setAttr ".tk[22]" -type "float3" -0.23880178 0 0.31978679 ;
	setAttr ".tk[23]" -type "float3" -0.1255455 0 0.37593198 ;
	setAttr ".tk[24]" -type "float3" -4.8431595e-008 0 0.39527813 ;
	setAttr ".tk[25]" -type "float3" 0.12554547 0 0.37593198 ;
	setAttr ".tk[26]" -type "float3" 0.23880166 0 0.31978676 ;
	setAttr ".tk[27]" -type "float3" 0.32868201 0 0.23233862 ;
	setAttr ".tk[28]" -type "float3" 0.38638926 0 0.12214758 ;
	setAttr ".tk[29]" -type "float3" 0.40627372 0 -7.0681232e-008 ;
	setAttr ".tk[30]" -type "float3" 0.38638926 0 -0.12214774 ;
	setAttr ".tk[31]" -type "float3" 0.32868201 0 -0.23233873 ;
	setAttr ".tk[32]" -type "float3" 0.23880155 0 -0.31978679 ;
	setAttr ".tk[33]" -type "float3" 0.12554544 0 -0.37593198 ;
	setAttr ".tk[34]" -type "float3" -3.6323694e-008 0 -0.39527813 ;
	setAttr ".tk[35]" -type "float3" -0.1255455 0 -0.37593198 ;
	setAttr ".tk[36]" -type "float3" -0.23880166 0 -0.31978676 ;
	setAttr ".tk[37]" -type "float3" -0.32868201 0 -0.23233873 ;
	setAttr ".tk[38]" -type "float3" -0.38638926 0 -0.12214773 ;
	setAttr ".tk[39]" -type "float3" -0.40627372 0 -7.0681232e-008 ;
createNode polySplit -n "polySplit21";
	rename -uid "BBAC9F55-456F-FEF8-8DC4-F4BCD897CE60";
	setAttr -s 21 ".e[0:20]"  0.25758699 0.255593 0.26805699 0.26547799
		 0.26462901 0.25751901 0.270055 0.258623 0.249744 0.252772 0.24070799 0.24778099 0.239921
		 0.243605 0.23613299 0.22373199 0.237083 0.25793001 0.248501 0.25268999 0.25758699;
	setAttr -s 21 ".d[0:20]"  -2147483603 -2147483602 -2147483601 -2147483600 -2147483599 -2147483598 
		-2147483597 -2147483596 -2147483595 -2147483594 -2147483593 -2147483592 -2147483591 -2147483590 -2147483589 -2147483608 -2147483607 -2147483606 
		-2147483605 -2147483604 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySphere -n "polySphere2";
	rename -uid "40FCAB0F-44D5-777B-4233-ABA60D082C3E";
createNode polySphere -n "polySphere3";
	rename -uid "8116D1F3-4E2C-5C0D-ED1A-AA80A264F300";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "E66E08BD-471D-52EF-F688-BAB270881649";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 0.33557308432129584 0 -0 0 -0 0.71318503242957754 -0.23300747346309558 0
		 0 0.10421531803312664 0.31898034799680342 0 -3.2018746452632412 0.099621130783829837 0.98548565769755925 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "DB9D4BCC-41B7-252C-6482-72BD4D09BF2D";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[0]" -type "float3" -0.41999966 -0.3214789 0.13646607 ;
	setAttr ".tk[1]" -type "float3" -0.35727307 -0.3214789 0.259574 ;
	setAttr ".tk[2]" -type "float3" -0.25957417 -0.3214789 0.35727292 ;
	setAttr ".tk[3]" -type "float3" -0.13646622 -0.3214789 0.4199996 ;
	setAttr ".tk[4]" -type "float3" -5.2644456e-008 -0.3214789 0.44161379 ;
	setAttr ".tk[5]" -type "float3" 0.1364661 -0.3214789 0.41999957 ;
	setAttr ".tk[6]" -type "float3" 0.25957394 -0.3214789 0.35727289 ;
	setAttr ".tk[7]" -type "float3" 0.35727289 -0.3214789 0.25957394 ;
	setAttr ".tk[8]" -type "float3" 0.41999957 -0.3214789 0.13646603 ;
	setAttr ".tk[9]" -type "float3" 0.44161373 -0.3214789 -7.8966671e-008 ;
	setAttr ".tk[10]" -type "float3" 0.41999957 -0.3214789 -0.13646619 ;
	setAttr ".tk[11]" -type "float3" 0.35727289 -0.3214789 -0.25957403 ;
	setAttr ".tk[12]" -type "float3" 0.25957394 -0.3214789 -0.35727292 ;
	setAttr ".tk[13]" -type "float3" 0.13646604 -0.3214789 -0.4199996 ;
	setAttr ".tk[14]" -type "float3" -3.9483336e-008 -0.3214789 -0.44161379 ;
	setAttr ".tk[15]" -type "float3" -0.13646616 -0.3214789 -0.41999957 ;
	setAttr ".tk[16]" -type "float3" -0.25957394 -0.3214789 -0.35727292 ;
	setAttr ".tk[17]" -type "float3" -0.35727289 -0.3214789 -0.259574 ;
	setAttr ".tk[18]" -type "float3" -0.41999957 -0.3214789 -0.13646618 ;
	setAttr ".tk[19]" -type "float3" -0.44161373 -0.3214789 -7.8966671e-008 ;
	setAttr ".tk[40]" -type "float3" -5.2644456e-008 -0.3214789 -7.8966671e-008 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "1B5F211E-482D-0999-939B-188C15BA878A";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 0.21264772345654076 0 0 0 0 0.21264772345654076 0 0
		 0 0 0.21264772345654076 0 -3.2016339509339686 -1.134513881177323 1.3630861538974119 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "95B4D458-4D08-C97C-7010-C9A992DA3816";
	setAttr ".uopa" yes;
	setAttr -s 206 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[94]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[98]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[280]" -type "float3" 0.069694608 0.55967057 -0.29364049 ;
	setAttr ".tk[281]" -type "float3" 0.059285775 0.49647409 -0.30468744 ;
	setAttr ".tk[282]" -type "float3" 0.043073636 0.44632095 -0.31345457 ;
	setAttr ".tk[283]" -type "float3" 0.022645159 0.41412061 -0.31908324 ;
	setAttr ".tk[284]" -type "float3" 9.2657144e-009 0.40302521 -0.32102284 ;
	setAttr ".tk[285]" -type "float3" -0.02264514 0.41412064 -0.31908324 ;
	setAttr ".tk[286]" -type "float3" -0.043073609 0.44632095 -0.31345451 ;
	setAttr ".tk[287]" -type "float3" -0.059285745 0.49647409 -0.30468744 ;
	setAttr ".tk[288]" -type "float3" -0.069694571 0.55967057 -0.29364049 ;
	setAttr ".tk[289]" -type "float3" -0.073281199 0.62972456 -0.28139472 ;
	setAttr ".tk[290]" -type "float3" -0.069694571 0.6997788 -0.26914901 ;
	setAttr ".tk[291]" -type "float3" -0.059285745 0.76297539 -0.25810215 ;
	setAttr ".tk[292]" -type "float3" -0.043073598 0.81312847 -0.2493351 ;
	setAttr ".tk[293]" -type "float3" -0.022645129 0.84532857 -0.2437063 ;
	setAttr ".tk[294]" -type "float3" 7.0817654e-009 0.85642403 -0.2417668 ;
	setAttr ".tk[295]" -type "float3" 0.022645144 0.84532857 -0.2437063 ;
	setAttr ".tk[296]" -type "float3" 0.043073609 0.81312841 -0.24933508 ;
	setAttr ".tk[297]" -type "float3" 0.059285752 0.76297534 -0.25810215 ;
	setAttr ".tk[298]" -type "float3" 0.069694571 0.6997788 -0.26914901 ;
	setAttr ".tk[299]" -type "float3" 0.073281199 0.62972456 -0.28139472 ;
	setAttr ".tk[300]" -type "float3" 0.057933923 0.5239765 -0.30808765 ;
	setAttr ".tk[301]" -type "float3" 0.049281534 0.4714438 -0.31727046 ;
	setAttr ".tk[302]" -type "float3" 0.035805132 0.42975366 -0.32455796 ;
	setAttr ".tk[303]" -type "float3" 0.018823875 0.40298712 -0.32923689 ;
	setAttr ".tk[304]" -type "float3" 9.2657144e-009 0.39376399 -0.3308492 ;
	setAttr ".tk[305]" -type "float3" -0.018823856 0.40298712 -0.32923689 ;
	setAttr ".tk[306]" -type "float3" -0.03580511 0.42975372 -0.32455802 ;
	setAttr ".tk[307]" -type "float3" -0.049281497 0.47144386 -0.31727046 ;
	setAttr ".tk[308]" -type "float3" -0.057933886 0.5239765 -0.30808759 ;
	setAttr ".tk[309]" -type "float3" -0.06091528 0.58220923 -0.29790834 ;
	setAttr ".tk[310]" -type "float3" -0.057933886 0.64044172 -0.28772888 ;
	setAttr ".tk[311]" -type "float3" -0.049281497 0.69297397 -0.27854609 ;
	setAttr ".tk[312]" -type "float3" -0.035805102 0.73466408 -0.27125844 ;
	setAttr ".tk[313]" -type "float3" -0.018823853 0.76143092 -0.26657972 ;
	setAttr ".tk[314]" -type "float3" 7.4502977e-009 0.77065378 -0.26496744 ;
	setAttr ".tk[315]" -type "float3" 0.018823862 0.76143092 -0.26657972 ;
	setAttr ".tk[316]" -type "float3" 0.03580511 0.73466408 -0.27125847 ;
	setAttr ".tk[317]" -type "float3" 0.049281504 0.69297397 -0.27854609 ;
	setAttr ".tk[318]" -type "float3" 0.057933886 0.64044172 -0.28772888 ;
	setAttr ".tk[320]" -type "float3" 0.044746701 0.49900368 -0.31905603 ;
	setAttr ".tk[321]" -type "float3" 0.03806382 0.45842901 -0.32614884 ;
	setAttr ".tk[322]" -type "float3" 0.027654989 0.42622882 -0.33177742 ;
	setAttr ".tk[323]" -type "float3" 0.01453909 0.40555492 -0.33539134 ;
	setAttr ".tk[324]" -type "float3" 9.2657144e-009 0.39843127 -0.33663657 ;
	setAttr ".tk[325]" -type "float3" -0.014539071 0.40555492 -0.33539134 ;
	setAttr ".tk[326]" -type "float3" -0.027654961 0.42622885 -0.33177742 ;
	setAttr ".tk[327]" -type "float3" -0.038063787 0.45842904 -0.32614884 ;
	setAttr ".tk[328]" -type "float3" -0.044746663 0.49900368 -0.31905603 ;
	setAttr ".tk[329]" -type "float3" -0.047049433 0.54398119 -0.31119382 ;
	setAttr ".tk[330]" -type "float3" -0.044746663 0.58895898 -0.30333164 ;
	setAttr ".tk[331]" -type "float3" -0.038063783 0.62953353 -0.29623899 ;
	setAttr ".tk[332]" -type "float3" -0.027654953 0.66173375 -0.29061025 ;
	setAttr ".tk[333]" -type "float3" -0.014539064 0.68240768 -0.28699636 ;
	setAttr ".tk[334]" -type "float3" 7.863532e-009 0.68953145 -0.2857511 ;
	setAttr ".tk[335]" -type "float3" 0.014539082 0.68240774 -0.28699639 ;
	setAttr ".tk[336]" -type "float3" 0.02765497 0.66173375 -0.29061025 ;
	setAttr ".tk[337]" -type "float3" 0.038063791 0.62953353 -0.29623902 ;
	setAttr ".tk[338]" -type "float3" 0.044746671 0.58895892 -0.30333161 ;
	setAttr ".tk[339]" -type "float3" 0.047049437 0.54398119 -0.31119382 ;
	setAttr ".tk[340]" -type "float3" 0.030457674 0.48536858 -0.32627609 ;
	setAttr ".tk[341]" -type "float3" 0.025908843 0.45775062 -0.33110386 ;
	setAttr ".tk[342]" -type "float3" 0.018823875 0.43583301 -0.33493507 ;
	setAttr ".tk[343]" -type "float3" 0.0098962998 0.42176104 -0.33739501 ;
	setAttr ".tk[344]" -type "float3" 9.2657144e-009 0.41691205 -0.33824253 ;
	setAttr ".tk[345]" -type "float3" -0.0098962812 0.42176104 -0.33739501 ;
	setAttr ".tk[346]" -type "float3" -0.018823855 0.43583304 -0.33493501 ;
	setAttr ".tk[347]" -type "float3" -0.025908817 0.45775068 -0.3311038 ;
	setAttr ".tk[348]" -type "float3" -0.030457638 0.48536861 -0.32627609 ;
	setAttr ".tk[349]" -type "float3" -0.032025054 0.51598316 -0.32092455 ;
	setAttr ".tk[350]" -type "float3" -0.030457638 0.54659796 -0.31557286 ;
	setAttr ".tk[351]" -type "float3" -0.025908815 0.57421601 -0.31074515 ;
	setAttr ".tk[352]" -type "float3" -0.018823853 0.59613371 -0.30691376 ;
	setAttr ".tk[353]" -type "float3" -0.0098962802 0.61020583 -0.30445406 ;
	setAttr ".tk[354]" -type "float3" 8.311293e-009 0.61505461 -0.30360642 ;
	setAttr ".tk[355]" -type "float3" 0.0098962961 0.61020583 -0.30445406 ;
	setAttr ".tk[356]" -type "float3" 0.018823866 0.59613371 -0.30691376 ;
	setAttr ".tk[357]" -type "float3" 0.025908822 0.57421601 -0.31074515 ;
	setAttr ".tk[358]" -type "float3" 0.030457655 0.54659796 -0.31557286 ;
	setAttr ".tk[359]" -type "float3" 0.032025069 0.51598316 -0.32092455 ;
	setAttr ".tk[360]" -type "float3" 0.015418669 0.48340568 -0.32956952 ;
	setAttr ".tk[361]" -type "float3" 0.013115905 0.46942469 -0.3320134 ;
	setAttr ".tk[362]" -type "float3" 0.0095292646 0.45832905 -0.3339529 ;
	setAttr ".tk[363]" -type "float3" 0.0050098351 0.4512054 -0.33519813 ;
	setAttr ".tk[364]" -type "float3" 9.2657144e-009 0.44875076 -0.33562729 ;
	setAttr ".tk[365]" -type "float3" -0.0050098165 0.4512054 -0.33519813 ;
	setAttr ".tk[366]" -type "float3" -0.0095292451 0.45832908 -0.3339529 ;
	setAttr ".tk[367]" -type "float3" -0.013115881 0.46942469 -0.3320134 ;
	setAttr ".tk[368]" -type "float3" -0.015418643 0.48340568 -0.32956952 ;
	setAttr ".tk[369]" -type "float3" -0.016212126 0.49890369 -0.32686025 ;
	setAttr ".tk[370]" -type "float3" -0.015418643 0.51440185 -0.32415113 ;
	setAttr ".tk[371]" -type "float3" -0.013115881 0.52838302 -0.32170722 ;
	setAttr ".tk[372]" -type "float3" -0.0095292423 0.53947872 -0.31976774 ;
	setAttr ".tk[373]" -type "float3" -0.0050098156 0.54660213 -0.31852242 ;
	setAttr ".tk[374]" -type "float3" 8.782556e-009 0.54905689 -0.31809339 ;
	setAttr ".tk[375]" -type "float3" 0.0050098314 0.54660213 -0.31852242 ;
	setAttr ".tk[376]" -type "float3" 0.0095292591 0.53947872 -0.31976774 ;
	setAttr ".tk[377]" -type "float3" 0.013115898 0.52838302 -0.32170722 ;
	setAttr ".tk[378]" -type "float3" 0.01541866 0.51440185 -0.32415113 ;
	setAttr ".tk[379]" -type "float3" 0.016212137 0.49890369 -0.32686025 ;
	setAttr ".tk[380]" -type "float3" 0 -0.90463066 0 ;
	setAttr ".tk[381]" -type "float3" 0 0.053841669 -0.19548255 ;
createNode polyUnite -n "polyUnite1";
	rename -uid "BCA54FB7-4CBE-C467-7136-8788246B7832";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	rename -uid "64EAC93B-4CDA-A416-1C1D-26AAA59D5296";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "216EB960-4A10-D9A5-9CBC-02A914D860FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "E9718710-47B2-AADA-7F27-5D892D6D067A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "1E3CA59B-416B-9563-1200-5EA7358B5457";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId4";
	rename -uid "E06AC275-4A75-C15E-AED1-AE99F60CD6F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "48A7651E-4B75-4E35-E460-D195A0AA3A4B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B7E08283-402B-D111-C3DA-8F9DACA26822";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId6";
	rename -uid "7C1263E2-48F4-21F4-43F7-F3AA51043088";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "C637BD27-463F-C270-38BE-81B52BF0CF3B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "609D7C58-4FBA-547B-D51E-82A99AF4A2AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId8";
	rename -uid "037507E1-431F-C106-2616-BFB7B4BE93DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "DF8112C2-4B63-0D34-5184-2ABBFE2C8282";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "2CFB333B-4456-C52B-57FE-A384074AEB75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:999]";
createNode polyUnite -n "polyUnite2";
	rename -uid "A5BA4084-4F21-4F9E-B654-37B65BB0040E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId10";
	rename -uid "065B2E22-49C5-D1E2-0FDB-7FB01E9D5D3E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "3A67E2B1-4005-369B-C416-82B9B4582B92";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId11";
	rename -uid "FC0737D9-460E-5EE0-2DF3-10A3561CA26F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "0516E486-4EF0-9163-7EA6-C99FB6F1DCEF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "162CEA6F-44B5-BAA2-41D0-37B53AA7A666";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:421]";
createNode groupId -n "groupId13";
	rename -uid "D6B8A610-4EF6-D0E9-9DA9-51A37BB55546";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "4B00A98F-4077-93A8-EDEE-A59079B0A058";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "5DD95830-48F7-9FA7-B7C1-CB9E174E1BDF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode polySeparate -n "polySeparate1";
	rename -uid "364D9686-4F66-3DE0-BF4E-5FA500F84011";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId15";
	rename -uid "EAF5AE04-4A0A-3359-CFF4-BFB4276B3605";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "939F2E24-4CAD-0464-707A-D58D3E275E53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode groupId -n "groupId16";
	rename -uid "8F263B65-47A0-6813-379D-09A63E423541";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "7F5B8B96-4404-82B0-080B-0594EC701907";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode polyUnite -n "polyUnite3";
	rename -uid "C0ACD469-41A4-A05E-3941-008B9B839188";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId17";
	rename -uid "AC9800B5-4204-93F8-9A70-C09183DD313B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "A6C82A8C-409C-E40A-EEE4-9EAE801ECB0D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode polySeparate -n "polySeparate2";
	rename -uid "942479B2-4B75-069E-0D48-09B37E7536F3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId18";
	rename -uid "0F6FE776-476A-C273-96D0-D294D72B13A9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "3BD9EAE9-4BFF-F24B-C8AA-7E95D246BD0B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode groupId -n "groupId19";
	rename -uid "AE738FBA-4496-62B0-6C49-F9ACAE5D1725";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "E3C4D7D7-462D-8578-A0B8-E79F55A2FA88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode polyUnite -n "polyUnite4";
	rename -uid "554EDF7A-4F06-9E72-6840-7AA801DB1026";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId20";
	rename -uid "029A0D18-4BAC-C2AC-7F0B-34A90D486BCE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "B2ECB0A5-4DAB-A7AB-9A00-7B974E7FDDD9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:581]";
createNode groupId -n "groupId21";
	rename -uid "96CC4FDC-4E34-FD6A-8775-28A0D72C9D84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "4EECADE8-45B1-F80F-F53B-808466A27318";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate3";
	rename -uid "6DE00DE2-43D1-ED91-DDA6-0CAF11B8E1E2";
	setAttr ".ic" 4;
	setAttr -s 3 ".out";
createNode groupId -n "groupId23";
	rename -uid "1893D641-4884-5DD8-6756-1BB2B9A29660";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "206DBAA8-4CC5-DC19-D570-D4A55452A4AE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:999]";
createNode groupId -n "groupId24";
	rename -uid "F16D8FC9-494F-B45E-49C8-EE8DFB34CE3F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "EA9DD0DC-47D9-EC83-439D-B2BE16D780E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:999]";
createNode groupId -n "groupId25";
	rename -uid "70ABFC71-4022-4216-291D-BFA78EAD149E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "A4E0D5BA-4044-BE6A-6F1A-4193A3EF5A41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:999]";
createNode polySphere -n "polySphere4";
	rename -uid "BF5995FA-4EDD-F99C-67EC-49948CE4BD02";
createNode polyCube -n "polyCube1";
	rename -uid "22F9ED20-4D87-71D1-DFB8-5C825F966720";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit22";
	rename -uid "9FAF7027-4ECA-E525-3327-20BBE6BA024A";
	setAttr -s 5 ".e[0:4]"  0.53155702 0.52518702 0.558487 0.520109 0.53155702;
	setAttr -s 5 ".d[0:4]"  -2147483647 -2147483648 -2147483645 -2147483646 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "polyUnite5";
	rename -uid "97BA03D5-4AB6-FB30-FA1E-4EBBB6D022F6";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
createNode groupId -n "groupId26";
	rename -uid "2A2C0B24-4597-B6E2-AABB-21B78B59CDC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "922B5431-4EDE-BD97-371B-51B1FB3304D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "A5A29FBF-4CAB-932C-E3DF-949F5CF4C532";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "69C788C8-46C7-5114-EC40-0EAB5BCAE2AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "0218DB12-446F-C6F6-A3DF-1C8926EEB164";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "30A7F4E1-4D7B-5A27-C6E0-CA97F8B55468";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "760B41F7-4FD1-830F-F375-209099FACDA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "41AA01BE-4E15-429E-29F1-90A6227BE278";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "980D3F81-4086-D47F-628D-86B62451B004";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "338241BA-4EA6-1719-ED61-12A291D589B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "D7A8FDF9-4A5A-1EE9-4378-909E8EEA7303";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "F8E55ECD-4C4D-9A3F-E2E3-C699F78B5F37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId37";
	rename -uid "FCF48D7B-4127-6D8A-FC5F-C9BE56DF2493";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "18F75B67-4184-C2B2-AE46-83A08EA962FC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "A13A1F1E-4956-7535-EB0F-DD8C8FBEBFC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId39";
	rename -uid "E41A00ED-424D-8BAE-3585-FC8647F8EF52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "30C13736-499B-6FC5-8D6E-C5872647146F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "1ADA054A-4421-7652-7CFD-E8A2D33789C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:459]";
createNode polyUnite -n "polyUnite6";
	rename -uid "96EA1FA7-4510-B119-2F49-50A82DFFE364";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId41";
	rename -uid "4A914E0A-4CDA-1D5B-0197-01BF5766DD44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "73A237DD-4397-1E34-67DA-6A9416FBEE63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode polySeparate -n "polySeparate4";
	rename -uid "695DCB6C-4A45-8050-98E4-F984B472236D";
	setAttr ".ic" 10;
	setAttr -s 10 ".out";
createNode groupId -n "groupId42";
	rename -uid "0032CD66-4DF9-B428-029D-7BA452CDF710";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "B5ECEC0F-4886-E11E-D5D0-FF80F6A80A67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId43";
	rename -uid "D37ECE8F-4533-224B-832F-2EBFA82EC1D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "CB8E9305-4B12-A609-C3FC-E59878518FC5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId44";
	rename -uid "7F8222B9-4B51-7880-679F-FDBD4EA06BC0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "3B8F3915-4B23-A51F-BE2B-99B4F7EE0801";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId45";
	rename -uid "2A48368C-466E-72C0-373A-F1BD3CFECFF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "43BF03AC-48A6-07CE-F4BF-40870D3D2CA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId46";
	rename -uid "6F97CF1B-4D82-54AE-F905-65836950071E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "3204C9C7-4680-5499-0F4A-9D915DC7A7BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId47";
	rename -uid "AC8069DF-4424-4FFF-63F4-9E8DFC751A80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "2169DCF5-4DEE-C12F-51C7-48A73825676A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId48";
	rename -uid "7F62FE0A-41FE-6CE2-45FC-BDA534611A54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "3775C1ED-4E45-1AA1-05DF-2292D677FD63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId49";
	rename -uid "9E19B498-4110-5D9A-FF12-99A6C326077F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "11E939B9-4B47-B972-4ECA-899E2E020A50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId50";
	rename -uid "01392264-4E86-F1B1-94AC-E0BCBE1993E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "39926B05-4BFC-2FAE-5B1A-8E8BA5314C86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId51";
	rename -uid "ABFDEF38-409B-DCEC-7C65-13BD4CC51FD3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "A7502D69-42D4-93E0-F3FE-C5AF45547956";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode polyUnite -n "polyUnite7";
	rename -uid "6BB25ECA-4870-BDCC-5D8B-24981BDDAF1C";
	setAttr -s 10 ".ip";
	setAttr -s 10 ".im";
createNode groupId -n "groupId52";
	rename -uid "B7A9902C-4152-9D8E-909B-13ADCF3A423C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "01CC25CB-4E76-E22A-50D1-1A83C1F12CCF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode polySeparate -n "polySeparate5";
	rename -uid "44445E73-41D3-8A4F-255B-C68309F22A4E";
	setAttr ".ic" 10;
	setAttr -s 10 ".out";
createNode groupId -n "groupId53";
	rename -uid "BA5B8CF0-416A-3A1B-B048-07897AC09392";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "FA548491-4AE2-10B1-9DBD-D08E1C282C9A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId54";
	rename -uid "F06D060B-41DD-DC4C-AAA4-31BB28DBA344";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "A804330A-4BBD-9E80-045D-969FFB18CF9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId55";
	rename -uid "888B9E88-4CA7-04CA-69C6-179B58D929EE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "813F265A-407F-621F-3E68-B0AD63AB267B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId56";
	rename -uid "0F0D85EC-470A-EEEA-0597-2397EE502F0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "EC798692-46DC-31A3-396B-4EBE0CDE20A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId57";
	rename -uid "640B5A45-4948-5E30-FD59-57B4CEF1A1C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "151F0AD5-4695-B72F-56E8-E880219C4CA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId58";
	rename -uid "B0D062C8-4536-5477-28FA-0EA1B41FF79E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "D31B0989-4D26-75BC-F1AA-26A97CE0AEB6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId59";
	rename -uid "9E637260-47A8-3BE2-8CC5-4E85F5918D94";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "196405DE-4E8B-4556-10E9-B8894007B1C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId60";
	rename -uid "5295E053-4D1F-21DE-CF63-F28A8513E89E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "5A68B149-4763-747A-2084-608A1FDB7516";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId61";
	rename -uid "B428E685-4F3A-79F7-66E3-3C9E9FA9F550";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "B1BB8273-448B-212C-72E3-289BF6B05768";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode groupId -n "groupId62";
	rename -uid "3C54B00D-43C1-160F-0FEA-139B08470938";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "5E796D7B-4A77-A641-A373-729CB6B8E3E8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode polyUnite -n "polyUnite8";
	rename -uid "231529C4-49CC-86BD-8513-2584E68516CC";
	setAttr -s 10 ".ip";
	setAttr -s 10 ".im";
createNode groupId -n "groupId63";
	rename -uid "5CD48657-437A-DE86-4F85-6EAF95EA9B95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "A1A05817-4980-5119-7FBD-A0ACC6764F31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1059]";
createNode polyCylinder -n "polyCylinder3";
	rename -uid "5324315A-4A16-6DA6-C2A9-D3A844C402C4";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit23";
	rename -uid "5425D02E-4131-5E82-51B4-5CAA3C83C529";
	setAttr -s 21 ".e[0:20]"  0.732467 0.73865002 0.745242 0.74617201 0.74158102
		 0.74337798 0.75504798 0.75046003 0.75339001 0.75939798 0.76574898 0.76853901 0.77692699
		 0.78828901 0.78091198 0.78505301 0.77507299 0.776164 0.76709902 0.75989598 0.732467;
	setAttr -s 21 ".d[0:20]"  -2147483594 -2147483593 -2147483592 -2147483591 -2147483590 -2147483589 
		-2147483608 -2147483607 -2147483606 -2147483605 -2147483604 -2147483603 -2147483602 -2147483601 -2147483600 -2147483599 -2147483598 -2147483597 
		-2147483596 -2147483595 -2147483594;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "A1259DC1-43C0-D5E4-3A6B-65B7C7EBF9EE";
	setAttr -s 22 ".e[0:21]"  0.362095 0.369883 0.36023301 0.34984699 0.34303799
		 0.354698 0.35285899 0.34909901 0.336043 0.32588401 0.32723901 0.23181 0.35152999
		 0.36114499 0.360192 0.36580801 0.367515 0.360549 0.368543 0.34741899 0.35399401 0.362095;
	setAttr -s 22 ".d[0:21]"  -2147483592 -2147483593 -2147483594 -2147483595 -2147483596 -2147483597 
		-2147483598 -2147483599 -2147483600 -2147483601 -2147483602 -2147483603 -2147483603 -2147483604 -2147483605 -2147483606 -2147483607 -2147483608 
		-2147483589 -2147483590 -2147483591 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "6047F679-4671-B0D2-B713-9C90EFFFB947";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483496 -2147483498;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySphere -n "polySphere5";
	rename -uid "465B402D-4A7A-2BF3-141C-54B798440A62";
createNode polyUnite -n "polyUnite9";
	rename -uid "3CE6709B-41B0-92E4-3899-D98E4E8A9A14";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId64";
	rename -uid "4889D7DF-4CDC-DA26-6566-BA874494FACC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "E18EF222-4DA2-EAAA-664B-E59750CAA8CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId65";
	rename -uid "F4FED4E8-4FF7-AEDD-B27C-DAA7514E9BFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "FDF4B7BE-4489-694D-B4C0-FA914A700021";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "F101DC08-4C78-4137-75CC-39BFE1DDF5A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1459]";
createNode groupId -n "groupId67";
	rename -uid "44AD4307-45DB-367B-5474-3DB2F61A35BD";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite10";
	rename -uid "895EC0BF-49A6-A83F-49ED-7489BC459A84";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId68";
	rename -uid "666BFBF9-4F29-FC3D-9155-27B432F75B46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "6A56A7BF-4AA8-8A79-EDA0-70B1C6985420";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:100]";
createNode groupId -n "groupId69";
	rename -uid "F9A7B689-45C3-7637-29F4-41B2E1076321";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "4E7EFE18-434E-8D94-E9A4-A8AF92C2C266";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "9A663969-4266-053F-CE28-538B529CA25F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5602]";
select -ne :time1;
	setAttr ".o" 56;
	setAttr ".unw" 56;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 70 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 70 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId12.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts6.og" "pSphereShape1.i";
connectAttr "groupId13.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupId10.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts5.og" "pCylinderShape1.i";
connectAttr "groupId11.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCylinderShape2.i";
connectAttr "groupId6.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pSphereShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape2.iog.og[0].gco";
connectAttr "groupParts1.og" "pSphereShape2.i";
connectAttr "groupId4.id" "pSphereShape2.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCylinderShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pSphereShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape3.iog.og[0].gco";
connectAttr "groupParts3.og" "pSphereShape3.i";
connectAttr "groupId8.id" "pSphereShape3.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "pCylinder4Shape.i";
connectAttr "groupId9.id" "pCylinder4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder4Shape.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape1.i";
connectAttr "groupId15.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape2.i";
connectAttr "groupId16.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts7.og" "pCylinder5Shape.i";
connectAttr "groupId14.id" "pCylinder5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder5Shape.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape3.i";
connectAttr "groupId18.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape4.i";
connectAttr "groupId19.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurface1Shape.i";
connectAttr "groupId17.id" "polySurface1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface1Shape.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurface4Shape.i";
connectAttr "groupId20.id" "polySurface4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface4Shape.iog.og[0].gco";
connectAttr "groupId21.id" "pCylinder6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder6Shape.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape5.i";
connectAttr "groupId23.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape6.i";
connectAttr "groupId24.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape7.i";
connectAttr "groupId25.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId22.id" "pCylinder7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder7Shape.iog.og[0].gco";
connectAttr "groupId38.id" "pSphereShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape4.iog.og[0].gco";
connectAttr "groupParts18.og" "pSphereShape4.i";
connectAttr "groupId39.id" "pSphereShape4.ciog.cog[0].cgid";
connectAttr "groupId36.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts17.og" "pCubeShape1.i";
connectAttr "groupId37.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId26.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId27.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId34.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId35.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId32.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId33.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId30.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId31.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId28.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId29.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupParts19.og" "pCube7Shape.i";
connectAttr "groupId40.id" "pCube7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube7Shape.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape8.i";
connectAttr "groupId42.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape9.i";
connectAttr "groupId43.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape10.i";
connectAttr "groupId44.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape11.i";
connectAttr "groupId45.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape12.i";
connectAttr "groupId46.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape13.i";
connectAttr "groupId47.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape14.i";
connectAttr "groupId48.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape15.i";
connectAttr "groupId49.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape16.i";
connectAttr "groupId50.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape17.i";
connectAttr "groupId51.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurface7Shape.i";
connectAttr "groupId41.id" "polySurface7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface7Shape.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape18.i";
connectAttr "groupId53.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape19.i";
connectAttr "groupId54.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape20.i";
connectAttr "groupId55.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape21.i";
connectAttr "groupId56.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape22.i";
connectAttr "groupId57.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape23.i";
connectAttr "groupId58.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape24.i";
connectAttr "groupId59.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape25.i";
connectAttr "groupId60.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape26.i";
connectAttr "groupId61.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape27.i";
connectAttr "groupId62.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurface17Shape.i";
connectAttr "groupId52.id" "polySurface17Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface17Shape.iog.og[0].gco";
connectAttr "groupParts42.og" "|polySurface22|transform48|polySurface22Shape.i";
connectAttr "groupId63.id" "|polySurface22|transform48|polySurface22Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface22|transform48|polySurface22Shape.iog.og[0].gco"
		;
connectAttr "groupId68.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupParts45.og" "pCylinderShape4.i";
connectAttr "groupId69.id" "pCylinderShape4.ciog.cog[0].cgid";
connectAttr "groupId64.id" "pSphereShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape5.iog.og[0].gco";
connectAttr "groupParts43.og" "pSphereShape5.i";
connectAttr "groupId65.id" "pSphereShape5.ciog.cog[0].cgid";
connectAttr "groupParts44.og" "|polySurface28|transform50|polySurface22Shape.i";
connectAttr "groupId66.id" "|polySurface28|transform50|polySurface22Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface28|transform50|polySurface22Shape.iog.og[0].gco"
		;
connectAttr "groupId67.id" "polySurface22Shape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface22Shape29.iog.og[0].gco";
connectAttr "groupParts46.og" "pCylinder9Shape.i";
connectAttr "groupId70.id" "pCylinder9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder9Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "polyCylinder1.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit19.ip";
connectAttr "polyCylinder2.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polySplit21.ip";
connectAttr "polyTweak9.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert1.mp";
connectAttr "polySplit21.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert2.ip";
connectAttr "pSphereShape2.wm" "polyMergeVert2.mp";
connectAttr "polySphere2.out" "polyTweak10.ip";
connectAttr "pCylinderShape3.o" "polyUnite1.ip[0]";
connectAttr "pSphereShape2.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[2]";
connectAttr "pSphereShape3.o" "polyUnite1.ip[3]";
connectAttr "pCylinderShape3.wm" "polyUnite1.im[0]";
connectAttr "pSphereShape2.wm" "polyUnite1.im[1]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[2]";
connectAttr "pSphereShape3.wm" "polyUnite1.im[3]";
connectAttr "polyMergeVert2.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polyMergeVert1.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polySphere3.out" "groupParts3.ig";
connectAttr "groupId7.id" "groupParts3.gi";
connectAttr "polyUnite1.out" "groupParts4.ig";
connectAttr "groupId9.id" "groupParts4.gi";
connectAttr "pCylinderShape1.o" "polyUnite2.ip[0]";
connectAttr "pSphereShape1.o" "polyUnite2.ip[1]";
connectAttr "pCylinderShape1.wm" "polyUnite2.im[0]";
connectAttr "pSphereShape1.wm" "polyUnite2.im[1]";
connectAttr "polySplit19.out" "groupParts5.ig";
connectAttr "groupId10.id" "groupParts5.gi";
connectAttr "deleteComponent1.og" "groupParts6.ig";
connectAttr "groupId12.id" "groupParts6.gi";
connectAttr "polyUnite2.out" "groupParts7.ig";
connectAttr "groupId14.id" "groupParts7.gi";
connectAttr "pCylinder5Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "polySeparate1.out[1]" "groupParts9.ig";
connectAttr "groupId16.id" "groupParts9.gi";
connectAttr "polySurfaceShape1.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite3.im[1]";
connectAttr "polyUnite3.out" "groupParts10.ig";
connectAttr "groupId17.id" "groupParts10.gi";
connectAttr "polySurface1Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts11.ig";
connectAttr "groupId18.id" "groupParts11.gi";
connectAttr "polySeparate2.out[1]" "groupParts12.ig";
connectAttr "groupId19.id" "groupParts12.gi";
connectAttr "polySurfaceShape4.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape4.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite4.im[1]";
connectAttr "polyUnite4.out" "groupParts13.ig";
connectAttr "groupId20.id" "groupParts13.gi";
connectAttr "pCylinder7Shape.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts14.ig";
connectAttr "groupId23.id" "groupParts14.gi";
connectAttr "polySeparate3.out[1]" "groupParts15.ig";
connectAttr "groupId24.id" "groupParts15.gi";
connectAttr "polySeparate3.out[2]" "groupParts16.ig";
connectAttr "groupId25.id" "groupParts16.gi";
connectAttr "polyCube1.out" "polySplit22.ip";
connectAttr "pCubeShape2.o" "polyUnite5.ip[0]";
connectAttr "pCubeShape6.o" "polyUnite5.ip[1]";
connectAttr "pCubeShape5.o" "polyUnite5.ip[2]";
connectAttr "pCubeShape4.o" "polyUnite5.ip[3]";
connectAttr "pCubeShape3.o" "polyUnite5.ip[4]";
connectAttr "pCubeShape1.o" "polyUnite5.ip[5]";
connectAttr "pSphereShape4.o" "polyUnite5.ip[6]";
connectAttr "pCubeShape2.wm" "polyUnite5.im[0]";
connectAttr "pCubeShape6.wm" "polyUnite5.im[1]";
connectAttr "pCubeShape5.wm" "polyUnite5.im[2]";
connectAttr "pCubeShape4.wm" "polyUnite5.im[3]";
connectAttr "pCubeShape3.wm" "polyUnite5.im[4]";
connectAttr "pCubeShape1.wm" "polyUnite5.im[5]";
connectAttr "pSphereShape4.wm" "polyUnite5.im[6]";
connectAttr "polySplit22.out" "groupParts17.ig";
connectAttr "groupId36.id" "groupParts17.gi";
connectAttr "polySphere4.out" "groupParts18.ig";
connectAttr "groupId38.id" "groupParts18.gi";
connectAttr "polyUnite5.out" "groupParts19.ig";
connectAttr "groupId40.id" "groupParts19.gi";
connectAttr "polySurfaceShape7.o" "polyUnite6.ip[0]";
connectAttr "polySurfaceShape6.o" "polyUnite6.ip[1]";
connectAttr "polySurfaceShape5.o" "polyUnite6.ip[2]";
connectAttr "pCube7Shape.o" "polyUnite6.ip[3]";
connectAttr "polySurfaceShape7.wm" "polyUnite6.im[0]";
connectAttr "polySurfaceShape6.wm" "polyUnite6.im[1]";
connectAttr "polySurfaceShape5.wm" "polyUnite6.im[2]";
connectAttr "pCube7Shape.wm" "polyUnite6.im[3]";
connectAttr "polyUnite6.out" "groupParts20.ig";
connectAttr "groupId41.id" "groupParts20.gi";
connectAttr "polySurface7Shape.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts21.ig";
connectAttr "groupId42.id" "groupParts21.gi";
connectAttr "polySeparate4.out[1]" "groupParts22.ig";
connectAttr "groupId43.id" "groupParts22.gi";
connectAttr "polySeparate4.out[2]" "groupParts23.ig";
connectAttr "groupId44.id" "groupParts23.gi";
connectAttr "polySeparate4.out[3]" "groupParts24.ig";
connectAttr "groupId45.id" "groupParts24.gi";
connectAttr "polySeparate4.out[4]" "groupParts25.ig";
connectAttr "groupId46.id" "groupParts25.gi";
connectAttr "polySeparate4.out[5]" "groupParts26.ig";
connectAttr "groupId47.id" "groupParts26.gi";
connectAttr "polySeparate4.out[6]" "groupParts27.ig";
connectAttr "groupId48.id" "groupParts27.gi";
connectAttr "polySeparate4.out[7]" "groupParts28.ig";
connectAttr "groupId49.id" "groupParts28.gi";
connectAttr "polySeparate4.out[8]" "groupParts29.ig";
connectAttr "groupId50.id" "groupParts29.gi";
connectAttr "polySeparate4.out[9]" "groupParts30.ig";
connectAttr "groupId51.id" "groupParts30.gi";
connectAttr "polySurfaceShape17.o" "polyUnite7.ip[0]";
connectAttr "polySurfaceShape16.o" "polyUnite7.ip[1]";
connectAttr "polySurfaceShape15.o" "polyUnite7.ip[2]";
connectAttr "polySurfaceShape14.o" "polyUnite7.ip[3]";
connectAttr "polySurfaceShape13.o" "polyUnite7.ip[4]";
connectAttr "polySurfaceShape12.o" "polyUnite7.ip[5]";
connectAttr "polySurfaceShape11.o" "polyUnite7.ip[6]";
connectAttr "polySurfaceShape10.o" "polyUnite7.ip[7]";
connectAttr "polySurfaceShape9.o" "polyUnite7.ip[8]";
connectAttr "polySurfaceShape8.o" "polyUnite7.ip[9]";
connectAttr "polySurfaceShape17.wm" "polyUnite7.im[0]";
connectAttr "polySurfaceShape16.wm" "polyUnite7.im[1]";
connectAttr "polySurfaceShape15.wm" "polyUnite7.im[2]";
connectAttr "polySurfaceShape14.wm" "polyUnite7.im[3]";
connectAttr "polySurfaceShape13.wm" "polyUnite7.im[4]";
connectAttr "polySurfaceShape12.wm" "polyUnite7.im[5]";
connectAttr "polySurfaceShape11.wm" "polyUnite7.im[6]";
connectAttr "polySurfaceShape10.wm" "polyUnite7.im[7]";
connectAttr "polySurfaceShape9.wm" "polyUnite7.im[8]";
connectAttr "polySurfaceShape8.wm" "polyUnite7.im[9]";
connectAttr "polyUnite7.out" "groupParts31.ig";
connectAttr "groupId52.id" "groupParts31.gi";
connectAttr "polySurface17Shape.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts32.ig";
connectAttr "groupId53.id" "groupParts32.gi";
connectAttr "polySeparate5.out[1]" "groupParts33.ig";
connectAttr "groupId54.id" "groupParts33.gi";
connectAttr "polySeparate5.out[2]" "groupParts34.ig";
connectAttr "groupId55.id" "groupParts34.gi";
connectAttr "polySeparate5.out[3]" "groupParts35.ig";
connectAttr "groupId56.id" "groupParts35.gi";
connectAttr "polySeparate5.out[4]" "groupParts36.ig";
connectAttr "groupId57.id" "groupParts36.gi";
connectAttr "polySeparate5.out[5]" "groupParts37.ig";
connectAttr "groupId58.id" "groupParts37.gi";
connectAttr "polySeparate5.out[6]" "groupParts38.ig";
connectAttr "groupId59.id" "groupParts38.gi";
connectAttr "polySeparate5.out[7]" "groupParts39.ig";
connectAttr "groupId60.id" "groupParts39.gi";
connectAttr "polySeparate5.out[8]" "groupParts40.ig";
connectAttr "groupId61.id" "groupParts40.gi";
connectAttr "polySeparate5.out[9]" "groupParts41.ig";
connectAttr "groupId62.id" "groupParts41.gi";
connectAttr "polySurfaceShape22.o" "polyUnite8.ip[0]";
connectAttr "polySurfaceShape21.o" "polyUnite8.ip[1]";
connectAttr "polySurfaceShape18.o" "polyUnite8.ip[2]";
connectAttr "polySurfaceShape20.o" "polyUnite8.ip[3]";
connectAttr "polySurfaceShape19.o" "polyUnite8.ip[4]";
connectAttr "polySurfaceShape27.o" "polyUnite8.ip[5]";
connectAttr "polySurfaceShape26.o" "polyUnite8.ip[6]";
connectAttr "polySurfaceShape25.o" "polyUnite8.ip[7]";
connectAttr "polySurfaceShape24.o" "polyUnite8.ip[8]";
connectAttr "polySurfaceShape23.o" "polyUnite8.ip[9]";
connectAttr "polySurfaceShape22.wm" "polyUnite8.im[0]";
connectAttr "polySurfaceShape21.wm" "polyUnite8.im[1]";
connectAttr "polySurfaceShape18.wm" "polyUnite8.im[2]";
connectAttr "polySurfaceShape20.wm" "polyUnite8.im[3]";
connectAttr "polySurfaceShape19.wm" "polyUnite8.im[4]";
connectAttr "polySurfaceShape27.wm" "polyUnite8.im[5]";
connectAttr "polySurfaceShape26.wm" "polyUnite8.im[6]";
connectAttr "polySurfaceShape25.wm" "polyUnite8.im[7]";
connectAttr "polySurfaceShape24.wm" "polyUnite8.im[8]";
connectAttr "polySurfaceShape23.wm" "polyUnite8.im[9]";
connectAttr "polyUnite8.out" "groupParts42.ig";
connectAttr "groupId63.id" "groupParts42.gi";
connectAttr "polyCylinder3.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "|polySurface22|transform48|polySurface22Shape.o" "polyUnite9.ip[0]"
		;
connectAttr "pSphereShape5.o" "polyUnite9.ip[1]";
connectAttr "|polySurface22|transform48|polySurface22Shape.wm" "polyUnite9.im[0]"
		;
connectAttr "pSphereShape5.wm" "polyUnite9.im[1]";
connectAttr "polySphere5.out" "groupParts43.ig";
connectAttr "groupId64.id" "groupParts43.gi";
connectAttr "polyUnite9.out" "groupParts44.ig";
connectAttr "groupId66.id" "groupParts44.gi";
connectAttr "pCylinder6Shape.o" "polyUnite10.ip[0]";
connectAttr "polySurface4Shape.o" "polyUnite10.ip[1]";
connectAttr "polySurface22Shape29.o" "polyUnite10.ip[2]";
connectAttr "pCylinderShape4.o" "polyUnite10.ip[3]";
connectAttr "|polySurface28|transform50|polySurface22Shape.o" "polyUnite10.ip[4]"
		;
connectAttr "pCylinder4Shape.o" "polyUnite10.ip[5]";
connectAttr "pCylinder6Shape.wm" "polyUnite10.im[0]";
connectAttr "polySurface4Shape.wm" "polyUnite10.im[1]";
connectAttr "polySurface22Shape29.wm" "polyUnite10.im[2]";
connectAttr "pCylinderShape4.wm" "polyUnite10.im[3]";
connectAttr "|polySurface28|transform50|polySurface22Shape.wm" "polyUnite10.im[4]"
		;
connectAttr "pCylinder4Shape.wm" "polyUnite10.im[5]";
connectAttr "polySplit25.out" "groupParts45.ig";
connectAttr "groupId68.id" "groupParts45.gi";
connectAttr "polyUnite10.out" "groupParts46.ig";
connectAttr "groupId70.id" "groupParts46.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface17Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface22|transform48|polySurface22Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pSphereShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface28|transform50|polySurface22Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface22Shape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
// End of randomCube.ma
