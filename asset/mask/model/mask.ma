//Maya ASCII 2018 scene
//Name: kz.ma
//Last modified: Thu, Feb 06, 2020 05:14:00 PM
//Codeset: 936
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiMatte"
		 "mtoa" "3.0.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "8CE60CA5-48A4-BDC0-E423-208738A1CBEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7570581364429465 5.787702393401883 16.459407011737103 ;
	setAttr ".r" -type "double3" -11.138352729756521 -2505.4000000002916 2.0541777804193023e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "83AD6D90-4CD6-AE8C-A4AC-20BD8A20C113";
	setAttr -k off ".v" no;
	setAttr ".ff" 2;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.29502734336754;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 1.7643780708312988 -0.28973817825317383 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "13BEBA8B-4359-6565-22FD-0CAEE1C666E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AE965710-40A5-7F26-9E63-E59B23751D8A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "063E2312-4F1E-37B6-1DED-5484DFB81291";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.3409746938563325 0.5701079606073578 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2004472D-4555-FBDF-E80A-3596593BADB3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 20.698020808127133;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "D409F39C-402A-3318-F10D-D09D3D96F41A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2D3F7BA6-4E87-F14C-D98A-3BB5EF26387F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "96667B72-461D-FDF7-89B0-E2948A943428";
	setAttr ".t" -type "double3" 0 1.6885845255440046 0 ;
	setAttr ".r" -type "double3" 89.626439064417369 0 0 ;
	setAttr ".s" -type "double3" 4.7981872711436653 0.07034188047144696 2.9126292456549909 ;
createNode transform -n "transform1" -p "pCube1";
	rename -uid "019E8D1C-4703-B5A6-2F8B-A091EE310E8C";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	rename -uid "9AD29E5C-4F00-63E8-AFD3-D98D3357B89F";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".ciog";
	setAttr ".pv" -type "double2" 0.49969053268432617 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 3;
	setAttr ".ugsdt" no;
	setAttr ".sdis" yes;
	setAttr ".pt[4]" -type "float3"  3.7252903e-09 0 0;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "FCEA5BBA-4A1E-AFF6-01F2-62B990227AFE";
	setAttr ".t" -type "double3" 0 1.6885845255440046 0 ;
	setAttr ".r" -type "double3" 89.626439064417369 0 0 ;
	setAttr ".s" -type "double3" -4.7981872711436653 0.07034188047144696 2.9126292456549909 ;
createNode transform -n "transform2" -p "pCube2";
	rename -uid "7192AE7B-47CD-A67D-4F94-B198E7CD1905";
	setAttr ".v" no;
createNode transform -n "pCube3";
	rename -uid "C80672A0-4517-E970-7C32-DFA6CC749FD4";
	setAttr ".rp" -type "double3" 0 1.770567376308597 -0.2892085500567973 ;
	setAttr ".sp" -type "double3" 0 1.770567376308597 -0.2892085500567973 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	rename -uid "CAF965C5-45B2-0D07-E32D-CF88CE6A9FD1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000014901161194 0.54567080736160278 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[5]" -type "float3" 7.4505806e-09 -1.8626451e-09 -3.7252903e-09 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "persp1";
	rename -uid "7EEC42F8-4BD7-9C87-6C3D-0B9FDE86611A";
	setAttr ".t" -type "double3" 28.002864468981926 106.70274834575196 101.66375828746379 ;
	setAttr ".r" -type "double3" -45.338352729604281 15.400000000000404 0 ;
createNode camera -n "perspShape2" -p "persp1";
	rename -uid "4A7F077D-42F9-6361-F889-078EB0E5FC7A";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 150.01718792237205;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
parent -s -nc -r -add "|pCube1|transform1|pCubeShape1" "transform2" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7ED6E575-42F7-A795-7EEE-F289E3C7DC04";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3B06B2E8-4D6D-B7DE-3770-D48101A8C73B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2FE9A98C-445A-7798-34EE-EB816A08CD32";
createNode displayLayerManager -n "layerManager";
	rename -uid "857D84C8-49EE-13FC-0850-65800A3B7B8E";
createNode displayLayer -n "defaultLayer";
	rename -uid "1C36772B-4634-8C70-8B76-ADBA743528B8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "93AC5EED-4DCE-EEB6-3A03-7EB8EB17A10B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "99E21DE2-4839-C438-66E5-F7B8C1A814FF";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "012A2E5F-4BA4-8B83-2A78-15908F0DEC73";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "0E0D4DA6-4905-A0E0-C4E2-6FA6B28EE2CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.49876222014427185;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "798A9ADF-44EF-D833-71BF-F6AE0FC472F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.52897936105728149;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "FC1B24A5-4A03-DBD4-C52C-93B331776F36";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[4:11]" -type "float3"  0 -9.0092716217 -0.001418611
		 0 -9.0092716217 -0.001418611 0 -9.0092716217 -0.001418611 0 -9.0092716217 -0.001418611
		 2.0311913e-05 0 0 2.0311913e-05 0 0 2.0311913e-05 0 0 2.0311913e-05 0 0;
createNode polyTweak -n "polyTweak2";
	rename -uid "8EB019A0-4EAF-76E5-7C7A-32B9CAE4E029";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -5.5780087 -0.00087832019 ;
	setAttr ".tk[1]" -type "float3" 0 -5.5780087 -0.00087832019 ;
	setAttr ".tk[2]" -type "float3" 0 -5.5780087 -0.00087832019 ;
	setAttr ".tk[3]" -type "float3" 0 -5.5780087 -0.00087832019 ;
	setAttr ".tk[12]" -type "float3" 0 2.7433643 0.0004319736 ;
	setAttr ".tk[15]" -type "float3" 0 2.7433643 0.0004319736 ;
createNode polySplit -n "polySplit1";
	rename -uid "FA4BB563-449C-6559-BAE2-E19C65EDEA77";
	setAttr -s 2 ".e[0:1]"  0.72563398 0.13986801;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "2645EF41-4E93-BB14-B9AC-48A8E70568AF";
	setAttr -s 2 ".e[0:1]"  0.82766002 0.28956699;
	setAttr -s 2 ".d[0:1]"  -2147483617 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "45F7666E-4409-95B8-2EC2-99AD7940AA1C";
	setAttr -s 3 ".e[0:2]"  1 0.738253 0.69411498;
	setAttr -s 3 ".d[0:2]"  -2147483646 -2147483645 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "EC3EE2E1-4A18-A57A-EB4C-E7AB16294435";
	setAttr -s 3 ".e[0:2]"  1 0.27636701 0.263533;
	setAttr -s 3 ".d[0:2]"  -2147483636 -2147483635 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "D3C449AE-4C5C-6901-3EA6-4A833CC7BF38";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[18]" -type "float3" 0.018802177 -1.9287549 -0.00030370412 ;
	setAttr ".tk[21]" -type "float3" -0.013101553 -1.5995408 -0.00025186574 ;
	setAttr ".tk[22]" -type "float3" 0.018802177 -1.9287549 -0.00030370412 ;
	setAttr ".tk[24]" -type "float3" -0.013101553 -1.5995408 -0.00025186574 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3598444D-45B9-BC30-BF40-568D579D0ED8";
	setAttr ".dc" -type "componentList" 5 "f[0:3]" "f[5]" "f[10:12]" "f[16]" "f[18:19]";
createNode polySplit -n "polySplit5";
	rename -uid "F1116292-4C4F-285E-EA37-22A5B00860B5";
	setAttr -s 2 ".e[0:1]"  1 0.212176;
	setAttr -s 2 ".d[0:1]"  -2147483630 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "73361DD4-4A69-8717-45C3-CD897BAF6BA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[18]" "e[20]" "e[22:23]" "e[26]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.79615479707717896;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit6";
	rename -uid "7F69E099-4EF2-0BE7-52D3-5DBC0974A79D";
	setAttr -s 2 ".e[0:1]"  0.862773 1;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "F0290B4B-40BB-9CA2-98D2-1C9A1BF5C28B";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483620 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "97A37C15-4FB4-B1D0-BA0F-269A4119AC81";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[3]" "e[8]" "e[12]" "e[16]" "e[21]" "e[25]" "e[32]" "e[36]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.39856016635894775;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "9F392265-4542-E8AD-A7A7-6BB59EAFE72A";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -3.2989175 -0.11963294 ;
	setAttr ".tk[1]" -type "float3" 0 -3.2989175 -0.11963294 ;
	setAttr ".tk[2]" -type "float3" 0 -3.3711181 0.14780588 ;
	setAttr ".tk[3]" -type "float3" 0 -3.3711181 0.14780588 ;
	setAttr ".tk[4]" -type "float3" 0 0.0099971546 -0.037030552 ;
	setAttr ".tk[5]" -type "float3" 0 0.0099971546 -0.037030552 ;
	setAttr ".tk[6]" -type "float3" 0 -0.001370977 0.0050782487 ;
	setAttr ".tk[7]" -type "float3" 0 -0.001370977 0.0050782487 ;
	setAttr ".tk[10]" -type "float3" 0 -3.3310733 -0.000524515 ;
	setAttr ".tk[11]" -type "float3" 0 -3.3310733 -0.000524515 ;
	setAttr ".tk[12]" -type "float3" 0.0029364503 0.7916975 0.0001246617 ;
	setAttr ".tk[15]" -type "float3" 0.0029364503 0.7916975 0.0001246617 ;
	setAttr ".tk[17]" -type "float3" -0.045902327 -0.94672573 -0.053154018 ;
	setAttr ".tk[18]" -type "float3" -0.040502701 0.23421115 3.6879235e-05 ;
	setAttr ".tk[19]" -type "float3" -0.045902327 -0.98404992 0.085098535 ;
	setAttr ".tk[20]" -type "float3" -0.045902327 -0.98404992 0.085098535 ;
	setAttr ".tk[21]" -type "float3" -0.040502701 0.23421115 3.6879235e-05 ;
	setAttr ".tk[22]" -type "float3" -0.045902327 -0.94672573 -0.053154018 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "AF436EF4-45E5-5510-24AB-0A96BA5F35D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[1]" "e[11]" "e[14]" "e[27]" "e[30]" "e[38]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.451112300157547;
	setAttr ".re" 27;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit8";
	rename -uid "FCDEF643-44B5-73FB-DECE-3D9CB6A89216";
	setAttr ".v[0]" -type "float3"  0.31090999 -5.5674539 -0.327797;
	setAttr -s 4 ".e[0:3]"  0.74299198 23 0.59034401 0.59157598;
	setAttr -s 4 ".d[0:3]"  -2147483628 0 -2147483597 -2147483595;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "8429A5E2-4BA4-4517-301E-1289C7F6DC1F";
	setAttr -s 3 ".e[0:2]"  0.80044198 0.199558 0.199558;
	setAttr -s 3 ".d[0:2]"  -2147483579 -2147483581 -2147483580;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "3CE5C9EE-4326-25F5-1D00-FD8340F7A013";
	setAttr ".ics" -type "componentList" 1 "f[30:31]";
	setAttr ".ix" -type "matrix" -4.7981872711436653 -0 -0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.74498606 2.8013365 -0.17353484 ;
	setAttr ".rs" 48335;
	setAttr ".lt" -type "double3" -9.6901924418607566e-16 8.8470897274817162e-17 -0.023910355615456728 ;
	setAttr ".ls" -type "double3" 0.97050199096242329 0.82522695808779745 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4958136930372021 2.6407620226871344 -0.42228945365883402 ;
	setAttr ".cbx" -type "double3" 0.0058415676895565835 2.9620062295359966 0.075275923053710739 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "85A8CDFF-416E-FD87-3B4A-BDA54817C352";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1788\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1788\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1788\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "87FF3212-4ACF-09F9-DCEB-8FB27CE55641";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "9A4BF6CB-45FF-0B49-2E74-CD85382580E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[18]" "e[28]" "e[31]" "e[33]" "e[35]" "e[37]" "e[46]" "e[50]" "e[61]" "e[65]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.48682805895805359;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "1A0F5F1E-4D6F-0313-4F38-F78335D606A6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[19]" "e[29]" "e[52]" "e[54]" "e[57]" "e[59]" "e[61]" "e[104]" "e[106]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0445691 1.7154088 -0.13667259 ;
	setAttr ".rs" 64400;
	setAttr ".lt" -type "double3" 8.1271794849513412e-16 -0.1097688195771406 0.094382440680975288 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.0058415676895565835 1.0715222264067559 -0.50438367764621539 ;
	setAttr ".cbx" -type "double3" 2.0949799361419483 2.3629826993169276 0.22759738704089708 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "670B5A7A-4853-2682-39CA-FCBDD853196B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[66:69]" -type "float3"  0 0.0074692806 -0.075911716
		 0 0.0074692806 -0.075911716 0 0.0074692806 -0.075911716 0 0.0074692806 -0.075911716;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "A7A29CF2-4E98-A010-18DE-CA98C580EAA4";
	setAttr ".dc" -type "componentList" 2 "f[7:8]" "f[13]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "AED5F50E-42E0-ED4D-4828-919D3A155F0A";
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[115]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 8;
	setAttr ".sv2" 64;
	setAttr ".ctp" 1;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "E553B010-4CDC-A557-7707-FB8D79308B76";
	setAttr ".ics" -type "componentList" 2 "e[27]" "e[113]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 12;
	setAttr ".sv2" 63;
	setAttr ".ctp" 1;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "5826C456-4E69-CC97-AA45-BABE624C9939";
	setAttr ".ics" -type "componentList" 2 "e[101]" "e[126]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 18;
	setAttr ".sv2" 71;
	setAttr ".ctp" 1;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "6255338A-4C4E-15A3-803A-798F79EA8EDA";
	setAttr ".dc" -type "componentList" 2 "f[4]" "f[9:10]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "95041D82-43FD-11CA-E901-3D8CE12B0694";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[52:53]" "e[55]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0419136 1.1308225 -0.13108994 ;
	setAttr ".rs" 38073;
	setAttr ".lt" -type "double3" -9.2374025095764978e-16 0.39098479897691479 -0.039505647106439376 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.0058415676895565835 1.0715217924004019 -0.40725426670208426 ;
	setAttr ".cbx" -type "double3" 2.0896688799620211 1.1901232661052112 0.14507439658820639 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "F8971EF8-41B3-DA80-0099-56A6BB81102B";
	setAttr ".ics" -type "componentList" 2 "vtx[61]" "vtx[72]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "CDACF6DB-4C29-3C40-8BB3-D1A5F30D1602";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  0 1.15622425 -0.12875237 -0.0076086838
		 1.0028682947 -0.1330588 0 1.14814126 -0.098812066 0 1.14814126 -0.098812066;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "7C4678BE-4E91-2526-95E6-05BCF2BE64C4";
	setAttr ".ics" -type "componentList" 2 "vtx[60]" "vtx[72]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "73536921-4052-EFB2-5410-08B538E877FB";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[72]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "26E3FBF3-4CFF-CAE1-49A3-039D36424389";
	setAttr ".ics" -type "componentList" 2 "vtx[70]" "vtx[72]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "A81373B8-47DF-58FE-2894-4885D11F2D3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[11]" "e[27]" "e[34]" "e[51]" "e[56]" "e[93]" "e[97]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.72150528430938721;
	setAttr ".dr" no;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "3C9F5796-4E9E-EC30-C3A0-3496D3B60B9A";
	setAttr ".dc" -type "componentList" 1 "f[19:21]";
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "BA32C143-42B5-88FE-595A-D18B95D404C8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[114]" "e[116]" "e[118]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0726929 1.2330707 -0.057975743 ;
	setAttr ".rs" 58681;
	setAttr ".lt" -type "double3" -2.1371793224034263e-15 -0.50675081187514492 0.34091224134106546 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0055262590312883768 1.171666256858217 -0.3388330993088644 ;
	setAttr ".cbx" -type "double3" 2.139859440490619 1.2944751678587743 0.22288160973804813 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "683690C0-4FBD-FA1B-33C9-238607EBEB0F";
	setAttr ".ics" -type "componentList" 2 "vtx[75]" "vtx[83]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "59D19706-4A60-7813-7EC1-85BE0600069C";
	setAttr ".ics" -type "componentList" 2 "vtx[74]" "vtx[82]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "9E89F95E-468E-FC52-1A09-D9A04F4C3734";
	setAttr ".ics" -type "componentList" 2 "vtx[73]" "vtx[81]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "32829088-4147-E36E-DA0D-7BAAC457F8AC";
	setAttr ".ics" -type "componentList" 2 "vtx[72]" "vtx[80]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "C26B2C9B-4369-D62F-0AA5-B6BC4654DEAD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[26]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.113;
	setAttr ".sg" 4;
	setAttr ".d" 0.0205;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "4D4A199E-425C-7BD9-4916-82A0E8ACD032";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[46]" "e[48]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.113;
	setAttr ".sg" 4;
	setAttr ".d" 0.0205;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "25CB4A25-4F24-4875-4B2F-E68CB0CC06FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[44:45]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.113;
	setAttr ".sg" 4;
	setAttr ".d" 0.0205;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "F4E9A6ED-4B30-5792-34D3-049FE65CF931";
	setAttr ".ics" -type "componentList" 2 "vtx[53]" "vtx[65]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "FD35C5B5-4138-01E3-1A7D-E785D15BD4A4";
	setAttr ".ics" -type "componentList" 2 "vtx[52]" "vtx[64]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "EFD476A7-4BD9-ABE3-CF8F-2E8EE711D307";
	setAttr ".ics" -type "componentList" 2 "vtx[51]" "vtx[63]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polySplit -n "polySplit10";
	rename -uid "A8BD5BE2-49DD-C500-87C9-DFB3F08280E5";
	setAttr -s 2 ".e[0:1]"  0 0.44650501;
	setAttr -s 2 ".d[0:1]"  -2147483598 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "177F9A80-4553-8795-3A31-60967E2FA90A";
	setAttr -s 2 ".e[0:1]"  0 0.60550302;
	setAttr -s 2 ".d[0:1]"  -2147483527 -2147483449;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "C43C1F28-42FF-3E78-F0F1-C695E0E1D6FA";
	setAttr -s 4 ".e[0:3]"  1 0.65753299 0.653229 0.34919101;
	setAttr -s 4 ".d[0:3]"  -2147483634 -2147483448 -2147483446 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "0BD57F8A-427F-0846-6009-7592F2E4AB30";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "EC601E67-4E80-24B9-6644-E3802CDD1790";
	setAttr ".ics" -type "componentList" 1 "vtx[91:96]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "09455F68-4C33-5014-FE94-AE9A0C9C20D0";
	setAttr ".ics" -type "componentList" 1 "vtx[81:90]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "65D03BAF-468B-0EF6-ED2F-83BFE7141501";
	setAttr ".ics" -type "componentList" 1 "vtx[76:80]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "8394C3CD-430B-5044-F0C0-64A46E9DCDF6";
	setAttr ".ics" -type "componentList" 1 "vtx[84:88]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "B3232329-4FFC-8176-08C1-59BACC474AE9";
	setAttr ".ics" -type "componentList" 1 "vtx[84:88]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "5E34741D-472A-AAC9-67F0-63936BEC07AF";
	setAttr ".ics" -type "componentList" 1 "vtx[71:75]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "3CB3EA12-4DE2-AC2B-33EF-81A802A73898";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[27]" -type "float3" -1.8189894e-11 0 0 ;
	setAttr ".tk[59]" -type "float3" -0.0034984578 0.22574106 0.0020189648 ;
	setAttr ".tk[84]" -type "float3" 0.0025785291 -8.8817842e-16 0 ;
createNode polySplit -n "polySplit14";
	rename -uid "88694A67-45DC-F028-635F-39B7140DF0C8";
	setAttr -s 2 ".e[0:1]"  1 0.177055;
	setAttr -s 2 ".d[0:1]"  -2147483506 -2147483512;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "21FE6875-42FD-55F4-1571-1C99FED98FC8";
	setAttr -s 3 ".e[0:2]"  0.123688 0.81243098 0.200385;
	setAttr -s 3 ".d[0:2]"  -2147483519 -2147483516 -2147483522;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "E855A043-435C-C168-E590-28810BDE10B5";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483558 -2147483519;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "1A1D2021-4C10-A4D4-FD0F-5FAFB26DC79A";
	setAttr -s 4 ".e[0:3]"  1 0.222363 0.20496801 0;
	setAttr -s 4 ".d[0:3]"  -2147483601 -2147483546 -2147483548 -2147483547;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "63132231-4C7A-D776-F5F5-0DBE39CDE3A5";
	setAttr ".ics" -type "componentList" 1 "e[177]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit18";
	rename -uid "132EC8DA-483E-FADC-5817-EB893886CC32";
	setAttr -s 2 ".e[0:1]"  1 0.245101;
	setAttr -s 2 ".d[0:1]"  -2147483548 -2147483549;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "700BF9BE-4A89-4986-13C6-95959F107A8F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[6]" -type "float3" 0 0.0069209579 -0.025635986 ;
	setAttr ".tk[7]" -type "float3" 0 0.0069209579 -0.025635986 ;
	setAttr ".tk[14]" -type "float3" 0 0.0084496224 -0.031298324 ;
	setAttr ".tk[15]" -type "float3" 0 0.0049762339 -0.018432515 ;
	setAttr ".tk[19]" -type "float3" 0 0.0049762339 -0.018432515 ;
	setAttr ".tk[49]" -type "float3" 0 0.0024939289 -0.0092377849 ;
	setAttr ".tk[50]" -type "float3" 0 0.0024939289 -0.0092377849 ;
	setAttr ".tk[85]" -type "float3" 0 0.0084496224 -0.031298324 ;
createNode polySplit -n "polySplit19";
	rename -uid "EAC56F99-41D6-2EDD-00F9-E2986B1C1312";
	setAttr -s 2 ".e[0:1]"  1 0.488947;
	setAttr -s 2 ".d[0:1]"  -2147483591 -2147483513;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "67FADF22-4854-487C-1508-3DAB30122140";
	setAttr -s 2 ".e[0:1]"  0 0.258259;
	setAttr -s 2 ".d[0:1]"  -2147483593 -2147483509;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "FB164830-49AF-36F9-D48B-918DC5E07B30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[0]" "e[2]" "e[10]" "e[16]" "e[28]" "e[33]" "e[42]" "e[49]" "e[77]" "e[87]" "e[118]" "e[164]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.49570366740226746;
	setAttr ".dr" no;
	setAttr ".re" 77;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit21";
	rename -uid "A7347BBD-4AAA-94BA-4C33-7FBE448F4900";
	setAttr -s 3 ".e[0:2]"  1 0.50808197 0.381156;
	setAttr -s 3 ".d[0:2]"  -2147483620 -2147483627 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "E14FFD5C-4966-CD49-14C8-228B40099500";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 3.3306691e-16 -1.0138311 -0.0040906044 ;
	setAttr ".tk[1]" -type "float3" 3.3306691e-16 -1.0138311 -0.0040906044 ;
	setAttr ".tk[63]" -type "float3" -1.8512752e-16 0.11577056 -0.052452769 ;
	setAttr ".tk[64]" -type "float3" -1.8041124e-16 0.11577056 -0.052452769 ;
	setAttr ".tk[65]" -type "float3" -1.6653345e-16 0.11577056 -0.052452769 ;
	setAttr ".tk[66]" -type "float3" -1.6653345e-16 0.11577056 -0.052452769 ;
	setAttr ".tk[67]" -type "float3" 0.0036869838 0.064020887 -0.038400669 ;
	setAttr ".tk[68]" -type "float3" 0.0036869838 0.064020887 -0.038400669 ;
	setAttr ".tk[69]" -type "float3" 0 0.20637539 -0.040313214 ;
	setAttr ".tk[70]" -type "float3" 5.5511151e-17 0.4748382 -0.047118355 ;
	setAttr ".tk[99]" -type "float3" 3.3306691e-16 -1.0138311 -0.0040906044 ;
	setAttr ".tk[100]" -type "float3" 0.0036869838 0.064020887 -0.038400669 ;
createNode polySplit -n "polySplit22";
	rename -uid "14C389F0-475D-7DB4-591E-6592FEF983D9";
	setAttr -s 4 ".e[0:3]"  0.23364501 0.25995299 0.318717 0.63201803;
	setAttr -s 4 ".d[0:3]"  -2147483525 -2147483524 -2147483523 -2147483535;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "F429B329-4E57-808A-32DD-4BB8AEA86A17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1]" "e[11]" "e[25]" "e[32]" "e[89]" "e[110]" "e[117]" "e[119]" "e[156]" "e[163]" "e[193]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.83492141962051392;
	setAttr ".dr" no;
	setAttr ".re" 110;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit23";
	rename -uid "D8C9BEE0-4A48-5F34-1225-C6B4628175C6";
	setAttr -s 5 ".e[0:4]"  0 0.43526801 0.468117 0.455084 0.55817598;
	setAttr -s 5 ".d[0:4]"  -2147483469 -2147483554 -2147483607 -2147483447 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "13364D35-4B2A-DE62-FF24-AAB8A16E05C8";
	setAttr -s 3 ".e[0:2]"  0.70867503 0.68109798 0.34862399;
	setAttr -s 3 ".d[0:2]"  -2147483607 -2147483447 -2147483407;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "694A2657-4A4C-FE6B-8D31-B8B7128487FD";
	setAttr -s 4 ".e[0:3]"  1 0.49173999 0.47526699 0.54149097;
	setAttr -s 4 ".d[0:3]"  -2147483535 -2147483533 -2147483453 -2147483600;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2B12A896-4D54-841E-2A66-1AA3DF44D6A4";
	setAttr ".ics" -type "componentList" 2 "f[117:118]" "f[122:123]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.407939 1.6812843 -0.68634778 ;
	setAttr ".rs" 33970;
	setAttr ".lt" -type "double3" -4.440797710599038e-16 2.6393563462386797e-16 1.602266759898491 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3990936355718326 0.95007919933476448 -0.80951315068676677 ;
	setAttr ".cbx" -type "double3" 2.4167843817618522 2.4124064078752143 -0.56374171824092356 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "EE034269-41EC-C32B-EC64-F0863BEBD9E2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[67]" -type "float3" 0 0.0071116006 -0.026342148 ;
	setAttr ".tk[68]" -type "float3" 0 0.0071116006 -0.026342148 ;
	setAttr ".tk[100]" -type "float3" 0 0.0071116006 -0.026342148 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "32CC6B4D-480E-7A4F-41F2-20B7DD4D72CB";
	setAttr ".ics" -type "componentList" 1 "f[117:118]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.1997812 2.5969157 -0.67369163 ;
	setAttr ".rs" 58401;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.1997811495247963 2.5457284310924848 -0.71907232248003528 ;
	setAttr ".cbx" -type "double3" 3.1997811495247963 2.6481239813593094 -0.62837618122178029 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "4BEF7DF3-4572-887D-7308-3DA2F97EF6BB";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[134]" -type "float3" -0.16705878 1.3075541 -0.080725387 ;
	setAttr ".tk[135]" -type "float3" -0.16705878 1.3075541 -0.080725387 ;
	setAttr ".tk[136]" -type "float3" -0.16705878 1.3075541 -0.080725387 ;
	setAttr ".tk[137]" -type "float3" -0.16705878 1.3075541 -0.080725387 ;
	setAttr ".tk[138]" -type "float3" -0.16705878 1.3075541 -0.080725387 ;
	setAttr ".tk[139]" -type "float3" -0.16705878 1.3075541 -0.080725387 ;
	setAttr ".tk[140]" -type "float3" -0.16919068 0.25286931 0.13999547 ;
	setAttr ".tk[141]" -type "float3" -0.16919068 0.25286931 0.13999547 ;
	setAttr ".tk[142]" -type "float3" -0.16919068 0.25286931 0.13999547 ;
	setAttr ".tk[143]" -type "float3" -0.16919068 0.25286931 0.13999547 ;
	setAttr ".tk[144]" -type "float3" -0.16919068 0.25286931 0.13999547 ;
	setAttr ".tk[145]" -type "float3" -0.16919068 0.25286931 0.13999547 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "9A5D2173-4F40-A256-A0C5-1CB4829A7004";
	setAttr ".ics" -type "componentList" 1 "f[117:118]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9415786 2.9148111 -0.67369783 ;
	setAttr ".rs" 33987;
	setAttr ".lt" -type "double3" -0.60314341928337445 0.016138061965198385 0.8478390820783086 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.9365598168619509 2.8638461266207877 -0.71910287479965851 ;
	setAttr ".cbx" -type "double3" 3.9465976429734222 2.9657969741270493 -0.62835776579210978 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "D47B949A-4DE6-21EE-9661-11A16C9F86F4";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[146:151]" -type "float3"  0.15433113 0.029733595 -0.10916344
		 0.15394567 0.030076744 -0.10919034 0.15534449 0.028754637 -0.10908584 0.15564556
		 0.028491247 -0.10906526 0.15503819 0.029022602 -0.10910682 0.15355358 0.030425789
		 -0.10921771;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "63C75C95-4161-FC4B-4EF3-2489EC1F012A";
	setAttr ".ics" -type "componentList" 1 "f[117:118]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5754209 2.6288626 -0.83142591 ;
	setAttr ".rs" 60488;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.5279570262235174 2.6045371069384231 -0.87941763319658695 ;
	setAttr ".cbx" -type "double3" 4.6228842369739782 2.6530577899657448 -0.7834694314085151 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "F79FD85A-43A1-4618-2E78-48B130F638FC";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[152:157]" -type "float3"  -0.034457024 0.063435152 -0.13118982
		 -0.037725627 0.10210937 -0.13448316 -0.025915412 -0.043363951 -0.12206383 -0.023358954
		 -0.073264301 -0.11951956 -0.028516216 -0.012944257 -0.1246523 -0.041051108 0.14145517
		 -0.13783365;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "91D0A478-4133-BE5D-62E9-E793EEC5E7D8";
	setAttr ".ics" -type "componentList" 1 "f[117:118]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.7305794 1.7327337 -0.8320272 ;
	setAttr ".rs" 33491;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.6763339879512147 1.7203585141554598 -0.88235049173076818 ;
	setAttr ".cbx" -type "double3" 4.7848250478950423 1.7451089860834208 -0.7817039307078022 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "9A856A0E-4F88-5397-0752-BBB2C6610044";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[158:163]" -type "float3"  0.032032296 -0.05738809 0.30554697
		 0.031482749 -0.020225264 0.30224583 0.033311065 -0.15534388 0.31425428 0.033750396
		 -0.18435831 0.3168312 0.032864094 -0.12582575 0.31163263 0.030923579 0.017583296
		 0.29888743;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "EAFDE16C-4206-884F-A469-6CAAE95F926B";
	setAttr ".ics" -type "componentList" 1 "f[117:118]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.39643 0.8191334 -0.83258218 ;
	setAttr ".rs" 64864;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.3495420886428402 0.79162856128037207 -0.88511844692104125 ;
	setAttr ".cbx" -type "double3" 4.4433181725456556 0.84668208459593575 -0.78002746329918426 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "8A62D747-4DBC-9BD9-3F4B-73B269436425";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[164:169]" -type "float3"  -0.069198914 -0.060192037
		 0.31124058 -0.068657771 -0.023822328 0.30797797 -0.070759758 -0.15396164 0.31965524
		 -0.071174107 -0.18248355 0.32221353 -0.070338257 -0.12494448 0.31705239 -0.068107307
		 0.013180239 0.30465871;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "A509EF65-44D7-962E-0A32-ED9BB58E8463";
	setAttr ".ics" -type "componentList" 1 "f[122:123]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.1967447 0.73314101 -0.733055 ;
	setAttr ".rs" 60950;
	setAttr ".lt" -type "double3" 0.066301589222958299 0.011407496213751631 0.11808979255515135 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.1923953480737519 0.68300351210249577 -0.77207584187521983 ;
	setAttr ".cbx" -type "double3" 3.2010941491167322 0.78373923278999758 -0.69406042154973713 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "AFA9C663-421E-CF8C-02EF-77B680190A75";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[140]" -type "float3" 0 -2.0555093 -0.00032366309 ;
	setAttr ".tk[141]" -type "float3" 0 -2.0555093 -0.00032366309 ;
	setAttr ".tk[142]" -type "float3" 0 -2.0555093 -0.00032366309 ;
	setAttr ".tk[143]" -type "float3" 0 -2.0555093 -0.00032366309 ;
	setAttr ".tk[144]" -type "float3" 0 -2.0555093 -0.00032366309 ;
	setAttr ".tk[145]" -type "float3" 0 -2.0555093 -0.00032366309 ;
	setAttr ".tk[170]" -type "float3" -0.19213788 0.85597801 0.054216918 ;
	setAttr ".tk[171]" -type "float3" -0.18784247 0.89072543 0.050932977 ;
	setAttr ".tk[172]" -type "float3" -0.20356478 0.76998734 0.062379137 ;
	setAttr ".tk[173]" -type "float3" -0.20691186 0.74251842 0.064973086 ;
	setAttr ".tk[174]" -type "float3" -0.20015951 0.79793239 0.059740271 ;
	setAttr ".tk[175]" -type "float3" -0.18347274 0.92607957 0.04759169 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "F28F6DFC-4826-6128-5AFE-0BA25E804A25";
	setAttr ".dc" -type "componentList" 1 "f[122:123]";
createNode polyTweak -n "polyTweak17";
	rename -uid "42C7701E-4A85-509A-1178-788068E4D127";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[170:181]" -type "float3"  -0.0013338519 -0.20193474
		 -0.012497542 -0.0031602187 -0.37040284 -0.0053024376 0.0034250522 0.39378792 0.0040261904
		 0.004854314 0.51617336 -0.0037315721 0.0019710087 0.26928139 0.011918614 -0.0050182845
		 -0.5417943 0.0020177453 0 1.8626451e-09 -3.6379788e-12 0 3.7252903e-09 -1.0913936e-11
		 0 0 5.8207661e-11 0 3.7252903e-09 8.7311491e-11 0 0 -8.7311491e-11 0 1.8626451e-09
		 1.1641532e-10;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "2907E62E-469D-22D7-1A6B-0C96C864D31E";
	setAttr ".dc" -type "componentList" 1 "f[117:118]";
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "821B1360-4BFE-284E-3A3D-1DA9A54BF736";
	setAttr ".ics" -type "componentList" 2 "vtx[175]" "vtx[180]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "70C43C3B-45EF-AF3B-DD5F-E1942AA018DC";
	setAttr ".ics" -type "componentList" 2 "vtx[171]" "vtx[177]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "1F1DAE42-48E1-F411-F6DE-65BD3C42BF1C";
	setAttr ".ics" -type "componentList" 2 "vtx[170]" "vtx[177]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "2796EC78-452F-55BC-8A98-12B6BC078418";
	setAttr ".ics" -type "componentList" 2 "vtx[174]" "vtx[178]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "DAAF26F9-45CB-E2BA-8B0A-0890D8028884";
	setAttr ".ics" -type "componentList" 2 "vtx[172]" "vtx[176]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "88599A58-4F89-CF48-3B49-71AA1BF6C61C";
	setAttr ".ics" -type "componentList" 2 "vtx[173]" "vtx[176]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "7E4BBF64-4B96-A966-0E24-B294621C5606";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[140]" -type "float3" -0.058958568 0.33581907 -0.01664447 ;
	setAttr ".tk[141]" -type "float3" -0.058958568 0.33581907 -0.01664447 ;
	setAttr ".tk[142]" -type "float3" -0.058958568 0.33581907 -0.01664447 ;
	setAttr ".tk[143]" -type "float3" -0.058958568 0.33581907 -0.01664447 ;
	setAttr ".tk[144]" -type "float3" -0.058958568 0.33581907 -0.01664447 ;
	setAttr ".tk[145]" -type "float3" -0.058958568 0.33581907 -0.01664447 ;
	setAttr ".tk[170]" -type "float3" 0.0017116943 -0.21550395 -0.046817336 ;
	setAttr ".tk[171]" -type "float3" 0.0017116943 -0.21550395 -0.046817336 ;
	setAttr ".tk[172]" -type "float3" 0.0017116943 -0.21550395 -0.046817336 ;
	setAttr ".tk[173]" -type "float3" 0.0017116943 -0.21550395 -0.046817336 ;
	setAttr ".tk[174]" -type "float3" 0.0017116943 -0.21550395 -0.046817336 ;
	setAttr ".tk[175]" -type "float3" 0.0017116943 -0.21550395 -0.046817336 ;
createNode polySplit -n "polySplit26";
	rename -uid "E190B1F0-4732-822C-17C4-C2AB64D1C445";
	setAttr -s 5 ".e[0:4]"  1 0.80594701 1 1 0;
	setAttr -s 5 ".d[0:4]"  -2147483434 -2147483536 -2147483428 -2147483534 -2147483437;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "75C6C876-400A-68F2-6022-FD91EB605663";
	setAttr -s 5 ".e[0:4]"  1 0 1 0.46514699 0;
	setAttr -s 5 ".d[0:4]"  -2147483435 -2147483537 -2147483430 -2147483536 -2147483438;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "546D504B-4036-F93E-FD29-C2B8FC626F4D";
	setAttr ".ics" -type "componentList" 5 "e[110:112]" "e[114]" "e[210:211]" "e[219]" "e[345]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "D03B1A56-4552-1438-2097-64B0E0994B29";
	setAttr ".dc" -type "componentList" 1 "vtx[64]";
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "730D61D0-45AF-E7F7-8332-239639C6DEDB";
	setAttr ".ics" -type "componentList" 2 "e[110]" "e[339]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "031A7CEB-4BCE-C148-91F1-57BB3A7C61BF";
	setAttr ".ics" -type "componentList" 2 "e[110]" "e[339]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "AD1E7BB4-42C7-53AF-20FC-3D8AE673568E";
	setAttr ".ics" -type "componentList" 1 "e[110]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "5AA1D661-4F5B-2C8B-0A14-17A5841F5166";
	setAttr ".ics" -type "componentList" 1 "e[339]";
	setAttr ".cv" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "AF031223-4A88-ADE1-1A93-8EA7C9C5E9E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[249:250]" "e[252:253]" "e[256]" "e[258]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.010474732145667076;
	setAttr ".re" 253;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "20525FD3-4BBE-A88A-D055-629D7EB42128";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[261:263]" "e[265]" "e[268:269]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".wt" 0.032099481672048569;
	setAttr ".re" 263;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMergeVert -n "polyMergeVert24";
	rename -uid "DE30AA1F-4206-8802-1884-F2BF43093913";
	setAttr ".ics" -type "componentList" 18 "vtx[4:8]" "vtx[20]" "vtx[25]" "vtx[33]" "vtx[37]" "vtx[42:43]" "vtx[55]" "vtx[59:60]" "vtx[63]" "vtx[69]" "vtx[78:80]" "vtx[84]" "vtx[87]" "vtx[90]" "vtx[93]" "vtx[106:107]" "vtx[111]" "vtx[121]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert25";
	rename -uid "52ABEA65-4D7A-AAD8-EADD-DB878EB1C930";
	setAttr ".ics" -type "componentList" 2 "vtx[4:5]" "vtx[106]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert26";
	rename -uid "550081A0-422B-3B26-5831-C0AD4AECB030";
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 4.7981872711436653 0 0 0 0 0.00045861654622097065 0.070340385406414033 0
		 0 -2.9125673398584739 0.0189898244987451 0 0 1.6885845255440046 0 1;
	setAttr ".d" 0.005;
	setAttr ".am" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "C5BA905B-44B2-B850-3EC6-22AF57190B7A";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "D3D6C3FF-4037-C55A-FA44-848ED2E3A763";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "30F5998E-4ED0-B1E9-081A-A9BB74D5DC39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:183]";
createNode groupId -n "groupId2";
	rename -uid "988A12A7-4E8B-8941-FE22-549ACAAC4495";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "0682F30B-4F3D-36CF-F684-4DBEE5D47DFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "AFA3CD0B-4CDF-17C8-7C06-30B1CD410B08";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:183]";
createNode groupId -n "groupId4";
	rename -uid "97713F77-43C9-080D-68A1-B892A2A70E2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "EC412323-445C-F8D6-FC6B-21AB5EFF1AAD";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert27";
	rename -uid "BAF69BDA-4AAD-386B-9429-B7920CDFA1A3";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[193]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert28";
	rename -uid "97196A56-4C7C-FBF9-FDBC-A9BD430178DB";
	setAttr ".ics" -type "componentList" 2 "vtx[106]" "vtx[293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "30FA6B25-4066-146C-A77B-028C52962B1A";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[192]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "B271D5D3-48B4-2483-D520-2699D95BFA4F";
	setAttr ".dc" -type "componentList" 2 "f[27]" "f[211]";
createNode polyMergeVert -n "polyMergeVert30";
	rename -uid "4BC71485-4A90-A4A2-EC38-47811214DCA7";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[223]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert31";
	rename -uid "1337AAC2-46D4-13AA-80BA-DBBCCF749253";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert32";
	rename -uid "11A8AF8E-4234-538E-F6D7-26B12F0865B6";
	setAttr ".ics" -type "componentList" 2 "vtx[43]" "vtx[227]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert33";
	rename -uid "F26BD9EB-4F25-3D40-AAC0-A4BC3E5A5A1F";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[226]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert34";
	rename -uid "917C39D1-4102-4479-54BD-DF93D8337939";
	setAttr ".ics" -type "componentList" 2 "vtx[78]" "vtx[260]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert35";
	rename -uid "4AAC395C-44A1-263C-7E3C-959D2403F103";
	setAttr ".ics" -type "componentList" 2 "vtx[84]" "vtx[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert36";
	rename -uid "09E91977-421D-B785-DD25-E4ADB9A6CF6A";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert37";
	rename -uid "1788EFFC-4510-87E6-4DD4-DF96B9F8104C";
	setAttr ".ics" -type "componentList" 2 "vtx[69]" "vtx[250]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert38";
	rename -uid "55711D91-4529-B3C7-7FE4-5EA8D13614F8";
	setAttr ".ics" -type "componentList" 2 "vtx[87]" "vtx[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert39";
	rename -uid "4C58B928-4416-72B7-9E74-2AA515E03BEA";
	setAttr ".ics" -type "componentList" 2 "vtx[55]" "vtx[237]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert40";
	rename -uid "1DE99F4B-41B6-4807-D9B5-4D94B0EAFBD3";
	setAttr ".ics" -type "componentList" 2 "vtx[60]" "vtx[240]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert41";
	rename -uid "7BA39024-4FE1-460A-DA5B-DC88EBB33F18";
	setAttr ".ics" -type "componentList" 2 "vtx[107]" "vtx[281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert42";
	rename -uid "B608AD70-4E0B-8C91-FC29-41A9DC7EA5E7";
	setAttr ".ics" -type "componentList" 2 "vtx[90]" "vtx[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert43";
	rename -uid "8EF9D637-4FA9-89D5-C6D7-3CB96B6063AB";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[211]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert44";
	rename -uid "24D239E0-49D6-6103-91DA-7B8D11E19AA3";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert45";
	rename -uid "584A0802-4051-7353-9D60-D6AAA5A1DF57";
	setAttr ".ics" -type "componentList" 2 "vtx[111]" "vtx[281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert46";
	rename -uid "F77200B5-4992-B49F-C918-40A690F35F18";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[193]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert47";
	rename -uid "AEBB900D-4201-9739-EEAE-BBAD3FC74959";
	setAttr ".ics" -type "componentList" 2 "vtx[93]" "vtx[264]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert48";
	rename -uid "14325561-45BD-87D1-42D1-7D9132B0570C";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[192]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert49";
	rename -uid "55D12D17-47D1-FA53-DC85-198F8AC0235C";
	setAttr ".ics" -type "componentList" 2 "vtx[121]" "vtx[287]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert50";
	rename -uid "00A8D061-4563-E812-9197-BFAFF533BB0B";
	setAttr ".ics" -type "componentList" 2 "vtx[80]" "vtx[253]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert51";
	rename -uid "56F927CA-4BBE-1207-3876-A6AC1E1DA5EE";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[252]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert52";
	rename -uid "D11EA862-4812-BB5F-87EF-ADBDAA545512";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[192]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert53";
	rename -uid "A1E510FE-4241-09B4-36E8-08952F67351B";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[203]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.00685;
	setAttr ".am" yes;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "F5F83E4E-4568-3C93-D30E-71B12D39FC84";
	setAttr ".ics" -type "componentList" 1 "f[226]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace2";
	rename -uid "FEFD17E8-4A6F-8779-5E2B-58B3E6D68768";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "9BE0D163-4551-7E53-A8A6-24885F805368";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1449]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.017844557762145996 1.8423601388931274 -0.80743205547332764 ;
	setAttr ".ro" -type "double3" -38.138350692779063 76.999999046060239 2.4080926723510858e-06 ;
	setAttr ".ps" -type "double2" 2.22617088122424 6.6761873360104609 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 0.43740484118461609 -2.93001389503479 -0.76637864112854004 -0.76636332273483276
		 -5.3969174072895676e-17 3.8297958374023438 -0.61757487058639526 -0.61756247282028198
		 -1.8946084976196289 -0.67644703388214111 -0.17693245410919189 -0.17692890763282776
		 1.8826040029525757 -3.2838590145111084 27.578989028930664 27.778434753417969;
	setAttr ".prgt" 1788;
	setAttr ".ptop" 714;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "5E6D0A83-4E57-4C60-0FF5-DBA7E8005735";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1449]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 1.7643780708312988 -0.28973817825317383 ;
	setAttr ".ps" -type "double2" 9.4284811019897461 2.9230375289916992 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "7461A3AA-42D1-93BF-19D1-5EAE8EBF271D";
	setAttr ".uopa" yes;
	setAttr -s 1448 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 0.10861123 0 0.10805014 0 0.057432055
		 0 0.058250636 0 0.0011833012 0 0.0026306808 0 0.0026562214 0 0.058276206 0 0.10872021
		 0 -0.32676882 0 -0.32674545 0 -0.32071424 0 -0.32073838 0 -0.30455959 0 -0.30408007
		 0 -0.29835957 0 -0.31290913 0 -0.3187958 0 0.12759754 0 0.12285003 0 0.063278735
		 0 0.065674245 0 0.0029020309 0 0.0029959679 0 0.0028786659 0 0.068082333 0 0.13240761
		 0 0.28696236 0 0.27905315 0 0.28056997 0 0.28851318 0 0.28059548 0 0.28853869 0 0.2968049
		 0 0.29708749 0 0.29575169 0 -0.1370132 0 -0.13956887 0 -0.066602767 0 -0.065401316
		 0 0.001188904 0 0.001323849 0 0.0017130673 0 -0.062216282 0 -0.1302377 0 -0.045985639
		 0 -0.083639979 0 -0.080300748 0 -0.043825865 0 -0.080102384 0 -0.043800414 0 -0.25692779
		 0 -0.24408406 0 -0.25491858 0 -0.27822661 0 -0.25912762 0 -0.27825785 0 -0.28022057
		 0 -0.25740707 0 -0.052819848 0 -0.11024916 0 -0.12013441 0 -0.057466805 0 0.002341181
		 0 -0.24313641 0 -0.23300183 0 -0.23302734 0 -0.24316204 0 -0.22422814 0 -0.23404634
		 0 -0.04792279 0 -0.099322379 0 -0.10412812 0 -0.049942493 0 0.075106293 0 0.074444473
		 0 0.14747587 0 0.14638266 0 0.14321512 0 0.072816372 0 0.32365257 0 0.31765407 0
		 0.31790304 0 0.32440674 0 0.31608015 0 0.32319993 0 0.32617813 0 0.32676882 0 0.32552996
		 0 -0.29669952 0 -0.30227554 0 -0.22900957 0 -0.22479373 0 -0.21361721 0 -0.28191769
		 0 -0.18064499 0 -0.23831064 0 -0.25987613 0 -0.19695121 0 -0.16142303 0 -0.2150749
		 0 -0.22495699 0 -0.1705479 0 -0.1808368 0 -0.20171428 0 -0.20621133 0 -0.17806 0
		 -0.20608246 0 -0.17762089 0 -0.15186346 0 -0.15261257 0 -0.149517 0 -0.19777983 0
		 -0.20664853 0 -0.16421825 0 -0.17132092 0 -0.17796385 0 -0.21446764 0 0.13832682
		 0 0.13928971 0 0.13964897 0 0.15572193 0 0.15511322 0 0.15785146 0 0.21886924 0 0.2103194
		 0 0.17125851 0 0.17827094 0 0.18547082 0 0.22765449 0 -0.21045917 0 -0.21006399 0
		 -0.21903145 0 -0.22398579 0 -0.23440939 0 -0.23937488 0 -0.24408305 0 -0.22841251
		 0 -0.21712309 0 -0.24554884 0 -0.25061959 0 -0.25005883 0 -0.25520593 0 -0.26027977
		 0 -0.25557703 0 -0.23928028 0 -0.25864625 0 -0.21997428 0 -0.2366727 0 -0.25345063
		 0 -0.27623451 0 -0.28937566 0 -0.26572233 0 -0.27073157 0 -0.29483443 0 -0.2142567
		 0 -0.22961819 0 -0.24575424 0 -0.23196656 0 -0.21624291 0 -0.20441097 0 -0.19305491
		 0 -0.20300061 0 -0.21803135 0 -0.20480168 0 -0.20794129 0 -0.25753361 0 -0.26233411
		 0 -0.2477839 0 -0.2432512 0 -0.22880584 0 -0.23312902 0 -0.22259665 0 -0.22262216
		 0 -0.21405256 0 -0.1150468 0 -0.1224196 0 -0.13587356 0 -0.14803278 0 -0.14691961
		 0 -0.16966933 0 -0.196711 0 -0.20392346 0 -0.093382835 0 -0.083172023 0 -0.044280291
		 0 -0.045849323 0 0.0028055608 0 0.0027258098 0 0.11736003 0 0.11101779 0 0.058944196
		 0 0.060819268 0 0.19765946 0 0.18768471 0 0.16969803 0 0.161596 0 0.15998465 0 0.14558953
		 0 0.27027732 0 0.26415089 0 0.26341671 0 0.27171034 0 0.26344228 0 0.27173585 0 0.15506804
		 0 0.13615373 0 0.15002355 0 0.13337547 0 0.11672726 0 0.1065838 0 0.055027366 0 0.053549379
		 0 -0.010047495 0 -0.0031077862 0 -0.09326303 0 -0.052413821 0 -0.059647083 0 -0.10509485
		 0 -0.18829298 0 -0.15554941 0 0.14926863 0 0.153418 0 0.15416402 0 0.1516403 0 0.15491
		 0 0.15202937 0 0.14781636 0 0.14757425 0 0.14525834 0 0.13915262 0 0.1432052 0 0.13161635
		 0 0.13572586 0 0.13784707 0 0.14563251 0 0.12500897 0 0.12910634 0 0.12728721 0 0.0025939047
		 0 0.0020339787 0 -0.012798727 0 -0.012604713 0 -0.0078168511 0 -0.0095419288 0 -0.10494798
		 0 -0.11278808 0 -0.1200881 0 -0.11503202 0 -0.1103341;
	setAttr ".uvtk[250:499]" 0 -0.11672252 0 0.09987703 0 0.067037165 0 0.034170449
		 0 0.066564113 0 -0.005448103 0 0.0022761226 0 0.0015756488 0 0.064916968 0 0.0015947223
		 0 0.062297732 0 0.059048265 0 0.055510938 0 0.24573839 0 0.2760998 0 0.25296366 0
		 0.2388711 0 0.22575682 0 0.21648377 0 0.20721072 0 0.21958309 0 0.2467609 0 0.25356373
		 0 0.22747928 0 0.26271564 0 0.23918432 0 0.19782692 0 0.18747473 0 0.24451023 0 0.21696797
		 0 0.19092643 0 0.19095105 0 0.21699351 0 0.2445358 0 0.25483051 0 0.24714172 0 0.22035432
		 0 0.2303077 0 0.24200392 0 0.26433203 0 0.27235025 0 0.25056741 0 0.25934112 0 0.28047645
		 0 0.19575626 0 0.24650294 0 0.20244479 0 0.18868548 0 0.16828609 0 0.16349816 0 0.16511962
		 0 0.20072702 0 0.23565978 0 0.23070833 0 0.19265765 0 0.19028813 0 0.15668455 0 0.16015887
		 0 0.17965767 0 0.17861718 0 0.16868195 0 0.15003324 0 -0.068083405 0 -0.064222038
		 0 -0.021945953 0 -0.020676911 0 -0.014772356 0 -0.014614105 0 -0.014603913 0 -0.0090227127
		 0 -0.0090991259 0 -0.0090143681 0 -0.013844252 0 -0.0081139207 0 -0.08165431 0 -0.13690913
		 0 -0.13504195 0 -0.080730796 0 -0.12985533 0 -0.07791847 0 -0.02321434 0 -0.023993909
		 0 -0.024176121 0 -0.12176394 0 -0.073175728 0 -0.02160418 0 -0.1325193 0 -0.13765335
		 0 -0.13133848 0 -0.13048875 0 -0.12582862 0 -0.12607914 0 -0.12920308 0 -0.13135976
		 0 -0.13050681 0 -0.12585765 0 -0.12610173 0 -0.13138598 0 -0.13053548 0 -0.12574875
		 0 -0.1261375 0 -0.1455847 0 -0.13056439 0 -0.13924259 0 -0.12559527 0 -0.22080576
		 0 -0.1852541 0 -0.17858905 0 -0.18729115 0 -0.19084179 0 -0.1291092 0 -0.13873059
		 0 -0.12009287 0 -0.14558804 0 -0.14832568 0 -0.14031315 0 -0.13733417 0 -0.11959654
		 0 -0.11772323 0 -0.11961466 0 -0.11774451 0 -0.11964321 0 -0.11719227 0 -0.11735857
		 0 -0.13042766 0 -0.13223171 0 -0.11984301 0 0.2106241 0 0.20956057 0 0.26035324 0
		 0.25912791 0 0.25337574 0 0.20503095 0 0.30772233 0 0.29999441 0 0.28336143 0 0.29023415
		 0 0.29246539 0 0.31109506 0 0.07057932 0 0.1380851 0 0.19569594 0 0.24102068 0 0.29030183
		 0 0.27166808 0 0.30716804 0 0.30784038 0 0.30663359 0 -0.1372804 0 -0.13524592 0
		 -0.0052714944 0 -0.0053087473 0 -0.0060372949 0 -0.0061711669 0 -0.0060895681 0 -0.0072113276
		 0 0.12523806 0 0.1233198 0 0.12142527 0 0.12145752 0 0.13800651 0 0.13505989 0 0.12911397
		 0 0.13184953 0 0.13740963 0 0.1404236 0 0.14069721 0 0.13768548 0 -0.14181012 0 -0.14703727
		 0 -0.15502101 0 -0.16668528 0 0.31424153 0 0.3219828 0 0.3118282 0 0.31998467 0 0.32398185
		 0 0.32558244 0 0.29651994 0 0.29499841 0 0.30334747 0 0.30541641 0 0.28062123 0 0.27930975
		 0 0.28723693 0 0.28856441 0 0.26346797 0 0.26427355 0 0.27046356 0 0.2717616 0 0.24456152
		 0 0.21701923 0 0.19097584 0 0.10883009 0 0.14001137 0 0.1563358 0 0.058301926 0 0.0026819408
		 0 -0.079902291 0 -0.043774605 0 -0.20595241 0 -0.17717797 0 -0.15110773 0 -0.22257096
		 0 -0.23297608 0 -0.24311066 0 -0.2575497 0 -0.28086817 0 -0.30470192 0 -0.32671762
		 0 -0.32068712 0 0.14579448 0 0.14575368 0 0.14396545 0 0.13876405 0 0.13377303 0
		 0.13261577 0 0.32063729 0 0.31898701 0 0.30854288 0 0.30853242 0 0.29927397 0 0.31327689
		 0 0.29118171 0 0.30274785 0 0.28980902 0 0.27455348 0 0.28236067 0 0.27201337 0 0.25937325
		 0 0.26602909 0 0.2571716 0 0.25719711 0 0.25722286 0 0.25955951 0 0.26651785 0 0.27532369
		 0 0.28320283 0 0.29100645 0 0.29958546 0 0.30828124 0 0.31643516 0 0.32037663 0 -0.13407934
		 0 -0.13841546 0 -0.13377815 0 -0.12499726 0 -0.11134541 0 -0.12602782 0 -0.12125033;
	setAttr ".uvtk[500:749]" 0 -0.10597539 0 -0.12001503 0 -0.10525864 0 -0.10453558
		 0 -0.11876905 0 0.17188472 0 0.17465782 0 -0.12973195 0 -0.13645774 0 -0.13325173
		 0 -0.12652606 0 -0.13184357 0 -0.1251179 0 -0.14346153 0 -0.15018725 0 -0.15103996
		 0 -0.14431423 0 -0.1495223 0 -0.14279652 0 -0.14327139 0 -0.1365456 0 -0.13952041
		 0 -0.14624596 0 -0.14932716 0 -0.14260149 0 -0.13042319 0 -0.12369758 0 -0.1317867
		 0 -0.12506115 0 -0.13872999 0 -0.13200444 0 0.16159838 0 0.16804907 0 0.16738963
		 0 0.16090903 0 0.16971263 0 0.16320956 0 0.17799455 0 0.17148399 0 0.18643853 0 0.17993546
		 0 0.18924779 0 0.18276715 0 0.18923971 0 0.18278906 0 0.18034768 0 0.18674585 0 0.17930347
		 0 0.17291275 0 0.17169589 0 0.16529769 0 0.16871449 0 0.16229376 0 0.18923181 0 0.18281114
		 0 -0.21770006 0 -0.2364825 0 -0.23350871 0 -0.21450108 0 -0.2322427 0 -0.21309698
		 0 -0.17991292 0 -0.18132037 0 -0.18452477 0 -0.23140645 0 -0.24951363 0 -0.25025672
		 0 -0.23225617 0 -0.24878323 0 -0.23074037 0 -0.19758326 0 -0.19910032 0 -0.19824809
		 0 -0.24288297 0 -0.22450072 0 -0.1913352 0 -0.22747499 0 -0.2459085 0 -0.24876416
		 0 -0.2305494 0 -0.19738841 0 -0.19430888 0 -0.23096567 0 -0.21168065 0 -0.23229474
		 0 -0.21304262 0 -0.17985624 0 -0.17849338 0 -0.23884726 0 -0.21997344 0 -0.18679643
		 0 -0.22174597 0 -0.17317033 0 -0.17173207 0 -0.21943283 0 -0.17141104 0 -0.21857226
		 0 -0.23279595 0 -0.1816166 0 -0.18162864 0 -0.23322594 0 -0.18043888 0 -0.23187631
		 0 -0.17684603 0 -0.22697175 0 -0.23014897 0 -0.1802417 0 -0.18160462 0 -0.23236239
		 0 -0.17108732 0 -0.21770418 0 -0.17219722 0 -0.21893722 0 -0.17617726 0 -0.22437972
		 0 -0.090435743 0 0.0098389387 0 0.0095502138 0 -0.089864969 0 0.0087916851 0 -0.090084374
		 0 -0.096338987 0 0.0064274371 0 0.0072575212 0 -0.095930278 0 0.0081551075 0 -0.094890416
		 0 0.0091947019 0 -0.092584908 0 -0.096232057 0 0.0052732229 0 0.0055901408 0 -0.096751273
		 0 0.0080267191 0 -0.090305626 0 0.0071368515 0 -0.091301918 0 0.0060039163 0 -0.09384656
		 0 0.11103511 0 0.18666014 0 0.18481603 0 0.10989559 0 0.18334362 0 0.10860109 0 0.11007309
		 0 0.18950838 0 0.19087595 0 0.11132297 0 0.19115281 0 0.11208346 0 0.18925992 0 0.11187595
		 0 0.10766762 0 0.18629318 0 0.1881291 0 0.10881242 0 0.18185857 0 0.10729548 0 0.18153715
		 0 0.10650736 0 0.18355563 0 0.10676527 0 0.21022132 0 0.20881337 0 0.20634913 0 0.20795658
		 0 0.20614424 0 0.20701897 0 0.21964362 0 0.22442928 0 0.22473505 0 0.22052622 0 0.22265306
		 0 0.21962115 0 0.21579689 0 0.21514785 0 0.21649194 0 0.22163051 0 0.22412184 0 0.21875393
		 0 0.20593858 0 0.20607382 0 0.20804423 0 0.20695406 0 0.21477312 0 0.21149272 0 0.20723644
		 0 0.20702577 0 0.20953089 0 0.20495147 0 0.20249552 0 0.20292628 0 0.21746433 0 0.22541296
		 0 0.22146636 0 0.21317536 0 0.22796381 0 0.22781578 0 0.22396404 0 0.22412357 0 0.22507542
		 0 0.21759322 0 0.210094 0 0.2061719 0 0.21372327 0 0.2212047 0 0.20745045 0 0.20336232
		 0 0.22766799 0 0.22380468 0 0.19392636 0 0.27749601 0 0.24108139 0 0.26380813 0 0.26807761
		 0 0.25322592 0 0.21418837 0 0.28569889 0 0.29041144 0 0.26358098 0 -0.1698122 0 -0.17066503
		 0 -0.16914755 0 -0.16587061 0 -0.16895193 0 -0.15141141 0 -0.15835464 0 -0.15146858
		 0 -0.15004802 0 -0.15608299 0 -0.15287685 0 -0.16289675 0 0.18584442 0 0.18526763
		 0 0.18765265 0 0.18934661 0 0.18642718 0 0.20439655 0 0.19693348 0 0.20703503 0 0.20694447
		 0 0.20437855 0 0.20712572 0 0.19595525 0 0.058276206 0 0.0026562214 0 0.0026306808
		 0 0.058250636 0 0.0011833012;
	setAttr ".uvtk[750:999]" 0 0.057432055 0 0.10805014 0 0.10861123 0 0.10872021
		 0 -0.31290913 0 -0.29835957 0 -0.30408007 0 -0.32073838 0 -0.30455959 0 -0.32071424
		 0 0.068082362 0 0.0028786659 0 0.0029959679 0 0.065674245 0 0.0029020309 0 0.063278735
		 0 0.12285003 0 0.12759754 0 0.13240761 0 0.29708749 0 0.2968049 0 0.28853869 0 0.28851318
		 0 0.28059548 0 0.28056997 0 0.27905315 0 0.28696236 0 0.29575169 0 -0.062216282 0
		 0.0017130673 0 0.001323849 0 -0.065401316 0 -0.1370132 0 -0.1302377 0 -0.043800414
		 0 -0.043825865 0 -0.080102384 0 -0.080300748 0 -0.083639979 0 -0.045985639 0 -0.28022051
		 0 -0.27822661 0 -0.27825785 0 -0.25912762 0 -0.25491858 0 -0.24408406 0 -0.25692779
		 0 -0.25740719 0 0.0023412406 0 -0.057466805 0 -0.12013441 0 -0.11024916 0 -0.052819908
		 0 -0.23404628 0 -0.24316198 0 -0.22422814 0 -0.23302734 0 -0.23300177 0 -0.24313641
		 0 -0.049942493 0 -0.10412812 0 -0.099322379 0 -0.04792279 0 0.072816432 0 0.14321512
		 0 0.14638269 0 0.074444473 0 0.32319993 0 0.32440674 0 0.31608015 0 0.31790304 0
		 0.31765407 0 0.32365257 0 -0.21361721 0 -0.22479373 0 -0.29669952 0 -0.28191769 0
		 -0.19695121 0 -0.25987613 0 -0.23831064 0 -0.18064499 0 -0.17054796 0 -0.22495711
		 0 -0.2150749 0 -0.16142303 0 -0.15261257 0 -0.15186346 0 -0.17762089 0 -0.17806 0
		 -0.20608246 0 -0.20621133 0 -0.20171428 0 -0.1808368 0 -0.149517 0 -0.21446764 0
		 -0.17796385 0 -0.17132092 0 -0.20664853 0 -0.16421825 0 -0.19777983 0 0.15511322
		 0 0.15572193 0 0.13964897 0 0.13928971 0 0.13832682 0 0.15785146 0 0.18547082 0 0.17827094
		 0 0.17125851 0 0.2103194 0 0.21886924 0 0.22765449 0 -0.22841251 0 -0.24408305 0
		 -0.23937488 0 -0.22398579 0 -0.23440951 0 -0.21903145 0 -0.21006399 0 -0.21045917
		 0 -0.21712309 0 -0.25557703 0 -0.25061977 0 -0.24554873 0 -0.27623451 0 -0.25345063
		 0 -0.23667264 0 -0.25864625 0 -0.21997428 0 -0.23928028 0 -0.26572233 0 -0.2893756
		 0 -0.24575424 0 -0.22961807 0 -0.21425676 0 -0.20300061 0 -0.19305491 0 -0.20441097
		 0 -0.21624291 0 -0.23196661 0 -0.21803135 0 -0.20794129 0 -0.20480174 0 -0.25753361
		 0 -0.22880584 0 -0.2432512 0 -0.21405256 0 -0.22262216 0 -0.22259665 0 -0.093382835
		 0 -0.14803272 0 -0.20392346 0 -0.196711 0 -0.16966933 0 -0.14691961 0 -0.13587356
		 0 -0.1224196 0 -0.11504674 0 -0.083172023 0 0.0028055608 0 -0.045849323 0 -0.044280291
		 0 0.0027258098 0 0.060819268 0 0.058944196 0 0.11101779 0 0.11736003 0 0.161596 0
		 0.14558953 0 0.15998465 0 0.16969803 0 0.18768471 0 0.19765946 0 0.27173585 0 0.27171034
		 0 0.26344228 0 0.26341671 0 0.26415089 0 0.27027732 0 0.1065838 0 0.11672726 0 0.13337547
		 0 0.13615373 0 0.15002355 0 0.15506804 0 -0.0031077862 0 -0.010047495 0 0.053549379
		 0 0.055027366 0 -0.059647083 0 -0.052413821 0 -0.09326303 0 -0.10509485 0 -0.15554947
		 0 -0.18829298 0 0.14770046 0 0.15214506 0 0.15453699 0 0.15416402 0 0.15379101 0
		 0.153418 0 0.14939484 0 0.14528993 0 0.14563251 0 0.13784707 0 0.13572586 0 0.1432052
		 0 0.13161635 0 0.13915262 0 0.12728721 0 0.12500897 0 0.12910634 0 -0.0095419288
		 0 -0.0078168511 0 -0.012798786 0 -0.012604713 0 0.0020727813 0 0.0025939047 0 -0.11672246
		 0 -0.1103341 0 -0.1200881 0 -0.11503202 0 -0.11278808 0 -0.10494798 0 0.11069572
		 0 0.11026731 0 0.066370577 0 0.066854388 0 0.059203535 0 0.062918723 0 0.0017500818
		 0 -0.006835103 0 0.031911194 0 0.065342039 0 0.097894639 0 0.055510938 0 0.21648377
		 0 0.22575682 0 0.25296366 0 0.23887107 0 0.2760998 0 0.24573839 0 0.20721072 0 0.19782692
		 0 0.23918432 0 0.22747928 0 0.26271564 0 0.25356373 0 0.2467609 0 0.21958309;
	setAttr ".uvtk[1000:1249]" 0 0.18747473 0 0.21699351 0 0.19095105 0 0.19092643
		 0 0.21696797 0 0.24451023 0 0.2445358 0 0.24200392 0 0.2303077 0 0.22035432 0 0.24714172
		 0 0.25483051 0 0.26433203 0 0.25934112 0 0.25056741 0 0.27235025 0 0.28047645 0 0.16349813
		 0 0.16828609 0 0.20244479 0 0.18868542 0 0.16015893 0 0.15668455 0 0.19028813 0 0.19265765
		 0 0.23070833 0 0.23565978 0 0.20072702 0 0.15003324 0 0.17861718 0 0.16868195 0 0.17965764
		 0 -0.021945953 0 -0.064222038 0 -0.068083405 0 -0.020676911 0 -0.0094394684 0 -0.015975893
		 0 -0.0086548328 0 -0.0013079047 0 -0.009518981 0 -0.015112817 0 -0.0090994239 0 -0.0081139207
		 0 -0.013844252 0 -0.023993909 0 -0.023214281 0 -0.07791847 0 -0.080730677 0 -0.12985533
		 0 -0.13504195 0 -0.02160418 0 -0.073175728 0 -0.12176394 0 -0.12607914 0 -0.12582862
		 0 -0.13133848 0 -0.13048875 0 -0.1325193 0 -0.12920302 0 -0.12610173 0 -0.12585765
		 0 -0.13135976 0 -0.13050681 0 -0.1261375 0 -0.12574875 0 -0.13138598 0 -0.13053548
		 0 -0.12559527 0 -0.13924253 0 -0.1455847 0 -0.13056439 0 -0.22080576 0 -0.1852541
		 0 -0.18729103 0 -0.17858905 0 -0.12009287 0 -0.13873059 0 -0.1291092 0 -0.13733417
		 0 -0.14558804 0 -0.11772323 0 -0.11959654 0 -0.11774451 0 -0.11961466 0 -0.11719227
		 0 -0.11964321 0 -0.11984301 0 -0.13223177 0 -0.13042766 0 -0.11735857 0 0.20503095
		 0 0.25337574 0 0.25912791 0 0.20956057 0 0.29023415 0 0.28336143 0 0.29999441 0 0.30772233
		 0 0.1380851 0 0.07057941 0 0.24102068 0 0.19569594 0 0.27166808 0 0.29030183 0 0.30663359
		 0 0.30784038 0 0.30716804 0 -0.13524586 0 -0.0060372949 0 -0.0053087473 0 -0.0052714348
		 0 -0.0061711669 0 -0.0072113276 0 0.12142533 0 0.12145752 0 0.1233198 0 0.12523806
		 0 0.13184953 0 0.12911403 0 0.13505989 0 0.13800645 0 0.1404236 0 0.13740963 0 -0.15502101
		 0 -0.14703727 0 -0.14181012 0 -0.16668528 0 0.31998467 0 0.3219828 0 0.3118282 0
		 0.31424153 0 0.30541641 0 0.30334747 0 0.29499841 0 0.29651994 0 0.28856441 0 0.28723693
		 0 0.27930975 0 0.28062123 0 0.2717616 0 0.27046356 0 0.26427355 0 0.26346797 0 0.19097584
		 0 0.21701923 0 0.24456152 0 0.1563358 0 0.14001137 0 0.10883015 0 0.0026819408 0
		 0.058301985 0 -0.043774605 0 -0.079902291 0 -0.15110773 0 -0.17717797 0 -0.20595253
		 0 -0.23297608 0 -0.22257096 0 -0.2575497 0 -0.24311078 0 -0.30470192 0 -0.28086817
		 0 -0.32068712 0 0.14396545 0 0.14575368 0 0.13377303 0 0.13876408 0 0.13261577 0
		 0.31327689 0 0.29927397 0 0.30853242 0 0.31898701 0 0.28980902 0 0.30274785 0 0.29118171
		 0 0.27201337 0 0.28236067 0 0.27455348 0 0.26602909 0 0.25937325 0 0.25719711 0 0.2571716
		 0 0.25955951 0 0.25722286 0 0.27532369 0 0.26651785 0 0.29100645 0 0.28320283 0 0.30828124
		 0 0.29958546 0 0.31643516 0 -0.1384154 0 -0.13407934 0 -0.12602788 0 -0.11134541
		 0 -0.12499726 0 -0.13377815 0 -0.10525864 0 -0.10597539 0 -0.12001503 0 -0.12125045
		 0 -0.11876905 0 -0.10453558 0 0.17465782 0 0.17188472 0 -0.1251179 0 -0.12652606
		 0 -0.13184363 0 -0.13325173 0 -0.13645774 0 -0.12973195 0 -0.14279652 0 -0.14431423
		 0 -0.1495223 0 -0.15103996 0 -0.15018725 0 -0.14346153 0 -0.1365456 0 -0.14327139
		 0 -0.14260149 0 -0.14932716 0 -0.14624608 0 -0.13952041 0 -0.12506115 0 -0.1236977
		 0 -0.1317867 0 -0.13042319 0 -0.1320045 0 -0.13873005 0 0.16320956 0 0.16090903 0
		 0.16971263 0 0.16738963 0 0.16804907 0 0.16159838 0 0.17993546 0 0.17148399 0 0.18643853
		 0 0.17799455 0 0.18278906 0 0.18276715 0 0.18923971 0 0.18924779 0 0.16529769 0 0.17291275
		 0 0.17169589 0 0.17930347 0 0.18674585 0 0.18034768;
	setAttr ".uvtk[1250:1447]" 0 0.16229376 0 0.16871449 0 0.1828112 0 0.18923181
		 0 -0.18132037 0 -0.17991292 0 -0.21309698 0 -0.21450108 0 -0.2322427 0 -0.23350871
		 0 -0.2364825 0 -0.21770006 0 -0.18452477 0 -0.19910032 0 -0.19758326 0 -0.23074037
		 0 -0.23225617 0 -0.24878323 0 -0.25025672 0 -0.24951363 0 -0.23140645 0 -0.19824809
		 0 -0.1913352 0 -0.22450072 0 -0.24288303 0 -0.19738841 0 -0.23054934 0 -0.24876404
		 0 -0.2459085 0 -0.22747493 0 -0.19430888 0 -0.17849338 0 -0.1798563 0 -0.21304262
		 0 -0.21168065 0 -0.23229474 0 -0.23096567 0 -0.18679643 0 -0.21997333 0 -0.23884737
		 0 -0.21857226 0 -0.21943283 0 -0.1714111 0 -0.17173207 0 -0.17317033 0 -0.22174597
		 0 -0.23187631 0 -0.23322582 0 -0.180439 0 -0.18162864 0 -0.1816166 0 -0.23279595
		 0 -0.22697175 0 -0.17684609 0 -0.23236239 0 -0.18160456 0 -0.1802417 0 -0.23014903
		 0 -0.21893734 0 -0.2177043 0 -0.17219722 0 -0.17108732 0 -0.22437972 0 -0.17617732
		 0 -0.090084374 0 -0.089864969 0 0.0087916851 0 0.0095502138 0 0.0098389387 0 -0.090435803
		 0 -0.094890416 0 -0.095930338 0 0.0081551075 0 0.0072574615 0 0.0064273477 0 -0.096338987
		 0 -0.092584908 0 0.0091947913 0 -0.096751273 0 0.0055901408 0 0.0052732229 0 -0.096232057
		 0 -0.091301918 0 -0.090305626 0 0.0071368515 0 0.0080267191 0 -0.09384656 0 0.0060039163
		 0 0.10860109 0 0.10989553 0 0.18334362 0 0.18481603 0 0.18666011 0 0.11103511 0 0.11208346
		 0 0.11132297 0 0.19115281 0 0.19087595 0 0.18950838 0 0.11007309 0 0.11187595 0 0.18925992
		 0 0.10881242 0 0.1881291 0 0.18629318 0 0.10766762 0 0.10650736 0 0.10729545 0 0.18153715
		 0 0.18185857 0 0.10676536 0 0.18355563 0 0.20701897 0 0.20795658 0 0.20614424 0 0.20634913
		 0 0.20881337 0 0.21022132 0 0.21962115 0 0.22052625 0 0.22265306 0 0.22473505 0 0.22442928
		 0 0.21964362 0 0.21514785 0 0.21579689 0 0.21875393 0 0.22412184 0 0.22163051 0 0.21649194
		 0 0.20695406 0 0.20607376 0 0.20804423 0 0.20593858 0 0.21149272 0 0.21477306 0 0.20249552
		 0 0.20495147 0 0.20953089 0 0.20702577 0 0.20723644 0 0.20292628 0 0.21317536 0 0.22146636
		 0 0.22541302 0 0.21746433 0 0.22412357 0 0.22396404 0 0.22781578 0 0.22796381 0 0.21372327
		 0 0.2061719 0 0.210094 0 0.21759319 0 0.22507542 0 0.2212047 0 0.20336232 0 0.20745045
		 0 0.22380468 0 0.22766799 0 0.19392636 0 0.26807761 0 0.24108139 0 0.26380813 0 0.27749601
		 0 0.25322592 0 0.21418837 0 0.29041144 0 0.26358098 0 -0.16914755 0 -0.17066503 0
		 -0.1698122 0 -0.16895193 0 -0.16587061 0 -0.1583547 0 -0.15141141 0 -0.15004802 0
		 -0.15146858 0 -0.15287691 0 -0.15608299 0 -0.16289675 0 0.18765262 0 0.18526763 0
		 0.18584442 0 0.18642718 0 0.18934664 0 0.19693348 0 0.20439655 0 0.20694453 0 0.20703501
		 0 0.20712572 0 0.20437852 0 0.19595522 0 0.1098389 0 0.065886855 0 0.021934718 0
		 0.022473931 0 0.023013115;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "90F125EA-4FFE-D01F-0CD9-5E9B1FF07C8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[88:91]" "e[94:95]" "e[218:221]" "e[412:413]" "e[676:677]" "e[686:687]" "e[820:823]" "e[826:827]" "e[938:941]" "e[1106:1107]" "e[1366:1367]" "e[1376:1377]" "e[1434:1435]";
createNode polyMapSew -n "polyMapSew2";
	rename -uid "8C4EBCC4-42B5-5CF1-B4A7-C9B716F1627B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[88:91]" "e[94:95]" "e[218:221]" "e[412:413]" "e[676:677]" "e[686:687]" "e[820:823]" "e[826:827]" "e[938:941]" "e[1106:1107]" "e[1366:1367]" "e[1376:1377]" "e[1434:1435]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "6066A02F-438E-71A9-CE3E-609A887A6DB5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 40 "e[362:363]" "e[366:367]" "e[370:371]" "e[374:375]" "e[378:379]" "e[396:397]" "e[400:401]" "e[406:409]" "e[436:437]" "e[464:465]" "e[502:503]" "e[520:521]" "e[550:551]" "e[574:575]" "e[598:599]" "e[622:623]" "e[646:647]" "e[664:665]" "e[698:699]" "e[734:735]" "e[1060:1061]" "e[1064:1065]" "e[1068:1069]" "e[1072:1073]" "e[1076:1077]" "e[1094:1095]" "e[1098:1099]" "e[1102:1105]" "e[1128:1129]" "e[1154:1155]" "e[1192:1193]" "e[1210:1211]" "e[1240:1241]" "e[1264:1265]" "e[1288:1289]" "e[1312:1313]" "e[1336:1337]" "e[1354:1355]" "e[1388:1389]" "e[1424:1425]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "27B2C5B3-4C96-342C-1A49-A3949142E6FA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[1082:1083]" "e[1086:1087]" "e[1090:1091]" "e[1176:1177]" "e[1188:1189]" "e[1212:1213]" "e[1236:1237]" "e[1260:1261]" "e[1284:1285]" "e[1308:1309]" "e[1332:1333]" "e[1356:1357]" "e[1400:1401]" "e[1412:1413]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "4488E1C5-4A72-98A4-FC0F-229216ABA5CD";
	setAttr ".uopa" yes;
	setAttr -s 1560 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 0.056892738 0 0.056892827 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892827
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892827 0 0.056892768 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892768
		 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768
		 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892768 0 0.056892708
		 0 0.056892768 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892708 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768
		 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892708 0 0.056892768 0 0.056892708
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892827 0 0.056892768 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768
		 0 0.056892738 0 0.056892708 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892738
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892797
		 0 0.056892738 0 0.056892768 0 0.056892827 0 0.056892827 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892708
		 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892708 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892768
		 0 0.056892768 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797;
	setAttr ".uvtk[250:499]" 0 0.056892797 0 0.056892768 0 0.056892797 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892708
		 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892797 0 0.056892768 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892797
		 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892708 0 0.056892738 0 0.056892708
		 0 0.056892797 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892797
		 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892708 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892797 0 0.056892708
		 0 0.056892768 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892738 0 0.056892768
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892768
		 0 0.056892738 0 0.056892768 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892797 0 0.056892738 0 0.056892768
		 0 0.056892797 0 0.056892797 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892738
		 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892708 0 0.056892708 0 0.056892738
		 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892708 0 0.056892738
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797;
	setAttr ".uvtk[500:749]" 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768
		 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892797
		 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892738 0 0.056892708
		 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892738
		 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892797 0 0.056892827 0 0.056892738 0 0.056892827 0 0.056892708
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892708
		 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892797 0 0.056892797 0 0.056892708 0 0.056892768 0 0.056892708
		 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892708 0 0.056892768 0 0.056892708
		 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892797 0 0.056892708 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892708 0 0.056892738 0 0.056892768
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892708 0 0.056892768
		 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892768 0 0.056892738
		 0 0.056892768 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892708
		 0 0.056892768 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797;
	setAttr ".uvtk[750:999]" 0 0.056892738 0 0.056892827 0 0.056892738 0 0.056892827
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892768 0 0.056892827 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892768
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892768 0 0.056892708 0 0.056892708
		 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892768
		 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768
		 0 0.056892827 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892738 0 0.056892768
		 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892738
		 0 0.056892768 0 0.056892827 0 0.056892827 0 0.056892768 0 0.056892797 0 0.056892738
		 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892738
		 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892738 0 0.056892708
		 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892827
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892797 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892768;
	setAttr ".uvtk[1000:1249]" 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892708
		 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708
		 0 0.056892768 0 0.056892797 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768
		 0 0.056892768 0 0.056892797 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892708
		 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892797
		 0 0.056892708 0 0.056892768 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892797
		 0 0.056892738 0 0.056892768 0 0.056892708 0 0.056892768 0 0.056892797 0 0.056892768
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892768 0 0.056892708
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892708 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892768 0 0.056892768
		 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892738
		 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892708 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892708
		 0 0.056892708 0 0.056892738 0 0.056892708 0 0.056892797 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892768
		 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892708
		 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768 0 0.056892797
		 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892708 0 0.056892768
		 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892708 0 0.056892797 0 0.056892768
		 0 0.056892768 0 0.056892738 0 0.056892708 0 0.056892768 0 0.056892738 0 0.056892708;
	setAttr ".uvtk[1250:1499]" 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892768
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892708 0 0.056892738
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892827 0 0.056892797 0 0.056892768 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892708 0 0.056892738 0 0.056892768 0 0.056892738
		 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892708 0 0.056892768 0 0.056892797
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892797 0 0.056892768 0 0.056892708
		 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892708 0 0.056892708 0 0.056892708
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892797 0 0.056892708
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892738 0 0.056892708
		 0 0.056892797 0 0.056892708 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892708
		 0 0.056892768 0 0.056892708 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892768
		 0 0.056892797 0 0.056892768 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892768
		 0 0.056892797 0 0.056892738 0 0.056892768 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892768
		 0 0.056892708 0 0.056892738 0 0.056892797 0 0.056892768 0 0.056892768 0 0.056892708
		 0 0.056892768 0 0.056892738 0 0.056892708 0 0.056892797 0 0.056892738 0 0.056892768
		 0 0.056892738 0 0.056892738 0 0.056892708 0 0.056892708 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797 0 0.056892768
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892768 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738
		 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892708 0 0.056892768 0 0.056892708 0 0.056892738 0 0.056892708 0 0.056892797
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797;
	setAttr ".uvtk[1500:1559]" 0 0.056892768 0 0.056892738 0 0.056892797 0 0.056892738
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768
		 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768 0 0.056892768
		 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892738 0 0.056892768 0 0.056892768 0 0.056892768 0 0.056892768
		 0 0.056892768 0 0.056892768 0 0.056892708 0 0.056892768 0 0.056892768 0 0.056892708
		 0 0.056892738 0 0.056892797 0 0.056892738 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892768 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892738 0 0.056892738 0 0.056892768 0 0.056892738 0 0.056892738
		 0 0.056892738 0 0.056892768 0 0.056892827 0 0.056892797 0 0.056892797 0 0.056892797
		 0 0.056892738 0 0.056892797;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "0BDA8006-4DA6-836E-7E3B-8AA0CBCCFEB0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[384:385]" "e[388:389]" "e[392:393]" "e[486:487]" "e[498:499]" "e[522:523]" "e[546:547]" "e[570:571]" "e[594:595]" "e[618:619]" "e[642:643]" "e[666:667]" "e[710:711]" "e[722:723]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "57320F70-455B-4A14-9871-8BACD6E4086E";
	setAttr ".uopa" yes;
	setAttr -s 1588 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0 0.24770209 0 0.24768654 0 0.24627718
		 0 0.24630013 0 0.24471125 0 0.2447516 0 0.24475226 0 -0.26579651 0 -0.26439211 0
		 0.23558083 0 0.23558143 0 -0.27634788 0 0.23574868 0 0.23619911 0 0.23621246 0 0.23637179
		 0 0.23596671 0 0.23580274 0 -0.26386654 0 -0.26399872 0 -0.26565725 0 -0.26559055
		 0 -0.26733816 0 -0.26733556 0 -0.26733881 0 -0.26552349 0 -0.26373264 0 0.25266758
		 0 0.25244734 0 0.25248966 0 0.25271073 0 0.25249025 0 -0.25938582 0 0.25294158 0
		 0.25294939 0 0.25291219 0 -0.2712335 0 -0.27130467 0 -0.26927322 0 -0.26923978 0
		 -0.26738587 0 -0.26738212 0 -0.26737127 0 -0.26915109 0 -0.27104488 0 0.24339798
		 0 0.24234971 0 0.24244264 0 0.24345812 0 0.24244818 0 -0.2686384 0 0.23752519 0 0.23788282
		 0 0.23758116 0 0.23693231 0 0.23746392 0 0.23693135 0 -0.27522051 0 0.23751184 0
		 -0.26888949 0 -0.27048838 0 -0.27076358 0 -0.26901889 0 -0.26735377 0 -0.27418804
		 0 0.2381914 0 0.23819062 0 0.23790851 0 0.23843566 0 0.23816225 0 -0.26875317 0 -0.27018416
		 0 -0.27031797 0 -0.26880938 0 -0.26532796 0 -0.26534638 0 -0.26331311 0 -0.26334357
		 0 -0.26343176 0 -0.26539171 0 0.25368902 0 0.25352207 0 0.25352898 0 0.25371012 0
		 0.2534782 0 -0.25842083 0 -0.25833791 0 0.25377586 0 0.25374129 0 -0.27567929 0 -0.27583453
		 0 -0.27379477 0 -0.27367738 0 -0.27336621 0 -0.27526775 0 -0.27244824 0 -0.27405369
		 0 -0.27465409 0 -0.27290225 0 -0.27191311 0 -0.2734068 0 -0.27368194 0 -0.27216715
		 0 0.23964366 0 0.2390624 0 0.23893729 0 0.23972091 0 -0.27315646 0 -0.27236405 0
		 -0.27164695 0 0.24042937 0 0.24051556 0 0.23917201 0 0.23892507 0 0.24010637 0 0.23990855
		 0 0.23972365 0 0.23870739 0 0.24852946 0 0.24855629 0 -0.26353103 0 -0.26308355 0
		 0.24899676 0 0.249073 0 -0.26132548 0 -0.26156351 0 -0.262651 0 -0.26245576 0 -0.26225531
		 0 -0.26108089 0 0.23881891 0 0.23882994 0 0.23858032 0 0.23844233 0 0.23815218 0
		 0.23801395 0 0.23788288 0 0.23831913 0 0.23863336 0 0.23784199 0 0.23770079 0 0.23771641
		 0 0.23757318 0 0.23743191 0 0.23756287 0 0.23801658 0 0.23747739 0 0.23855403 0 0.23808917
		 0 0.23762199 0 0.23698768 0 0.23662183 0 0.23728034 0 0.23714092 0 0.23646989 0 0.23871323
		 0 0.23828557 0 0.23783633 0 0.23822019 0 0.23865798 0 0.2389873 0 0.23930344 0 0.23902658
		 0 0.23860815 0 0.23897651 0 0.23888907 0 0.23750833 0 0.23737475 0 0.23777977 0 0.23790601
		 0 0.23830816 0 0.23818776 0 -0.27361619 0 0.23848036 0 0.23871884 0 -0.27062196 0
		 -0.27082723 0 -0.27120179 0 -0.27154028 0 -0.27150929 0 -0.27214268 0 -0.27289554
		 0 -0.27309632 0 -0.27001882 0 -0.26973453 0 -0.26865175 0 -0.26869544 0 -0.26734084
		 0 -0.26734307 0 -0.26415157 0 -0.26432815 0 -0.26577792 0 -0.2657257 0 -0.26191598
		 0 -0.26219368 0 -0.26269445 0 -0.26291999 0 -0.26296487 0 -0.26336566 0 0.25220302
		 0 0.25203255 0 0.25201204 0 0.25224295 0 0.25201276 0 -0.25985363 0 0.24899551 0
		 0.24846891 0 0.24885514 0 0.2483916 0 0.24792805 0 0.24764571 0 0.24621025 0 0.24616924
		 0 0.24439856 0 0.2445918 0 0.24208179 0 0.24321905 0 0.2430177 0 0.24175242 0 0.23943606
		 0 0.24034771 0 0.24883404 0 0.24894956 0 0.24897042 0 0.24890015 0 0.24899116 0 0.24891099
		 0 0.24879363 0 0.24878696 0 0.24872246 0 0.24855241 0 0.24866524 0 0.24834266 0 0.2484571
		 0 0.24851611 0 0.24873289 0 0.24815866 0 0.24827281 0 0.24822208 0 0.24475053 0 0.24473491
		 0 0.24432197 0 0.2443274 0 0.24446067 0 0.24441263 0 0.24175647 0 0.2415382 0 0.24133489
		 0 0.24147573 0 0.2416065;
	setAttr ".uvtk[250:499]" 0 0.24142858 0 0.2474589 0 0.24654469 0 0.24562958
		 0 0.24653152 0 0.24452665 0 0.24474165 0 0.24472216 0 0.24648562 0 0.24472269 0 0.24641278
		 0 0.24632224 0 0.24622378 0 0.25151977 0 0.25236508 0 0.25172099 0 0.25132868 0 0.25096354
		 0 0.25070539 0 0.25044724 0 0.2507917 0 0.25154832 0 0.25173774 0 0.25101152 0 0.25199249
		 0 0.25133744 0 0.250186 0 0.24989775 0 0.25148574 0 0.25071892 0 0.24999389 0 0.24999461
		 0 -0.26137769 0 -0.26061091 0 -0.2603243 0 -0.26053837 0 -0.26128414 0 -0.26100704
		 0 -0.26068139 0 -0.26005977 0 -0.25983652 0 -0.26044297 0 -0.26019871 0 -0.2596103
		 0 0.2501283 0 0.25154117 0 0.2503145 0 0.24993148 0 0.24936351 0 0.24923024 0 0.24927536
		 0 0.2502667 0 0.25123921 0 0.2511014 0 0.25004205 0 0.24997607 0 0.24904051 0 0.24913731
		 0 0.24968013 0 0.24965116 0 0.2493746 0 0.24885538 0 0.2427828 0 0.24289033 0 0.24406734
		 0 0.24410257 0 0.24426702 0 0.24427137 0 0.24427167 0 0.24442706 0 0.24442497 0 0.24442735
		 0 0.24429283 0 0.24445233 0 0.24240497 0 0.24086663 0 0.24091867 0 0.24243072 0 0.24106297
		 0 0.24250898 0 0.244032 0 0.24401024 0 0.24400517 0 0.24128827 0 0.242641 0 0.24407682
		 0 0.24098888 0 0.24084589 0 0.24102178 0 0.24104539 0 0.24117514 0 0.24116811 0 0.24108121
		 0 0.24102113 0 0.24104485 0 0.24117431 0 0.24116758 0 0.24102041 0 0.24104407 0 0.24117735
		 0 0.24116656 0 0.24062511 0 0.2410433 0 0.24080172 0 0.24118158 0 0.2385309 0 0.2395207
		 0 0.23970625 0 0.23946401 0 0.23936513 0 0.24108383 0 0.24081597 0 0.24133483 0 0.24062499
		 0 0.24054876 0 0.24077186 0 0.24085483 0 0.24134865 0 0.24140075 0 0.24134812 0 0.24140021
		 0 0.24134728 0 0.24141559 0 0.24141094 0 0.24104711 0 0.24099687 0 0.24134174 0 -0.26155502
		 0 -0.26158464 0 -0.26017055 0 -0.26020464 0 -0.2603648 0 -0.26171076 0 -0.25885174
		 0 -0.25906691 0 -0.25952998 0 -0.25933862 0 -0.25927651 0 -0.25875786 0 -0.26545399
		 0 -0.26357457 0 -0.26197064 0 -0.26070878 0 -0.25933674 0 -0.25985551 0 0.25323012
		 0 0.25324884 0 -0.25888205 0 0.24085626 0 0.24091288 0 0.24453154 0 0.24453047 0
		 0.24451014 0 0.24450645 0 0.24450871 0 0.24447748 0 0.24816498 0 0.24811164 0 0.24805889
		 0 0.24805972 0 0.24852058 0 0.24843851 0 0.24827299 0 0.24834916 0 0.24850395 0 0.24858788
		 0 0.24859545 0 0.24851158 0 0.24073014 0 0.24058464 0 0.24036238 0 0.24003765 0 -0.25867024
		 0 -0.25845474 0 -0.25873744 0 -0.25851035 0 -0.25839907 0 -0.25835451 0 -0.25916362
		 0 -0.259206 0 -0.25897354 0 -0.25891593 0 -0.25960627 0 -0.25964278 0 -0.25942206
		 0 -0.25938511 0 -0.26008382 0 -0.26006138 0 -0.25988907 0 -0.25985292 0 -0.26061019
		 0 -0.26137698 0 -0.26210207 0 -0.26438907 0 -0.26352093 0 -0.26306647 0 -0.2657958
		 0 -0.2673443 0 -0.26964349 0 -0.26863766 0 -0.27315283 0 -0.27235174 0 -0.27162591
		 0 -0.27361548 0 -0.27390519 0 -0.27418733 0 -0.27458933 0 -0.27523851 0 -0.27590209
		 0 -0.27651501 0 -0.27634713 0 0.24873737 0 0.24873623 0 0.24868646 0 0.24854162 0
		 0.24840263 0 0.24837044 0 0.25360516 0 0.2535592 0 0.25326839 0 0.25326809 0 0.25301036
		 0 0.25340024 0 0.25278506 0 0.2531071 0 0.25274685 0 0.25232211 0 0.25253943 0 0.25225136
		 0 0.25189951 0 0.25208476 0 0.25183818 0 -0.26025841 0 -0.26025769 0 -0.26019263
		 0 -0.25999892 0 -0.25975376 0 -0.25953439 0 -0.25931713 0 -0.25907829 0 -0.25883618
		 0 -0.25860918 0 -0.25849944 0 0.24094543 0 0.24082473 0 0.24095383 0 0.24119827 0
		 0.24157831 0 0.24116954 0 0.24130258;
	setAttr ".uvtk[500:749]" 0 0.2417278 0 0.24133697 0 -0.27034944 0 -0.2703293
		 0 -0.27072558 0 0.24946371 0 0.24954095 0 0.24106649 0 0.24087915 0 0.2409685 0 0.24115571
		 0 0.24100772 0 -0.27090234 0 -0.27141303 0 -0.27160028 0 0.24047324 0 0.24066046
		 0 0.2405155 0 0.24070278 0 0.24068955 0 0.24087676 0 -0.2713033 0 -0.27149057 0 -0.27157634
		 0 -0.2713891 0 -0.27105004 0 -0.27086282 0 -0.271088 0 -0.27090076 0 -0.2712813 0
		 -0.27109408 0 -0.26291993 0 -0.26274034 0 0.24933854 0 0.24915823 0 0.24940327 0
		 0.24922225 0 0.24963382 0 0.24945262 0 0.2498689 0 0.24968788 0 0.2499471 0 0.24976674
		 0 0.24994686 0 -0.26232997 0 -0.26239794 0 -0.26221982 0 -0.26242703 0 -0.26260495
		 0 -0.26263881 0 -0.26281697 0 -0.26272184 0 -0.26290059 0 -0.26215062 0 -0.26232937
		 0 0.23861739 0 0.23809448 0 0.23817727 0 0.23870644 0 0.23821244 0 -0.27335173 0
		 -0.27242786 0 0.23963025 0 0.23954102 0 -0.27386147 0 -0.2743656 0 0.23771098 0 0.23821208
		 0 0.23775199 0 0.23825434 0 0.23917744 0 0.23913518 0 0.23915896 0 0.2379162 0 0.23842797
		 0 0.23935136 0 -0.27375203 0 -0.27426523 0 -0.27434474 0 -0.27383763 0 -0.27291441
		 0 -0.27282867 0 -0.27384922 0 -0.2733123 0 -0.2738862 0 -0.27335024 0 -0.27242631
		 0 -0.27238834 0 -0.27406865 0 -0.27354318 0 -0.27261949 0 0.23850468 0 0.23985705
		 0 0.2398971 0 0.23856917 0 0.2399061 0 -0.27350417 0 -0.27390015 0 -0.2724753 0 0.23962167
		 0 0.23818514 0 0.23965475 0 0.23822275 0 0.23975477 0 0.23835924 0 -0.27382648 0
		 -0.27243704 0 -0.27247494 0 -0.27388811 0 -0.27218217 0 -0.27348 0 -0.27221304 0
		 -0.27351433 0 -0.27232385 0 -0.27366585 0 0.24216047 0 0.24495217 0 0.24494419 0
		 0.24217638 0 0.24492303 0 -0.26992697 0 -0.2701011 0 -0.26724002 0 0.24488029 0 0.24200752
		 0 0.24490538 0 0.24203643 0 0.24493435 0 0.24210069 0 -0.27009815 0 -0.26727214 0
		 -0.26726332 0 -0.27011257 0 -0.26719549 0 -0.26993313 0 -0.26722026 0 -0.26996088
		 0 -0.26725182 0 -0.27003172 0 0.24776956 0 0.2498751 0 0.24982372 0 0.24773785 0
		 0.24978271 0 -0.26439542 0 -0.26435444 0 -0.2621429 0 0.24999252 0 0.24777755 0 0.25000015
		 0 0.24779877 0 0.24994752 0 0.24779293 0 -0.26442143 0 -0.26223242 0 -0.26218131
		 0 -0.26438954 0 -0.26235589 0 -0.26443177 0 -0.26236483 0 -0.26445371 0 -0.26230863
		 0 -0.26444653 0 0.25053111 0 0.25049189 0 0.25042322 0 0.25046799 0 0.2504175 0 -0.26165539
		 0 -0.26130393 0 -0.26117069 0 0.25093511 0 0.25081798 0 0.25087717 0 0.25079271 0
		 0.25068632 0 0.25066826 0 -0.26139167 0 -0.26124862 0 -0.26117924 0 -0.2613287 0
		 -0.26168549 0 -0.26168171 0 -0.26162687 0 -0.26165721 0 -0.26143953 0 -0.26153085
		 0 -0.26164934 0 0.25044212 0 0.25051185 0 0.25038436 0 0.25031599 0 0.25032797 0
		 0.25073275 0 0.25095394 0 0.25084409 0 0.25061324 0 0.25102505 0 -0.26107642 0 -0.26118365
		 0 0.25091806 0 -0.26115268 0 -0.261361 0 -0.2615698 0 -0.26167899 0 -0.26146874 0
		 -0.26126045 0 -0.26164338 0 -0.26175719 0 -0.26108053 0 -0.26118806 0 0.2500774 0
		 0.252404 0 0.25139019 0 0.25202289 0 0.2521418 0 0.25172833 0 0.25064149 0 0.25263235
		 0 0.25276366 0 0.25201657 0 -0.27214664 0 0.23992679 0 0.2399691 0 -0.27203691 0
		 -0.27212271 0 -0.27163437 0 -0.27182767 0 0.24046132 0 -0.2715964 0 0.24033287 0
		 0.24042216 0 0.24014315 0 -0.26224491 0 0.24983636 0 0.24990276 0 -0.2621474 0 -0.2622287
		 0 -0.26172841 0 -0.26193619 0 0.2504423 0 -0.26165748 0 0.25036839 0 0.25044492 0
		 0.25013384 0 -0.26579651 0 -0.26734501 0 0.2447516 0 0.24630013 0 0.24471125;
	setAttr ".uvtk[750:999]" 0 0.24627718 0 0.24768654 0 0.24770209 0 0.24770513
		 0 0.23596671 0 0.23637179 0 0.23621246 0 0.23574868 0 -0.27589813 0 -0.27634788 0
		 -0.26552349 0 -0.26733881 0 -0.26733556 0 -0.26559055 0 -0.26733816 0 -0.26565725
		 0 -0.26399872 0 -0.26386654 0 -0.26373264 0 0.25294939 0 -0.25915569 0 -0.25938582
		 0 0.25271073 0 -0.25960699 0 0.25248966 0 0.25244734 0 0.25266758 0 0.25291219 0
		 -0.26915109 0 -0.26737127 0 -0.26738212 0 -0.26923978 0 -0.2712335 0 -0.27104488
		 0 -0.2686384 0 0.24345812 0 -0.26964909 0 0.24244264 0 0.24234971 0 0.24339798 0
		 -0.27522051 0 0.23693231 0 0.23693135 0 0.23746392 0 0.23758116 0 0.23788282 0 0.23752519
		 0 -0.27458537 0 -0.26735377 0 -0.26901889 0 -0.27076358 0 -0.27048838 0 -0.26888952
		 0 0.23816225 0 0.23790851 0 0.23843566 0 0.23819062 0 -0.2739059 0 -0.27418804 0
		 -0.26880938 0 -0.27031797 0 -0.27018416 0 -0.26875317 0 -0.26539171 0 -0.26343176
		 0 -0.26334354 0 -0.26534638 0 -0.25842083 0 0.25371012 0 -0.25861907 0 0.25352898
		 0 0.25352207 0 0.25368902 0 -0.27336621 0 -0.27367738 0 -0.27567929 0 -0.27526775
		 0 -0.27290225 0 -0.27465409 0 -0.27405369 0 -0.27244824 0 -0.27216715 0 -0.27368194
		 0 -0.2734068 0 -0.27191311 0 0.24042937 0 0.24045023 0 -0.27236405 0 0.23972091 0
		 0.23894081 0 0.23893729 0 0.2390624 0 0.23964366 0 0.24051556 0 0.23870739 0 0.23972365
		 0 0.23990855 0 0.23892507 0 0.24010637 0 0.23917201 0 0.24899676 0 0.24901381 0 -0.26353103
		 0 0.24855629 0 0.24852946 0 0.249073 0 -0.26225531 0 -0.26245576 0 -0.262651 0 -0.26156351
		 0 -0.26132548 0 -0.26108089 0 0.23831913 0 0.23788288 0 0.23801395 0 0.23844233 0
		 0.23815218 0 0.23858032 0 0.23882994 0 0.23881891 0 0.23863336 0 0.23756287 0 0.23770079
		 0 0.23784199 0 0.23698768 0 0.23762199 0 0.23808917 0 0.23747739 0 0.23855403 0 0.23801658
		 0 0.23728034 0 0.23662183 0 0.23783633 0 0.23828557 0 0.23871323 0 0.23902658 0 0.23930344
		 0 0.2389873 0 0.23865798 0 0.23822019 0 0.23860815 0 0.23888907 0 0.23897645 0 0.23750833
		 0 0.23830816 0 0.23790601 0 0.23871884 0 0.23848036 0 -0.27361619 0 -0.27001882 0
		 -0.27154028 0 -0.27309632 0 -0.27289554 0 -0.27214268 0 -0.27150929 0 -0.27120179
		 0 -0.27082723 0 -0.27062196 0 -0.26973453 0 -0.26734084 0 -0.26869544 0 -0.26865175
		 0 -0.26734307 0 -0.2657257 0 -0.26577792 0 -0.26432815 0 -0.26415157 0 -0.26291999
		 0 -0.26336566 0 -0.26296487 0 -0.26269445 0 -0.26219368 0 -0.26191598 0 -0.25985363
		 0 0.25224295 0 -0.26008454 0 0.25201204 0 0.25203255 0 0.25220302 0 0.24764571 0
		 0.24792805 0 0.2483916 0 0.24846891 0 0.24885514 0 0.24899551 0 0.2445918 0 0.24439856
		 0 0.24616924 0 0.24621025 0 0.2430177 0 0.24321905 0 0.24208179 0 0.24175242 0 0.24034771
		 0 0.23943606 0 0.24879041 0 0.24891421 0 0.24898073 0 0.24897042 0 0.24896005 0 0.24894956
		 0 0.24883762 0 0.24872336 0 0.24873289 0 0.24851611 0 0.2484571 0 0.24866524 0 0.24834266
		 0 0.24855241 0 0.24822208 0 0.24815866 0 0.24827281 0 0.24441263 0 0.24446067 0 0.24432197
		 0 0.2443274 0 0.24473599 0 0.24475053 0 0.24142864 0 0.2416065 0 0.24133489 0 0.24147573
		 0 0.2415382 0 0.24175647 0 0.24776021 0 0.24774823 0 0.24652615 0 0.24653968 0 0.2463266
		 0 0.24643001 0 0.2447271 0 0.24448797 0 0.24556676 0 0.24649748 0 0.24740371 0 0.24622378
		 0 0.25070539 0 0.25096354 0 0.25172099 0 0.25132874 0 0.25236508 0 0.25151977 0 0.25044724
		 0 0.250186 0 0.25133744 0 0.25101152 0 0.25199249 0 0.25173774 0 0.25154832 0 0.2507917;
	setAttr ".uvtk[1000:1249]" 0 0.24989775 0 -0.26137769 0 -0.26210275 0 0.24999389
		 0 0.25071892 0 0.25148574 0 -0.26061091 0 -0.26068139 0 -0.26100704 0 -0.26128414
		 0 -0.26053837 0 -0.2603243 0 -0.26005977 0 -0.26019871 0 -0.26044297 0 -0.25983652
		 0 -0.2596103 0 0.24923024 0 0.24936351 0 0.2503145 0 0.24993148 0 0.24913731 0 0.24904051
		 0 0.24997607 0 0.25004205 0 0.2511014 0 0.25123921 0 0.2502667 0 0.24885538 0 0.24965116
		 0 0.2493746 0 0.24968013 0 0.24406734 0 0.24289033 0 0.2427828 0 0.24410257 0 0.24441549
		 0 0.24423346 0 0.24443737 0 0.24464187 0 0.24441323 0 0.24425754 0 0.24442491 0 0.24445233
		 0 0.24429283 0 0.24401024 0 0.244032 0 0.24250898 0 0.24243072 0 0.24106297 0 0.24091867
		 0 0.24407682 0 0.242641 0 0.24128827 0 0.24116811 0 0.24117514 0 0.24102178 0 0.24104539
		 0 0.24098888 0 0.24108121 0 0.24116758 0 0.24117431 0 0.24102113 0 0.24104485 0 0.24116656
		 0 0.24117735 0 0.24102041 0 0.24104407 0 0.24118158 0 0.24080172 0 0.24062511 0 0.2410433
		 0 0.2385309 0 0.2395207 0 0.23946401 0 0.23970625 0 0.24133483 0 0.24081597 0 0.24108383
		 0 0.24085483 0 0.24062499 0 0.24140075 0 0.24134865 0 0.24140021 0 0.24134812 0 0.24141559
		 0 0.24134728 0 0.24134174 0 0.24099687 0 0.24104711 0 0.24141094 0 -0.26171076 0
		 -0.2603648 0 -0.26020464 0 -0.26158464 0 -0.25933862 0 -0.25952998 0 -0.25906691
		 0 -0.25885174 0 -0.26357457 0 -0.26545399 0 -0.26070878 0 -0.26197064 0 -0.25985551
		 0 -0.25933674 0 -0.25888205 0 0.25324884 0 0.25323012 0 0.24091288 0 0.24451014 0
		 0.24453047 0 0.24453154 0 0.24450645 0 0.24447748 0 0.24805889 0 0.24805972 0 0.24811164
		 0 0.24816498 0 0.24834916 0 0.24827299 0 0.24843851 0 0.24852058 0 0.24858788 0 0.24850395
		 0 0.24036238 0 0.24058464 0 0.24073014 0 0.24003765 0 -0.25851035 0 -0.25845474 0
		 -0.25873744 0 -0.25867024 0 -0.25891593 0 -0.25897354 0 -0.259206 0 -0.25916362 0
		 -0.25938511 0 -0.25942206 0 -0.25964278 0 -0.25960627 0 -0.25985292 0 -0.25988907
		 0 -0.26006138 0 -0.26008382 0 -0.26210207 0 -0.26137698 0 -0.26061019 0 -0.26306647
		 0 -0.26352093 0 -0.26438907 0 -0.2673443 0 -0.2657958 0 -0.26863766 0 -0.26964349
		 0 -0.27162591 0 -0.27235174 0 -0.27315283 0 -0.27390519 0 -0.27361548 0 -0.27458933
		 0 -0.27418733 0 -0.27590209 0 -0.27523851 0 -0.27634713 0 0.24868646 0 0.24873623
		 0 0.24840263 0 0.24854162 0 0.24837044 0 0.25340024 0 0.25301036 0 0.25326809 0 0.2535592
		 0 0.25274685 0 0.2531071 0 0.25278506 0 0.25225136 0 0.25253943 0 0.25232211 0 0.25208476
		 0 0.25189951 0 -0.26025841 0 0.25183818 0 -0.26019263 0 -0.26025769 0 -0.25975376
		 0 -0.25999892 0 -0.25931713 0 -0.25953439 0 -0.25883618 0 -0.25907829 0 -0.25860918
		 0 0.24082473 0 0.24094543 0 0.24116954 0 0.24157831 0 0.24119827 0 0.24095383 0 -0.27034944
		 0 0.2417278 0 -0.27076027 0 0.24130258 0 -0.27072558 0 -0.2703293 0 0.24954095 0
		 0.24946371 0 -0.27090234 0 0.24115571 0 0.24100772 0 0.2409685 0 0.24087915 0 0.24106649
		 0 0.24070278 0 0.24066046 0 0.2405155 0 0.24047324 0 -0.27160028 0 -0.27141303 0
		 0.24087676 0 0.24068955 0 -0.2713891 0 -0.27157634 0 -0.27149057 0 -0.2713033 0 -0.27090076
		 0 -0.27086282 0 -0.271088 0 -0.27105004 0 -0.27109408 0 -0.2712813 0 0.24922225 0
		 0.24915823 0 0.24940327 0 0.24933854 0 -0.26274034 0 -0.26291993 0 0.24968788 0 0.24945262
		 0 0.2498689 0 0.24963382 0 -0.26232997 0 0.24976674 0 0.24994686 0 0.2499471 0 -0.26281697
		 0 -0.26260495 0 -0.26263881 0 -0.26242703 0 -0.26221982 0 -0.26239794;
	setAttr ".uvtk[1250:1499]" 0 -0.26290059 0 -0.26272184 0 -0.26232937 0 -0.26215062
		 0 0.23963025 0 0.23966941 0 -0.27335173 0 0.23870644 0 -0.27388477 0 0.23817727 0
		 0.23809448 0 0.23861739 0 0.23954102 0 0.23913518 0 0.23917744 0 0.23825434 0 0.23821208
		 0 0.23775199 0 0.23771098 0 0.23773161 0 -0.27386147 0 -0.27293831 0 0.23935136 0
		 0.23842797 0 0.2379162 0 -0.27291441 0 -0.27383763 0 -0.27434474 0 -0.27426523 0
		 -0.27375203 0 -0.27282867 0 -0.27238834 0 -0.27242631 0 -0.27335024 0 -0.2733123
		 0 -0.2738862 0 -0.27384922 0 -0.27261949 0 -0.27354318 0 -0.27406865 0 -0.27350417
		 0 0.23856917 0 -0.27219117 0 0.2398971 0 0.23985705 0 0.23850468 0 0.23822275 0 0.23818514
		 0 0.23965475 0 0.23962167 0 0.23962191 0 -0.27390015 0 0.23835924 0 0.23975477 0
		 -0.27388811 0 -0.27247494 0 -0.27243704 0 -0.27382648 0 -0.27351433 0 -0.27348 0
		 -0.27221304 0 -0.27218217 0 -0.27366585 0 -0.27232388 0 -0.26992697 0 0.24217638
		 0 -0.26717418 0 0.24494419 0 0.24495217 0 0.24216047 0 0.24203643 0 0.24200752 0
		 0.24490538 0 0.24488029 0 0.24485716 0 -0.2701011 0 0.24210069 0 0.24493429 0 -0.27011257
		 0 -0.26726332 0 -0.26727214 0 -0.27009815 0 -0.26996088 0 -0.26993313 0 -0.26722026
		 0 -0.26719549 0 -0.27003172 0 -0.26725182 0 -0.26439542 0 0.24773785 0 -0.26231453
		 0 0.24982372 0 0.2498751 0 0.24776956 0 0.24779877 0 0.24777755 0 0.25000015 0 0.24999252
		 0 0.24995437 0 -0.26435444 0 0.24779293 0 0.24994752 0 -0.26438954 0 -0.26218131
		 0 -0.26223242 0 -0.26442143 0 -0.26445371 0 -0.26443177 0 -0.26236483 0 -0.26235589
		 0 -0.26444653 0 -0.26230863 0 -0.26165539 0 0.25046799 0 -0.26167977 0 0.25042322
		 0 0.25049189 0 0.25053111 0 0.25079271 0 0.25081798 0 0.25087717 0 0.25093511 0 0.25092664
		 0 -0.26130393 0 0.25066826 0 0.25068632 0 -0.2613287 0 -0.26117924 0 -0.26124862
		 0 -0.26139167 0 -0.26165721 0 -0.26168171 0 -0.26162687 0 -0.26168549 0 -0.26153085
		 0 -0.26143953 0 0.25031599 0 0.25038436 0 0.25051185 0 0.25044212 0 -0.26164934 0
		 -0.26176935 0 0.25061324 0 0.25084409 0 0.25095394 0 0.25073275 0 0.25091806 0 0.25091365
		 0 -0.26107642 0 0.25102505 0 -0.26146874 0 -0.26167899 0 -0.2615698 0 -0.261361 0
		 -0.26115268 0 -0.26126045 0 -0.26175719 0 -0.26164338 0 -0.26118806 0 -0.26108053
		 0 0.2500774 0 0.2521418 0 0.25139019 0 0.25202289 0 0.252404 0 0.25172833 0 0.25064149
		 0 0.25276366 0 0.25201657 0 0.2399691 0 0.23992679 0 -0.27214664 0 -0.27212271 0
		 -0.27203691 0 -0.27182767 0 -0.27163437 0 -0.2715964 0 0.24046132 0 0.2404221 0 0.24033287
		 0 0.24014315 0 0.24990276 0 0.24983636 0 -0.26224491 0 -0.2622287 0 -0.2621474 0
		 -0.26193619 0 -0.26172841 0 -0.26165748 0 0.2504423 0 0.25044492 0 0.25036839 0 0.25013384
		 0 0.24773625 0 0.24651262 0 0.245289 0 0.24530402 0 0.24531904 0 -0.26165494 0 -0.26118365
		 0 -0.26215038 0 0.23995063 0 0.23915896 0 0.24049702 0 0.25102088 0 -0.26117069 0
		 0.25079337 0 -0.2621429 0 0.24774274 0 -0.26724002 0 0.24199614 0 -0.2724753 0 0.23819706
		 0 -0.2743656 0 0.23823574 0 0.24976733 0 0.24999461 0 0.24068418 0 -0.27164695 0
		 0.23973325 0 -0.27315646 0 0.25071958 0 0.25148639 0 0.23574933 0 -0.27651578 0 0.23619911
		 0 0.2368767 0 0.23751184 0 0.23790917 0 0.2381914 0 0.23848107 0 0.25183895 0 0.25201276
		 0 0.25224367 0 0.25249025 0 0.25271145 0 0.25294158 0 0.25321522 0 0.2534782 0 0.25367644
		 0 0.25375941 0 -0.26165494 0 0.25091365 0 -0.26215038 0 0.23995063 0 -0.27293831
		 0 0.24049702 0 0.25102088 0 0.25092664 0 0.25079337;
	setAttr ".uvtk[1500:1587]" 0 0.24995437 0 0.24774274 0 0.24485722 0 0.24199614
		 0 0.23962191 0 0.23819706 0 0.23773161 0 0.23823574 0 0.24976733 0 -0.26210275 0
		 0.24068418 0 0.24045023 0 0.23973325 0 0.23894081 0 0.25071958 0 0.25148639 0 0.23574933
		 0 -0.27589813 0 0.2368767 0 -0.27458537 0 0.23790917 0 -0.2739059 0 0.23848107 0
		 0.25183895 0 -0.26008454 0 0.25224367 0 -0.25960699 0 0.25271145 0 -0.25915569 0
		 0.25321522 0 -0.25861907 0 0.25367644 0 0.24985233 0 0.25032797 0 0.2493569 0 -0.27163595
		 0 -0.27242786 0 -0.27108958 0 0.2504479 0 0.2504175 0 0.25044194 0 0.24978271 0 0.24770179
		 0 0.24492303 0 0.2421703 0 0.2399061 0 0.23859313 0 0.23821244 0 0.23874554 0 0.24917743
		 0 -0.26308355 0 0.24119487 0 0.24133697 0 0.2485663 0 -0.26439211 0 0.24174783 0
		 0.24244818 0 0.2434589 0 0.24475226 0 0.24630085 0 0.24985233 0 -0.26176935 0 0.2493569
		 0 -0.27163595 0 0.23966941 0 -0.27108958 0 0.2504479 0 -0.26167977 0 0.25044194 0
		 -0.26231453 0 0.24770179 0 -0.26717418 0 0.2421703 0 -0.27219117 0 0.23859313 0 -0.27388477
		 0 0.23874554 0 0.24917743 0 0.24901381 0 0.24119487 0 -0.27076027 0 0.2485663 0 0.24770513
		 0 0.24174783 0 -0.26964909 0 0.2434589 0 -0.26734501 0 0.24630085;
createNode aiMatte -n "aiMatte1";
	rename -uid "F597292D-4D5D-D37F-58D7-578EDD99A183";
createNode shadingEngine -n "aiMatte1SG";
	rename -uid "F63B3AD7-420F-7709-361C-D09E4FDE2F57";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "29F80CDA-42EC-2AD7-F107-878AC4399CB7";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "12868332-4E0F-ECD4-7CB5-1A8F10670E28";
	setAttr ".version" -type "string" "3.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "79022FEF-4258-CC78-9B6B-879915FA2B34";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "24867D2D-4413-F795-5B96-AA8B46A73123";
	setAttr ".color_management" 1;
	setAttr ".ai_translator" -type "string" "jpeg";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5E91CCA9-4718-6D92-E7B0-CE8752C1190C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode file -n "file1";
	rename -uid "6082279C-4838-D34A-F50F-748B9CA206B4";
	setAttr ".ftn" -type "string" "D:/模型/急速制作/口罩03/uv.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "D168D943-4613-62B2-7207-519746C943F7";
createNode materialInfo -n "sky_and_ground:blue:blue:materialInfo2";
	rename -uid "18BE9DB1-49DA-5CBB-0CD7-839C3A124E33";
createNode shadingEngine -n "sky_and_ground:blue:blue:lambert2SG";
	rename -uid "50C7EB92-4169-00C4-AD5D-2490077656EC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "sky_and_ground:blue:blue:lambert2";
	rename -uid "0435F27A-44F5-699A-BDCD-7292A2AAF094";
	setAttr ".c" -type "float3" 0.26899999 0.72443736 1 ;
createNode materialInfo -n "sky_and_ground:materialInfo1";
	rename -uid "C39D9161-42DB-A8E9-E70B-D7AC32E6578F";
createNode shadingEngine -n "sky_and_ground:lambert2SG";
	rename -uid "CBBDBDC8-46F9-C569-423F-0F876D5138FF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "sky_and_ground:lambert2";
	rename -uid "0BBA4D2D-44B5-7254-9132-8BB956C7F2D0";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "549AA959-4208-8B0A-7CC2-9896C15D73AE";
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -34500.456541130101 -47044.72080322171 ;
	setAttr ".tgi[0].vh" -type "double2" 29642.402035431667 17526.709211490805 ;
	setAttr -s 158 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 12215.7138671875;
	setAttr ".tgi[0].ni[0].y" 4057.142822265625;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" 6072.85693359375;
	setAttr ".tgi[0].ni[1].y" 932.85711669921875;
	setAttr ".tgi[0].ni[1].nvs" 1922;
	setAttr ".tgi[0].ni[2].x" 2858.571533203125;
	setAttr ".tgi[0].ni[2].y" -13495.7138671875;
	setAttr ".tgi[0].ni[2].nvs" 1922;
	setAttr ".tgi[0].ni[3].x" 13751.4287109375;
	setAttr ".tgi[0].ni[3].y" 3765.71435546875;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" 12687.142578125;
	setAttr ".tgi[0].ni[4].y" -12580;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" -2834.28564453125;
	setAttr ".tgi[0].ni[5].y" -3617.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" 1772.857177734375;
	setAttr ".tgi[0].ni[6].y" -1871.4285888671875;
	setAttr ".tgi[0].ni[6].nvs" 1922;
	setAttr ".tgi[0].ni[7].x" 13137.142578125;
	setAttr ".tgi[0].ni[7].y" 3977.142822265625;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" 2387.142822265625;
	setAttr ".tgi[0].ni[8].y" -1554.2857666015625;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" 8080;
	setAttr ".tgi[0].ni[9].y" -12484.2861328125;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" -4370;
	setAttr ".tgi[0].ni[10].y" -4357.14306640625;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" 14058.5712890625;
	setAttr ".tgi[0].ni[11].y" 3660;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" -16348.5712890625;
	setAttr ".tgi[0].ni[12].y" -10950;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" -5598.5712890625;
	setAttr ".tgi[0].ni[13].y" -5071.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 4230;
	setAttr ".tgi[0].ni[14].y" -734.28570556640625;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" -8362.857421875;
	setAttr ".tgi[0].ni[15].y" -6977.14306640625;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" 5458.5712890625;
	setAttr ".tgi[0].ni[16].y" 377.14285278320313;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" -1912.857177734375;
	setAttr ".tgi[0].ni[17].y" -3300;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" -3141.428466796875;
	setAttr ".tgi[0].ni[18].y" -3722.857177734375;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 3615.71435546875;
	setAttr ".tgi[0].ni[19].y" -1051.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 12380;
	setAttr ".tgi[0].ni[20].y" -12532.857421875;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 8387.142578125;
	setAttr ".tgi[0].ni[21].y" -12384.2861328125;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" -12970;
	setAttr ".tgi[0].ni[22].y" -9600;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" -18805.71484375;
	setAttr ".tgi[0].ni[23].y" -11955.7138671875;
	setAttr ".tgi[0].ni[23].nvs" 1922;
	setAttr ".tgi[0].ni[24].x" 4844.28564453125;
	setAttr ".tgi[0].ni[24].y" -178.57142639160156;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[0].ni[25].x" -7748.5712890625;
	setAttr ".tgi[0].ni[25].y" -6791.4287109375;
	setAttr ".tgi[0].ni[25].nvs" 1922;
	setAttr ".tgi[0].ni[26].x" -16655.71484375;
	setAttr ".tgi[0].ni[26].y" -11108.5712890625;
	setAttr ".tgi[0].ni[26].nvs" 1922;
	setAttr ".tgi[0].ni[27].x" 7465.71435546875;
	setAttr ".tgi[0].ni[27].y" -12584.2861328125;
	setAttr ".tgi[0].ni[27].nvs" 1922;
	setAttr ".tgi[0].ni[28].x" 9144.2861328125;
	setAttr ".tgi[0].ni[28].y" 3210;
	setAttr ".tgi[0].ni[28].nvs" 1922;
	setAttr ".tgi[0].ni[29].x" -4677.14306640625;
	setAttr ".tgi[0].ni[29].y" -4462.85693359375;
	setAttr ".tgi[0].ni[29].nvs" 1922;
	setAttr ".tgi[0].ni[30].x" 9615.7138671875;
	setAttr ".tgi[0].ni[30].y" -12445.7138671875;
	setAttr ".tgi[0].ni[30].nvs" 1922;
	setAttr ".tgi[0].ni[31].x" 7301.4287109375;
	setAttr ".tgi[0].ni[31].y" 2044.2857666015625;
	setAttr ".tgi[0].ni[31].nvs" 1922;
	setAttr ".tgi[0].ni[32].x" 14365.7138671875;
	setAttr ".tgi[0].ni[32].y" -13398.5712890625;
	setAttr ".tgi[0].ni[32].nvs" 1922;
	setAttr ".tgi[0].ni[33].x" 5151.4287109375;
	setAttr ".tgi[0].ni[33].y" -151.42857360839844;
	setAttr ".tgi[0].ni[33].nvs" 1922;
	setAttr ".tgi[0].ni[34].x" -5291.4287109375;
	setAttr ".tgi[0].ni[34].y" -4674.28564453125;
	setAttr ".tgi[0].ni[34].nvs" 1922;
	setAttr ".tgi[0].ni[35].x" 12522.857421875;
	setAttr ".tgi[0].ni[35].y" 4082.857177734375;
	setAttr ".tgi[0].ni[35].nvs" 1922;
	setAttr ".tgi[0].ni[36].x" 11601.4287109375;
	setAttr ".tgi[0].ni[36].y" 3898.571533203125;
	setAttr ".tgi[0].ni[36].nvs" 1922;
	setAttr ".tgi[0].ni[37].x" 10844.2861328125;
	setAttr ".tgi[0].ni[37].y" -12571.4287109375;
	setAttr ".tgi[0].ni[37].nvs" 1922;
	setAttr ".tgi[0].ni[38].x" -8055.71435546875;
	setAttr ".tgi[0].ni[38].y" -6818.5712890625;
	setAttr ".tgi[0].ni[38].nvs" 1922;
	setAttr ".tgi[0].ni[39].x" -10820;
	setAttr ".tgi[0].ni[39].y" -8090;
	setAttr ".tgi[0].ni[39].nvs" 1922;
	setAttr ".tgi[0].ni[40].x" -14198.5712890625;
	setAttr ".tgi[0].ni[40].y" -10234.2861328125;
	setAttr ".tgi[0].ni[40].nvs" 1922;
	setAttr ".tgi[0].ni[41].x" 8222.857421875;
	setAttr ".tgi[0].ni[41].y" 2627.142822265625;
	setAttr ".tgi[0].ni[41].nvs" 1922;
	setAttr ".tgi[0].ni[42].x" -7134.28564453125;
	setAttr ".tgi[0].ni[42].y" -6182.85693359375;
	setAttr ".tgi[0].ni[42].nvs" 1922;
	setAttr ".tgi[0].ni[43].x" 5765.71435546875;
	setAttr ".tgi[0].ni[43].y" 404.28570556640625;
	setAttr ".tgi[0].ni[43].nvs" 1922;
	setAttr ".tgi[0].ni[44].x" -5905.71435546875;
	setAttr ".tgi[0].ni[44].y" -5468.5712890625;
	setAttr ".tgi[0].ni[44].nvs" 1922;
	setAttr ".tgi[0].ni[45].x" -14505.7138671875;
	setAttr ".tgi[0].ni[45].y" -10261.4287109375;
	setAttr ".tgi[0].ni[45].nvs" 1922;
	setAttr ".tgi[0].ni[46].x" -11127.142578125;
	setAttr ".tgi[0].ni[46].y" -8222.857421875;
	setAttr ".tgi[0].ni[46].nvs" 1922;
	setAttr ".tgi[0].ni[47].x" 14980;
	setAttr ".tgi[0].ni[47].y" -13450;
	setAttr ".tgi[0].ni[47].nvs" 1922;
	setAttr ".tgi[0].ni[48].x" -3448.571533203125;
	setAttr ".tgi[0].ni[48].y" -3881.428466796875;
	setAttr ".tgi[0].ni[48].nvs" 1922;
	setAttr ".tgi[0].ni[49].x" 14980;
	setAttr ".tgi[0].ni[49].y" 3870;
	setAttr ".tgi[0].ni[49].nvs" 1922;
	setAttr ".tgi[0].ni[50].x" 10230;
	setAttr ".tgi[0].ni[50].y" -12280;
	setAttr ".tgi[0].ni[50].nvs" 1922;
	setAttr ".tgi[0].ni[51].x" 6380;
	setAttr ".tgi[0].ni[51].y" 960;
	setAttr ".tgi[0].ni[51].nvs" 1922;
	setAttr ".tgi[0].ni[52].x" 7608.5712890625;
	setAttr ".tgi[0].ni[52].y" 2071.428466796875;
	setAttr ".tgi[0].ni[52].nvs" 1922;
	setAttr ".tgi[0].ni[53].x" -2527.142822265625;
	setAttr ".tgi[0].ni[53].y" -3511.428466796875;
	setAttr ".tgi[0].ni[53].nvs" 1922;
	setAttr ".tgi[0].ni[54].x" 15287.142578125;
	setAttr ".tgi[0].ni[54].y" 3817.142822265625;
	setAttr ".tgi[0].ni[54].nvs" 1922;
	setAttr ".tgi[0].ni[55].x" 4087.142822265625;
	setAttr ".tgi[0].ni[55].y" -13277.142578125;
	setAttr ".tgi[0].ni[55].nvs" 1922;
	setAttr ".tgi[0].ni[56].x" -377.14285278320313;
	setAttr ".tgi[0].ni[56].y" -2744.28564453125;
	setAttr ".tgi[0].ni[56].nvs" 1922;
	setAttr ".tgi[0].ni[57].x" -9898.5712890625;
	setAttr ".tgi[0].ni[57].y" -7427.14306640625;
	setAttr ".tgi[0].ni[57].nvs" 1922;
	setAttr ".tgi[0].ni[58].x" 11765.7138671875;
	setAttr ".tgi[0].ni[58].y" -12467.142578125;
	setAttr ".tgi[0].ni[58].nvs" 1922;
	setAttr ".tgi[0].ni[59].x" 9451.4287109375;
	setAttr ".tgi[0].ni[59].y" 3237.142822265625;
	setAttr ".tgi[0].ni[59].nvs" 1922;
	setAttr ".tgi[0].ni[60].x" 3165.71435546875;
	setAttr ".tgi[0].ni[60].y" -13457.142578125;
	setAttr ".tgi[0].ni[60].nvs" 1922;
	setAttr ".tgi[0].ni[61].x" 4394.28564453125;
	setAttr ".tgi[0].ni[61].y" -13257.142578125;
	setAttr ".tgi[0].ni[61].nvs" 1922;
	setAttr ".tgi[0].ni[62].x" -684.28570556640625;
	setAttr ".tgi[0].ni[62].y" -2902.857177734375;
	setAttr ".tgi[0].ni[62].nvs" 1922;
	setAttr ".tgi[0].ni[63].x" 9308.5712890625;
	setAttr ".tgi[0].ni[63].y" -12408.5712890625;
	setAttr ".tgi[0].ni[63].nvs" 1922;
	setAttr ".tgi[0].ni[64].x" 13987.142578125;
	setAttr ".tgi[0].ni[64].y" -13055.7138671875;
	setAttr ".tgi[0].ni[64].nvs" 1922;
	setAttr ".tgi[0].ni[65].x" 3308.571533203125;
	setAttr ".tgi[0].ni[65].y" -1210;
	setAttr ".tgi[0].ni[65].nvs" 1922;
	setAttr ".tgi[0].ni[66].x" 5622.85693359375;
	setAttr ".tgi[0].ni[66].y" -13008.5712890625;
	setAttr ".tgi[0].ni[66].nvs" 1922;
	setAttr ".tgi[0].ni[67].x" 6851.4287109375;
	setAttr ".tgi[0].ni[67].y" -12684.2861328125;
	setAttr ".tgi[0].ni[67].nvs" 1922;
	setAttr ".tgi[0].ni[68].x" -15120;
	setAttr ".tgi[0].ni[68].y" -10578.5712890625;
	setAttr ".tgi[0].ni[68].nvs" 1922;
	setAttr ".tgi[0].ni[69].x" -13277.142578125;
	setAttr ".tgi[0].ni[69].y" -9758.5712890625;
	setAttr ".tgi[0].ni[69].nvs" 1922;
	setAttr ".tgi[0].ni[70].x" 1158.5714111328125;
	setAttr ".tgi[0].ni[70].y" -2188.571533203125;
	setAttr ".tgi[0].ni[70].nvs" 1922;
	setAttr ".tgi[0].ni[71].x" 12072.857421875;
	setAttr ".tgi[0].ni[71].y" -12508.5712890625;
	setAttr ".tgi[0].ni[71].nvs" 1922;
	setAttr ".tgi[0].ni[72].x" 5930;
	setAttr ".tgi[0].ni[72].y" -12925.7138671875;
	setAttr ".tgi[0].ni[72].nvs" 1922;
	setAttr ".tgi[0].ni[73].x" -16962.857421875;
	setAttr ".tgi[0].ni[73].y" -11267.142578125;
	setAttr ".tgi[0].ni[73].nvs" 1922;
	setAttr ".tgi[0].ni[74].x" 5008.5712890625;
	setAttr ".tgi[0].ni[74].y" -13211.4287109375;
	setAttr ".tgi[0].ni[74].nvs" 1922;
	setAttr ".tgi[0].ni[75].x" 237.14285278320313;
	setAttr ".tgi[0].ni[75].y" -2427.142822265625;
	setAttr ".tgi[0].ni[75].nvs" 1922;
	setAttr ".tgi[0].ni[76].x" 15594.2861328125;
	setAttr ".tgi[0].ni[76].y" -13610;
	setAttr ".tgi[0].ni[76].nvs" 1923;
	setAttr ".tgi[0].ni[77].x" -17270;
	setAttr ".tgi[0].ni[77].y" -11425.7138671875;
	setAttr ".tgi[0].ni[77].nvs" 1922;
	setAttr ".tgi[0].ni[78].x" 6687.14306640625;
	setAttr ".tgi[0].ni[78].y" 1488.5714111328125;
	setAttr ".tgi[0].ni[78].nvs" 1922;
	setAttr ".tgi[0].ni[79].x" 851.4285888671875;
	setAttr ".tgi[0].ni[79].y" -2215.71435546875;
	setAttr ".tgi[0].ni[79].nvs" 1922;
	setAttr ".tgi[0].ni[80].x" 3001.428466796875;
	setAttr ".tgi[0].ni[80].y" -1368.5714111328125;
	setAttr ".tgi[0].ni[80].nvs" 1922;
	setAttr ".tgi[0].ni[81].x" -9284.2861328125;
	setAttr ".tgi[0].ni[81].y" -7294.28564453125;
	setAttr ".tgi[0].ni[81].nvs" 1922;
	setAttr ".tgi[0].ni[82].x" -12662.857421875;
	setAttr ".tgi[0].ni[82].y" -9071.4287109375;
	setAttr ".tgi[0].ni[82].nvs" 1922;
	setAttr ".tgi[0].ni[83].x" 9001.4287109375;
	setAttr ".tgi[0].ni[83].y" -12377.142578125;
	setAttr ".tgi[0].ni[83].nvs" 1922;
	setAttr ".tgi[0].ni[84].x" -13584.2861328125;
	setAttr ".tgi[0].ni[84].y" -9917.142578125;
	setAttr ".tgi[0].ni[84].nvs" 1922;
	setAttr ".tgi[0].ni[85].x" -17577.142578125;
	setAttr ".tgi[0].ni[85].y" -11584.2861328125;
	setAttr ".tgi[0].ni[85].nvs" 1922;
	setAttr ".tgi[0].ni[86].x" -9591.4287109375;
	setAttr ".tgi[0].ni[86].y" -7400;
	setAttr ".tgi[0].ni[86].nvs" 1922;
	setAttr ".tgi[0].ni[87].x" 9758.5712890625;
	setAttr ".tgi[0].ni[87].y" 3342.857177734375;
	setAttr ".tgi[0].ni[87].nvs" 1922;
	setAttr ".tgi[0].ni[88].x" -70;
	setAttr ".tgi[0].ni[88].y" -2585.71435546875;
	setAttr ".tgi[0].ni[88].nvs" 1922;
	setAttr ".tgi[0].ni[89].x" 11458.5712890625;
	setAttr ".tgi[0].ni[89].y" -12420;
	setAttr ".tgi[0].ni[89].nvs" 1922;
	setAttr ".tgi[0].ni[90].x" 8837.142578125;
	setAttr ".tgi[0].ni[90].y" 3182.857177734375;
	setAttr ".tgi[0].ni[90].nvs" 1922;
	setAttr ".tgi[0].ni[91].x" -1605.7142333984375;
	setAttr ".tgi[0].ni[91].y" -3194.28564453125;
	setAttr ".tgi[0].ni[91].nvs" 1922;
	setAttr ".tgi[0].ni[92].x" -15427.142578125;
	setAttr ".tgi[0].ni[92].y" -10737.142578125;
	setAttr ".tgi[0].ni[92].nvs" 1922;
	setAttr ".tgi[0].ni[93].x" 6994.28564453125;
	setAttr ".tgi[0].ni[93].y" 1515.7142333984375;
	setAttr ".tgi[0].ni[93].nvs" 1922;
	setAttr ".tgi[0].ni[94].x" -14812.857421875;
	setAttr ".tgi[0].ni[94].y" -10420;
	setAttr ".tgi[0].ni[94].nvs" 1922;
	setAttr ".tgi[0].ni[95].x" 7772.85693359375;
	setAttr ".tgi[0].ni[95].y" -12584.2861328125;
	setAttr ".tgi[0].ni[95].nvs" 1922;
	setAttr ".tgi[0].ni[96].x" -4062.857177734375;
	setAttr ".tgi[0].ni[96].y" -4198.5712890625;
	setAttr ".tgi[0].ni[96].nvs" 1922;
	setAttr ".tgi[0].ni[97].x" 10680;
	setAttr ".tgi[0].ni[97].y" 3660;
	setAttr ".tgi[0].ni[97].nvs" 1922;
	setAttr ".tgi[0].ni[98].x" -7441.4287109375;
	setAttr ".tgi[0].ni[98].y" -6288.5712890625;
	setAttr ".tgi[0].ni[98].nvs" 1922;
	setAttr ".tgi[0].ni[99].x" -2220;
	setAttr ".tgi[0].ni[99].y" -3405.71435546875;
	setAttr ".tgi[0].ni[99].nvs" 1922;
	setAttr ".tgi[0].ni[100].x" 2694.28564453125;
	setAttr ".tgi[0].ni[100].y" -1527.142822265625;
	setAttr ".tgi[0].ni[100].nvs" 1922;
	setAttr ".tgi[0].ni[101].x" 11908.5712890625;
	setAttr ".tgi[0].ni[101].y" 4057.142822265625;
	setAttr ".tgi[0].ni[101].nvs" 1922;
	setAttr ".tgi[0].ni[102].x" -991.4285888671875;
	setAttr ".tgi[0].ni[102].y" -3061.428466796875;
	setAttr ".tgi[0].ni[102].nvs" 1922;
	setAttr ".tgi[0].ni[103].x" -11434.2861328125;
	setAttr ".tgi[0].ni[103].y" -8355.7138671875;
	setAttr ".tgi[0].ni[103].nvs" 1922;
	setAttr ".tgi[0].ni[104].x" 10065.7138671875;
	setAttr ".tgi[0].ni[104].y" 3448.571533203125;
	setAttr ".tgi[0].ni[104].nvs" 1922;
	setAttr ".tgi[0].ni[105].x" 10537.142578125;
	setAttr ".tgi[0].ni[105].y" -12334.2861328125;
	setAttr ".tgi[0].ni[105].nvs" 1922;
	setAttr ".tgi[0].ni[106].x" 3780;
	setAttr ".tgi[0].ni[106].y" -13327.142578125;
	setAttr ".tgi[0].ni[106].nvs" 1922;
	setAttr ".tgi[0].ni[107].x" 12830;
	setAttr ".tgi[0].ni[107].y" 3951.428466796875;
	setAttr ".tgi[0].ni[107].nvs" 1922;
	setAttr ".tgi[0].ni[108].x" -17884.28515625;
	setAttr ".tgi[0].ni[108].y" -11611.4287109375;
	setAttr ".tgi[0].ni[108].nvs" 1922;
	setAttr ".tgi[0].ni[109].x" 4537.14306640625;
	setAttr ".tgi[0].ni[109].y" -707.14288330078125;
	setAttr ".tgi[0].ni[109].nvs" 1922;
	setAttr ".tgi[0].ni[110].x" -15734.2861328125;
	setAttr ".tgi[0].ni[110].y" -10895.7138671875;
	setAttr ".tgi[0].ni[110].nvs" 1922;
	setAttr ".tgi[0].ni[111].x" 3472.857177734375;
	setAttr ".tgi[0].ni[111].y" -13400;
	setAttr ".tgi[0].ni[111].nvs" 1922;
	setAttr ".tgi[0].ni[112].x" 9922.857421875;
	setAttr ".tgi[0].ni[112].y" -12488.5712890625;
	setAttr ".tgi[0].ni[112].nvs" 1922;
	setAttr ".tgi[0].ni[113].x" 13444.2861328125;
	setAttr ".tgi[0].ni[113].y" 3871.428466796875;
	setAttr ".tgi[0].ni[113].nvs" 1922;
	setAttr ".tgi[0].ni[114].x" 4701.4287109375;
	setAttr ".tgi[0].ni[114].y" -13242.857421875;
	setAttr ".tgi[0].ni[114].nvs" 1922;
	setAttr ".tgi[0].ni[115].x" 14672.857421875;
	setAttr ".tgi[0].ni[115].y" 3791.428466796875;
	setAttr ".tgi[0].ni[115].nvs" 1922;
	setAttr ".tgi[0].ni[116].x" 5315.71435546875;
	setAttr ".tgi[0].ni[116].y" -13121.4287109375;
	setAttr ".tgi[0].ni[116].nvs" 1922;
	setAttr ".tgi[0].ni[117].x" -8670;
	setAttr ".tgi[0].ni[117].y" -7082.85693359375;
	setAttr ".tgi[0].ni[117].nvs" 1922;
	setAttr ".tgi[0].ni[118].x" 8530;
	setAttr ".tgi[0].ni[118].y" 3155.71435546875;
	setAttr ".tgi[0].ni[118].nvs" 1922;
	setAttr ".tgi[0].ni[119].x" -18498.572265625;
	setAttr ".tgi[0].ni[119].y" -11797.142578125;
	setAttr ".tgi[0].ni[119].nvs" 1922;
	setAttr ".tgi[0].ni[120].x" -12355.7138671875;
	setAttr ".tgi[0].ni[120].y" -8912.857421875;
	setAttr ".tgi[0].ni[120].nvs" 1922;
	setAttr ".tgi[0].ni[121].x" -1298.5714111328125;
	setAttr ".tgi[0].ni[121].y" -3167.142822265625;
	setAttr ".tgi[0].ni[121].nvs" 1922;
	setAttr ".tgi[0].ni[122].x" 13301.4287109375;
	setAttr ".tgi[0].ni[122].y" -13237.142578125;
	setAttr ".tgi[0].ni[122].nvs" 1922;
	setAttr ".tgi[0].ni[123].x" -16041.4287109375;
	setAttr ".tgi[0].ni[123].y" -10922.857421875;
	setAttr ".tgi[0].ni[123].nvs" 1922;
	setAttr ".tgi[0].ni[124].x" 1465.7142333984375;
	setAttr ".tgi[0].ni[124].y" -2030;
	setAttr ".tgi[0].ni[124].nvs" 1922;
	setAttr ".tgi[0].ni[125].x" -6827.14306640625;
	setAttr ".tgi[0].ni[125].y" -6077.14306640625;
	setAttr ".tgi[0].ni[125].nvs" 1922;
	setAttr ".tgi[0].ni[126].x" 13608.5712890625;
	setAttr ".tgi[0].ni[126].y" -12484.2861328125;
	setAttr ".tgi[0].ni[126].nvs" 2722;
	setAttr ".tgi[0].ni[127].x" 11294.2861328125;
	setAttr ".tgi[0].ni[127].y" 3871.428466796875;
	setAttr ".tgi[0].ni[127].nvs" 1922;
	setAttr ".tgi[0].ni[128].x" -8977.142578125;
	setAttr ".tgi[0].ni[128].y" -7188.5712890625;
	setAttr ".tgi[0].ni[128].nvs" 1922;
	setAttr ".tgi[0].ni[129].x" 11151.4287109375;
	setAttr ".tgi[0].ni[129].y" -12444.2861328125;
	setAttr ".tgi[0].ni[129].nvs" 1922;
	setAttr ".tgi[0].ni[130].x" -3755.71435546875;
	setAttr ".tgi[0].ni[130].y" -4040;
	setAttr ".tgi[0].ni[130].nvs" 1922;
	setAttr ".tgi[0].ni[131].x" 15287.142578125;
	setAttr ".tgi[0].ni[131].y" -13604.2861328125;
	setAttr ".tgi[0].ni[131].nvs" 1922;
	setAttr ".tgi[0].ni[132].x" 6237.14306640625;
	setAttr ".tgi[0].ni[132].y" -12871.4287109375;
	setAttr ".tgi[0].ni[132].nvs" 1922;
	setAttr ".tgi[0].ni[133].x" -4984.28564453125;
	setAttr ".tgi[0].ni[133].y" -4568.5712890625;
	setAttr ".tgi[0].ni[133].nvs" 1922;
	setAttr ".tgi[0].ni[134].x" 10372.857421875;
	setAttr ".tgi[0].ni[134].y" 3554.28564453125;
	setAttr ".tgi[0].ni[134].nvs" 1922;
	setAttr ".tgi[0].ni[135].x" -10512.857421875;
	setAttr ".tgi[0].ni[135].y" -7957.14306640625;
	setAttr ".tgi[0].ni[135].nvs" 1922;
	setAttr ".tgi[0].ni[136].x" 15594.2861328125;
	setAttr ".tgi[0].ni[136].y" 3764.28564453125;
	setAttr ".tgi[0].ni[136].nvs" 1922;
	setAttr ".tgi[0].ni[137].x" 15594.2861328125;
	setAttr ".tgi[0].ni[137].y" -14625.7138671875;
	setAttr ".tgi[0].ni[137].nvs" 1923;
	setAttr ".tgi[0].ni[138].x" 2080;
	setAttr ".tgi[0].ni[138].y" -1712.857177734375;
	setAttr ".tgi[0].ni[138].nvs" 1922;
	setAttr ".tgi[0].ni[139].x" 13608.5712890625;
	setAttr ".tgi[0].ni[139].y" -13678.5712890625;
	setAttr ".tgi[0].ni[139].nvs" 1922;
	setAttr ".tgi[0].ni[140].x" 14672.857421875;
	setAttr ".tgi[0].ni[140].y" -13545.7138671875;
	setAttr ".tgi[0].ni[140].nvs" 1922;
	setAttr ".tgi[0].ni[141].x" 3922.857177734375;
	setAttr ".tgi[0].ni[141].y" -892.85711669921875;
	setAttr ".tgi[0].ni[141].nvs" 1922;
	setAttr ".tgi[0].ni[142].x" 12994.2861328125;
	setAttr ".tgi[0].ni[142].y" -12755.7138671875;
	setAttr ".tgi[0].ni[142].nvs" 1922;
	setAttr ".tgi[0].ni[143].x" -10205.7138671875;
	setAttr ".tgi[0].ni[143].y" -7930;
	setAttr ".tgi[0].ni[143].nvs" 1922;
	setAttr ".tgi[0].ni[144].x" 6544.28564453125;
	setAttr ".tgi[0].ni[144].y" -12774.2861328125;
	setAttr ".tgi[0].ni[144].nvs" 1922;
	setAttr ".tgi[0].ni[145].x" -11741.4287109375;
	setAttr ".tgi[0].ni[145].y" -8382.857421875;
	setAttr ".tgi[0].ni[145].nvs" 1922;
	setAttr ".tgi[0].ni[146].x" 14365.7138671875;
	setAttr ".tgi[0].ni[146].y" 3660;
	setAttr ".tgi[0].ni[146].nvs" 1922;
	setAttr ".tgi[0].ni[147].x" 8694.2861328125;
	setAttr ".tgi[0].ni[147].y" -12327.142578125;
	setAttr ".tgi[0].ni[147].nvs" 1922;
	setAttr ".tgi[0].ni[148].x" 7158.5712890625;
	setAttr ".tgi[0].ni[148].y" -12641.4287109375;
	setAttr ".tgi[0].ni[148].nvs" 1922;
	setAttr ".tgi[0].ni[149].x" 13987.142578125;
	setAttr ".tgi[0].ni[149].y" -13428.5712890625;
	setAttr ".tgi[0].ni[149].nvs" 2722;
	setAttr ".tgi[0].ni[150].x" 10987.142578125;
	setAttr ".tgi[0].ni[150].y" 3765.71435546875;
	setAttr ".tgi[0].ni[150].nvs" 1922;
	setAttr ".tgi[0].ni[151].x" -13891.4287109375;
	setAttr ".tgi[0].ni[151].y" -10075.7138671875;
	setAttr ".tgi[0].ni[151].nvs" 1922;
	setAttr ".tgi[0].ni[152].x" -18191.427734375;
	setAttr ".tgi[0].ni[152].y" -11770;
	setAttr ".tgi[0].ni[152].nvs" 1922;
	setAttr ".tgi[0].ni[153].x" 544.28570556640625;
	setAttr ".tgi[0].ni[153].y" -2374.28564453125;
	setAttr ".tgi[0].ni[153].nvs" 1922;
	setAttr ".tgi[0].ni[154].x" 7915.71435546875;
	setAttr ".tgi[0].ni[154].y" 2600;
	setAttr ".tgi[0].ni[154].nvs" 1922;
	setAttr ".tgi[0].ni[155].x" -6212.85693359375;
	setAttr ".tgi[0].ni[155].y" -5865.71435546875;
	setAttr ".tgi[0].ni[155].nvs" 1922;
	setAttr ".tgi[0].ni[156].x" -6520;
	setAttr ".tgi[0].ni[156].y" -5971.4287109375;
	setAttr ".tgi[0].ni[156].nvs" 1922;
	setAttr ".tgi[0].ni[157].x" -12048.5712890625;
	setAttr ".tgi[0].ni[157].y" -8410;
	setAttr ".tgi[0].ni[157].nvs" 1922;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 1 1 1 ;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "jpeg";
select -ne :defaultResolution;
	setAttr ".w" 1600;
	setAttr ".h" 1060;
	setAttr ".pa" 1;
	setAttr ".dar" 1.5094339847564697;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "|pCube1|transform1|pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube1|transform1|pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId1.id" "|pCube2|transform2|pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube2|transform2|pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupParts2.og" "|pCube1|transform1|pCubeShape1.i";
connectAttr "groupId4.id" "|pCube1|transform1|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId2.id" "|pCube2|transform2|pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyTweakUV3.out" "pCube3Shape.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCube3Shape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiMatte1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sky_and_ground:blue:blue:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sky_and_ground:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiMatte1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sky_and_ground:blue:blue:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sky_and_ground:lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplitRing3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polyTweak4.out" "polySplitRing4.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplit7.out" "polyTweak4.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyExtrudeFace1.ip";
connectAttr "|pCube2|transform2|pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polySplitRing6.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polyExtrudeEdge1.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyBridgeEdge1.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeEdge2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak6.out" "polyMergeVert1.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak6.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polySplitRing7.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeEdge3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyMergeVert5.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyBevel1.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyBevel3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "polyMergeVert9.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polyMergeVert12.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert16.mp";
connectAttr "polyTweak7.out" "polyMergeVert17.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert16.out" "polyTweak7.ip";
connectAttr "polyMergeVert17.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplitRing8.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplitRing9.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplit25.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace4.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace5.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace6.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace7.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace8.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace8.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweak17.ip";
connectAttr "polyTweak17.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyMergeVert18.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert18.out" "polyMergeVert19.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert21.out" "polyMergeVert22.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert22.out" "polyMergeVert23.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert23.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polySplitRing10.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polyMergeVert24.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert24.out" "polyMergeVert25.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert25.out" "polyMergeVert26.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyMergeVert26.mp";
connectAttr "|pCube1|transform1|pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "|pCube1|transform1|pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "|pCube2|transform2|pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "polyMergeVert26.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "polyMergeVert27.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert27.out" "polyMergeVert28.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert28.mp";
connectAttr "polyMergeVert28.out" "polyMergeVert29.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert29.mp";
connectAttr "polyMergeVert29.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyMergeVert30.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert30.mp";
connectAttr "polyMergeVert30.out" "polyMergeVert31.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert31.mp";
connectAttr "polyMergeVert31.out" "polyMergeVert32.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert32.mp";
connectAttr "polyMergeVert32.out" "polyMergeVert33.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert33.mp";
connectAttr "polyMergeVert33.out" "polyMergeVert34.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert34.mp";
connectAttr "polyMergeVert34.out" "polyMergeVert35.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert35.mp";
connectAttr "polyMergeVert35.out" "polyMergeVert36.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert36.mp";
connectAttr "polyMergeVert36.out" "polyMergeVert37.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert37.mp";
connectAttr "polyMergeVert37.out" "polyMergeVert38.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert38.mp";
connectAttr "polyMergeVert38.out" "polyMergeVert39.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert39.mp";
connectAttr "polyMergeVert39.out" "polyMergeVert40.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert40.mp";
connectAttr "polyMergeVert40.out" "polyMergeVert41.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert41.mp";
connectAttr "polyMergeVert41.out" "polyMergeVert42.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert42.mp";
connectAttr "polyMergeVert42.out" "polyMergeVert43.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert43.mp";
connectAttr "polyMergeVert43.out" "polyMergeVert44.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert44.mp";
connectAttr "polyMergeVert44.out" "polyMergeVert45.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert45.mp";
connectAttr "polyMergeVert45.out" "polyMergeVert46.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert46.mp";
connectAttr "polyMergeVert46.out" "polyMergeVert47.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert47.mp";
connectAttr "polyMergeVert47.out" "polyMergeVert48.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert48.mp";
connectAttr "polyMergeVert48.out" "polyMergeVert49.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert49.mp";
connectAttr "polyMergeVert49.out" "polyMergeVert50.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert50.mp";
connectAttr "polyMergeVert50.out" "polyMergeVert51.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert51.out" "polyMergeVert52.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert52.out" "polyMergeVert53.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert53.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polySmoothFace2.ip";
connectAttr "polySmoothFace2.out" "polyPlanarProj1.ip";
connectAttr "pCube3Shape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "pCube3Shape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "file1.oc" "aiMatte1.color";
connectAttr "aiMatte1.out" "aiMatte1SG.ss";
connectAttr "pCube3Shape.iog" "aiMatte1SG.dsm" -na;
connectAttr "aiMatte1SG.msg" "materialInfo1.sg";
connectAttr "aiMatte1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "sky_and_ground:blue:blue:lambert2SG.msg" "sky_and_ground:blue:blue:materialInfo2.sg"
		;
connectAttr "sky_and_ground:blue:blue:lambert2.msg" "sky_and_ground:blue:blue:materialInfo2.m"
		;
connectAttr "sky_and_ground:blue:blue:lambert2.oc" "sky_and_ground:blue:blue:lambert2SG.ss"
		;
connectAttr "sky_and_ground:lambert2SG.msg" "sky_and_ground:materialInfo1.sg";
connectAttr "sky_and_ground:lambert2.msg" "sky_and_ground:materialInfo1.m";
connectAttr "sky_and_ground:lambert2.oc" "sky_and_ground:lambert2SG.ss";
connectAttr "polySplit27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "polyExtrudeFace4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "polyMergeVert30.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "polyDelEdge5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "polyMapCut2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "polyMergeVert12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "polySplit20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "polyDelEdge3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "polySplit21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "polyMergeVert47.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "polyMergeVert11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "polyDelEdge6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "polySplit4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "polyBevel2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "polySplit25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "polyMergeVert4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "polyExtrudeFace3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "polyMergeVert15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "polySplit13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "polySplit23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "polyMapCut1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "polyMergeVert48.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "polySplit9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "polyCube1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "polyExtrudeFace2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "deleteComponent4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "polySplit3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "polyMergeVert45.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "polyTweak17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "polyMergeVert10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "polyMergeVert52.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "polyExtrudeFace6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "polyMergeVert27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "polyTweak11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "polyBevel3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "polyDelEdge2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "polyTweak18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "polyPlanarProj1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "polySplitRing7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "polyBridgeEdge2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "polyTweak4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "polyTweak16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "polyMergeVert5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "polyTweak12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "polyBevel1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "polySplit7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "polyBridgeEdge1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "polyMergeVert29.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "polySplit12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "polyMergeVert24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "polySmoothFace1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "polyTweak13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "polyTweak15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "polyMergeVert13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "polyMergeVert25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "polyMergeVert34.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "polySplit15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "polyExtrudeEdge2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "polyMapSew1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "deleteComponent6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "polyMergeVert31.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "polyMergeVert35.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "polySplit14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "polyMergeVert51.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "polyUnite1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "polySplitRing9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "polyMergeVert39.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "polyMergeVert43.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "polySplitRing3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "polySplit8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "polyTweak8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "polyMapSew2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "polyMergeVert40.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "polySplit2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "polyMergeVert37.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "polySplit17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "aiMatte1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "polySplit1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "polyExtrudeFace5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "polySplit18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "polySplit22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "polyMergeVert1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "polyExtrudeFace1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "polyMergeVert50.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "polySplitRing5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "polyTweak2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "polyTweak6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "polyMergeVert18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "polySplit16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "polyTweakUV1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "deleteComponent5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "polyMergeVert16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "polySplit5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "polyTweak14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "polySplit6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "polyMergeVert46.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "polySplit10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "polyMergeVert21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "polyExtrudeEdge3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "polyMergeVert14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "polyTweak9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "polySplit26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "polyMergeVert17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "deleteComponent2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "polyMergeVert19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "polySmoothFace2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "polyMergeVert33.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "deleteComponent7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "polySplitRing2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "polyTweak10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "deleteComponent1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "polyMergeVert32.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "polyMergeVert53.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "polyDelEdge4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "polyMergeVert36.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "polySplitRing11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "polyMergeVert38.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "polyMergeVert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "polyExtrudeFace8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "polySplitRing1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "polySplitRing6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "polyTweak7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "polyMapCut3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "polyTweak3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "polySplit19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "polyMergeVert6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "|pCube1|transform1|pCubeShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "polyMergeVert23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "polyMergeVert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "polyPlanarProj2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "polySplit11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "deleteComponent8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "polyMergeVert41.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "polyMergeVert9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "polyMergeVert20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "polyBridgeEdge3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "polyMergeVert26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "pCube3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "polySplitRing8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "polyTweakUV3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "polyMergeVert28.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "polySplit24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "polyTweakUV2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "deleteComponent3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "polyMergeVert42.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "polyTweak5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "polySplitRing10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "polyMergeVert49.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "polyMergeVert44.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "pCube3Shape.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "polyMergeVert22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "polySplitRing4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "polyTweak1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "polyDelEdge1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "polyExtrudeFace7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "polyMergeVert8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "polyMergeVert7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "polyExtrudeEdge1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "aiMatte1SG.pa" ":renderPartition.st" -na;
connectAttr "sky_and_ground:blue:blue:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "sky_and_ground:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "aiMatte1.msg" ":defaultShaderList1.s" -na;
connectAttr "sky_and_ground:blue:blue:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "sky_and_ground:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "|pCube2|transform2|pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube2|transform2|pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube1|transform1|pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube1|transform1|pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of kz.ma
