--
-- File generated with SQLiteStudio v3.3.3 on Fri May 27 18:29:48 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Age_Range
CREATE TABLE Age_Range (age_Range_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, age_Range VARCHAR (0, 50) NOT NULL);
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (1, '0-4');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (2, '5-9');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (3, '10-14');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (4, '15-19');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (5, '20-24');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (6, '25-29');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (7, '30-34');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (8, '35-39');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (9, '40-44');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (10, '45-49');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (11, '50-54');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (12, '55-59');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (13, '60-64');
INSERT INTO Age_Range (age_Range_ID, age_Range) VALUES (14, '65+');

-- Table: Census
CREATE TABLE Census (census_Date INTEGER PRIMARY KEY NOT NULL);
INSERT INTO Census (census_Date) VALUES (2016);

-- Table: Education_Level
CREATE TABLE Education_Level (education_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, education_Levels VARCHAR (0, 50) NOT NULL);
INSERT INTO Education_Level (education_ID, education_Levels) VALUES (1, 'Did not go to school');
INSERT INTO Education_Level (education_ID, education_Levels) VALUES (2, 'Year 8 or below');
INSERT INTO Education_Level (education_ID, education_Levels) VALUES (3, 'Year 10 equivalent');
INSERT INTO Education_Level (education_ID, education_Levels) VALUES (4, 'Year 12 equivalent');

-- Table: Employment_Type
CREATE TABLE Employment_Type (employment_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, employment_Type VARCHAR (0, 50) NOT NULL);
INSERT INTO Employment_Type (employment_ID, employment_Type) VALUES (1, 'Employed');
INSERT INTO Employment_Type (employment_ID, employment_Type) VALUES (2, 'Unemployed');
INSERT INTO Employment_Type (employment_ID, employment_Type) VALUES (3, 'Industry Sector Government');
INSERT INTO Employment_Type (employment_ID, employment_Type) VALUES (4, 'Industry Sector Private');
INSERT INTO Employment_Type (employment_ID, employment_Type) VALUES (5, 'Self Employed');
INSERT INTO Employment_Type (employment_ID, employment_Type) VALUES (6, 'Not in the labour force');

-- Table: Indigenous_Indicator
CREATE TABLE Indigenous_Indicator (indigenous_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, indigenous_Type NOT NULL);
INSERT INTO Indigenous_Indicator (indigenous_ID, indigenous_Type) VALUES (1, 'Indigenous');
INSERT INTO Indigenous_Indicator (indigenous_ID, indigenous_Type) VALUES (2, 'Non-Indigenous');
INSERT INTO Indigenous_Indicator (indigenous_ID, indigenous_Type) VALUES (3, 'Not-Stated');

-- Table: Labour_Force
CREATE TABLE Labour_Force (census_Date INTEGER REFERENCES Census (census_Date) NOT NULL, LGA_Code INTEGER REFERENCES LGA (LGA_Code) NOT NULL, employment_ID INTEGER REFERENCES Employment_Type (employment_ID) NOT NULL, sex_ID INTEGER REFERENCES Sex_Indicator (sex_ID) NOT NULL, indigenous_ID INTEGER REFERENCES Indigenous_Indicator (indigenous_ID) NOT NULL, census_Count INTEGER NOT NULL, PRIMARY KEY (census_Date, LGA_Code, employment_ID, sex_ID, indigenous_ID));

-- Table: LGA
CREATE TABLE LGA (LGA_Code INTEGER NOT NULL PRIMARY KEY, LGA_Name VARCHAR (0, 50) NOT NULL, LGA_Type CHAR (1) NOT NULL, area_Sqkm DOUBLE NOT NULL, latitude DOUBLE NOT NULL, longitude DOUBLE NOT NULL);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10050, 'Albury', 'C', 305.9459, -36.0266039017982, 146.970424199197);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10130, 'Armidale Regional', 'A', 8620.699, -30.3363489725885, 151.829149941183);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10250, 'Ballina', 'A', 484.9389, -28.8528863578047, 153.486147368123);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10300, 'Balranald', 'A', 21690.6753, -33.9503516677003, 143.611625420586);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10470, 'Bathurst Regional', 'A', 3817.8646, -33.4301388515708, 149.525633684636);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10550, 'Bega Valley', 'A', 6278.8811, -36.8259429950977, 149.717569542281);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10600, 'Bellingen', 'A', 1600.4337, -30.4038023387787, 152.728590656099);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10650, 'Berrigan', 'A', 2065.7759, -35.7343271972344, 145.711216060331);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10750, 'Blacktown', 'C', 240.0487, -33.7413284067382, 150.864351096278);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10800, 'Bland', 'A', 8557.6535, -33.8943438041235, 146.961267234132);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10850, 'Blayney', 'A', 1524.647, -33.5943303815937, 149.142058802575);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10900, 'Blue Mountains', 'C', 1431.1442, -33.6975443675222, 150.411141218289);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (10950, 'Bogan', 'A', 14599.8996, -31.5381290579306, 146.86687276313);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11100, 'Botany Bay', 'C', 21.6826, -33.9423189154455, 151.201597033182);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11150, 'Bourke', 'A', 41599.5072, -29.910562208394, 145.356833702681);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11200, 'Brewarrina', 'A', 19163.4798, -29.791525276476, 146.960880578988);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11250, 'Broken Hill', 'C', 170.1153, -31.9440357155433, 141.479267922677);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11300, 'Burwood', 'A', 7.1281, -33.8836862220319, 151.103152006286);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11350, 'Byron', 'A', 565.8029, -28.6041665972678, 153.482505248129);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11400, 'Cabonne', 'A', 6022.3498, -33.1529977139002, 148.754101000612);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11450, 'Camden', 'A', 201.0281, -34.0087822720984, 150.724023028584);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11500, 'Campbelltown (NSW)', 'C', 311.9111, -34.0833447192874, 150.845772904447);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11520, 'Canada Bay', 'A', 19.9233, -33.8534983160843, 151.114825218656);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11570, 'Canterbury-Bankstown', 'A', 110.2368, -33.9235077154864, 151.037320281152);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11600, 'Carrathool', 'A', 18932.4603, -33.6088972115026, 145.496452004299);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11650, 'Central Coast (NSW)', 'C', 1681.0695, -33.3079897580864, 151.285487621674);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11700, 'Central Darling', 'A', 53492.1931, -31.850698052602, 143.589691657052);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11720, 'Cessnock', 'C', 1965.1589, -32.9250681423123, 151.224899917817);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11730, 'Clarence Valley', 'A', 10428.6803, -29.6817380805877, 152.75115199511);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11750, 'Cobar', 'A', 45579.3299, -31.8680999232438, 145.482928982653);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (11800, 'Coffs Harbour', 'C', 1173.7437, -30.1890386353587, 153.039834566091);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12000, 'Coolamon', 'A', 2430.9037, -34.6325315456399, 147.104832893264);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12150, 'Coonamble', 'A', 9916.0536, -30.8705486085172, 148.291607056647);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12350, 'Cowra', 'A', 2808.7822, -33.796383306286, 148.717950332449);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12380, 'Cumberland', 'A', 71.5511, -33.8425578975761, 150.987629376656);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12700, 'Dungog', 'A', 2249.9983, -32.3495605186885, 151.608287307212);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12730, 'Edward River', 'A', 8883.4464, -35.1725444455628, 144.941471918073);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12750, 'Eurobodalla', 'A', 3428.1695, -35.9451565075518, 149.947049392371);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12850, 'Fairfield', 'C', 101.507, -33.8656344117246, 150.895416742359);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12870, 'Federation', 'A', 5685.0486, -35.4970717827027, 146.271364517791);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12900, 'Forbes', 'A', 4710.128, -33.4216316876871, 147.867201975751);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12930, 'Georges River', 'A', 38.3459, -33.9710383092559, 151.086364158471);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (12950, 'Gilgandra', 'A', 4831.5057, -31.6190266229697, 148.690733971271);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13010, 'Glen Innes Severn', 'A', 5479.977, -29.6449864013168, 151.903042450252);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13310, 'Goulburn Mulwaree', 'A', 3220.0796, -34.8760395597892, 149.813491415937);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13340, 'Greater Hume Shire', 'A', 5749.5185, -35.7502779147131, 147.171838057668);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13450, 'Griffith', 'C', 1639.1728, -34.3004104667895, 146.003587894655);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13510, 'Gundagai', 'A', 3981.4173, -34.852975133469, 148.094119577387);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13550, 'Gunnedah', 'A', 4987.0295, -31.0465456807204, 150.18888966606);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13660, 'Gwydir', 'A', 9259.6542, -29.5934810509109, 150.516809464249);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13800, 'Hawkesbury', 'C', 2775.1377, -33.3347788438713, 150.773241984249);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13850, 'Hay', 'A', 11325.9324, -34.3158621050907, 144.683699982892);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (13910, 'Hilltops', 'A', 7140.8863, -34.3520099086826, 148.50095747126);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14000, 'Hornsby', 'A', 455.0375, -33.5839304411795, 151.08941419988);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14100, 'Hunters Hill', 'A', 5.7169, -33.8333518368712, 151.145128970035);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14170, 'Inner West', 'A', 35.3713, -33.8915043892314, 151.154974029126);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14200, 'Inverell', 'A', 8597.2081, -29.3598590360527, 151.067609862537);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14300, 'Junee', 'A', 2030.0222, -34.8172067449732, 147.668876657587);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14350, 'Kempsey', 'A', 3375.6707, -30.9515465960926, 152.644733120417);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14400, 'Kiama', 'A', 257.6636, -34.678870651303, 150.756224255936);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14500, 'Ku-ring-gai', 'A', 85.4096, -33.734610203596, 151.150908266203);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14550, 'Kyogle', 'A', 3584.1644, -28.6177955477717, 152.775580557802);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14600, 'Lachlan', 'A', 14964.2752, -32.9200319625348, 146.989872885443);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14650, 'Lake Macquarie', 'C', 648.6398, -33.0388570974722, 151.530182064595);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14700, 'Lane Cove', 'A', 10.4794, -33.8199935112887, 151.166895320844);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14750, 'Leeton', 'A', 1167.1877, -34.5323700191338, 146.302082360423);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14850, 'Lismore', 'C', 1287.7043, -28.7561746992589, 153.270655514155);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14870, 'Lithgow', 'C', 4512.2563, -33.2776747461926, 150.178956077666);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14900, 'Liverpool', 'C', 305.7396, -33.9359710533241, 150.825207041957);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14920, 'Liverpool Plains', 'A', 5082.2397, -31.550619794146, 150.438416185432);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (14950, 'Lockhart', 'A', 2895.8049, -35.3312729771643, 146.775438042017);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15050, 'Maitland', 'C', 391.5087, -32.7108137361844, 151.549755674095);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15240, 'Mid-Coast', 'A', 10053.2455, -32.0153345001658, 152.095718819417);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15270, 'Mid-Western Regional', 'A', 8752.259, -32.5938105669244, 149.742420533698);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15300, 'Moree Plains', 'A', 17906.5241, -29.2528769854383, 149.628945715668);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15350, 'Mosman', 'A', 8.6503, -33.8290817020986, 151.244635124295);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15520, 'Murray River', 'A', 11863.4771, -35.3247214116583, 144.21163622401);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15560, 'Murrumbidgee', 'A', 6882.8151, -34.9496010298842, 145.729223523658);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15650, 'Muswellbrook', 'A', 3404.884, -32.4399244044523, 150.630295812426);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15700, 'Nambucca', 'A', 1491.3432, -30.6875566475471, 152.76893790774);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15750, 'Narrabri', 'A', 13014.9937, -30.3564913904336, 149.564883987916);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15800, 'Narrandera', 'A', 4116.3459, -34.611259560802, 146.579682177179);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15850, 'Narromine', 'A', 5261.5165, -32.2260891185136, 148.065554990333);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15900, 'Newcastle', 'C', 186.7549, -32.8800575650558, 151.695707180151);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15950, 'North Sydney', 'A', 10.4857, -33.8329519012126, 151.211872804505);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (15990, 'Northern Beaches', 'A', 254.2074, -33.6902367197696, 151.249670335106);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16100, 'Oberon', 'A', 3625.047, -33.8832914107424, 149.811400783344);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16150, 'Orange', 'C', 284.2157, -33.3246615236955, 149.120373717734);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16200, 'Parkes', 'A', 5957.6138, -32.8810113709442, 147.96142279362);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16260, 'Parramatta', 'C', 83.8294, -33.7993428713948, 151.029307705889);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16350, 'Penrith', 'C', 404.7016, -33.7653722932978, 150.718070539434);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16380, 'Port Macquarie-Hastings', 'A', 3683.0099, -31.4098109828775, 152.531244728211);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16400, 'Port Stephens', 'A', 858.4357, -32.7217951569538, 151.84472212177);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16490, 'Queanbeyan-Palerang Regional', 'A', 5318.8822, -35.4227563716321, 149.627178622703);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16550, 'Randwick', 'C', 36.3311, -33.9432389300209, 151.240209525598);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16610, 'Richmond Valley', 'A', 3047.3748, -29.0596273275036, 153.046281555676);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16650, 'Rockdale', 'C', 28.2078, -33.954861935736, 151.139874894421);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16700, 'Ryde', 'C', 40.4748, -33.7991387792799, 151.11056233977);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16900, 'Shellharbour', 'C', 147.4211, -34.5826923391042, 150.773868469451);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (16950, 'Shoalhaven', 'C', 4566.6795, -35.0944182289312, 150.373286148567);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17000, 'Singleton', 'A', 4892.717, -32.6603784839469, 150.964533041922);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17040, 'Snowy Monaro Regional', 'A', 15163.5461, -36.3964539743987, 148.95891075369);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17080, 'Snowy Valleys', 'A', 8959.0028, -35.7337845577876, 148.249190611267);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17100, 'Strathfield', 'A', 14.0009, -33.8804257414824, 151.076437134872);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17150, 'Sutherland Shire', 'A', 333.5933, -34.0751375332548, 151.051012714492);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17200, 'Sydney', 'C', 26.7429, -33.8893632697121, 151.202740125362);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17310, 'Tamworth Regional', 'A', 9884.3506, -30.8925169642468, 150.90705809202);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17350, 'Temora', 'A', 2802.016, -34.3879395885553, 147.483656334562);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17400, 'Tenterfield', 'A', 7322.793, -28.9438380025703, 152.086432207035);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17420, 'The Hills Shire', 'A', 386.1588, -33.5882605423306, 150.962034088489);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17550, 'Tweed', 'A', 1307.6562, -28.3600007011733, 153.356268337148);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17620, 'Upper Hunter Shire', 'A', 8096.0892, -31.9692552706776, 150.726521345289);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17640, 'Upper Lachlan Shire', 'A', 7127.3957, -34.4177223283691, 149.455669527553);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17650, 'Uralla', 'A', 3226.5327, -30.5076755938932, 151.312329170867);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17750, 'Wagga Wagga', 'C', 4824.4889, -35.1966166824654, 147.366350920225);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17850, 'Walcha', 'A', 6261.0242, -31.1639019919892, 151.784528676146);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17900, 'Walgett', 'A', 22308.3848, -29.8166591119328, 148.19445520686);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (17950, 'Warren', 'A', 10753.7673, -31.3256528242568, 147.679843985489);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18020, 'Warrumbungle Shire', 'A', 12372.1201, -31.4628068110029, 149.405392530858);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18050, 'Waverley', 'A', 9.3507, -33.890050950219, 151.266846053922);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18100, 'Weddin', 'A', 3414.8566, -33.8719133205907, 148.011243306394);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18200, 'Wentworth', 'A', 26256.2398, -33.5702112482881, 142.242880139846);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18230, 'Western Plains Regional', 'A', 7534.5251, -32.4247166509382, 148.854410836199);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18250, 'Willoughby', 'C', 22.4258, -33.8010983996038, 151.196370544646);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18350, 'Wingecarribee', 'A', 2689.3413, -34.4769368940031, 150.356259089791);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18400, 'Wollondilly', 'A', 2555.434, -34.1019409731673, 150.443795134261);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18450, 'Wollongong', 'C', 683.986, -34.368793386416, 150.837116165182);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18500, 'Woollahra', 'A', 12.2775, -33.8716749929923, 151.257392342104);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (18710, 'Yass Valley', 'A', 3995.3257, -34.9542015992106, 148.884993576603);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (19399, 'Unincorporated NSW', '', 93214.1592, -30.6547204887353, 142.215691104726);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (19499, 'No usual address (NSW)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (19799, 'Migratory - Offshore - Shipping (NSW)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20110, 'Alpine', 'S', 4788.1568, -36.8535688621369, 146.97417160321);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20260, 'Ararat', 'RC', 4211.1171, -37.4727090653347, 142.843190929919);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20570, 'Ballarat', 'C', 739.0321, -37.4928535571244, 143.781470649532);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20660, 'Banyule', 'C', 62.5402, -37.7304409744406, 145.085140869005);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20740, 'Bass Coast', 'S', 865.8095, -38.5072886170397, 145.558055656236);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20830, 'Baw Baw', 'S', 4027.6287, -37.9839991248918, 146.131502704996);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (20910, 'Bayside', 'C', 37.2111, -37.9418390628121, 145.018153946327);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21010, 'Benalla', 'RC', 2352.6397, -36.5870029657067, 146.023761584632);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21110, 'Boroondara', 'C', 60.1774, -37.8192862695021, 145.063089126425);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21180, 'Brimbank', 'C', 123.3991, -37.7475529410847, 144.803310697108);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21270, 'Buloke', 'S', 8000.4027, -35.912385550284, 143.004930294711);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21370, 'Campaspe', 'S', 4518.8582, -36.3451923046425, 144.716414003022);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21450, 'Cardinia', 'S', 1282.5678, -38.0830137873987, 145.572685322069);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21610, 'Casey', 'C', 409.4289, -38.1043501651597, 145.309010949477);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21670, 'Central Goldfields', 'S', 1532.7843, -37.0071624595942, 143.713840649393);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21750, 'Colac-Otway', 'S', 3437.4701, -38.451960911534, 143.595181767851);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21830, 'Corangamite', 'S', 4407.4921, -38.204323310009, 143.198651198392);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (21890, 'Darebin', 'C', 53.4711, -37.7334586125911, 145.014333143673);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22110, 'East Gippsland', 'S', 20940.2326, -37.3780172341318, 148.291666600353);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22170, 'Frankston', 'C', 129.598, -38.1346081954952, 145.173798811418);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22250, 'Gannawarra', 'S', 3735.3353, -35.7515815372679, 143.804232281532);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22310, 'Glen Eira', 'C', 38.6906, -37.9012058248522, 145.042602549758);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22410, 'Glenelg', 'S', 6218.5734, -37.8704985351446, 141.385728186092);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22490, 'Golden Plains', 'S', 2703.3898, -37.8820652175611, 143.842511055406);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22620, 'Greater Bendigo', 'C', 2999.9721, -36.7344411815337, 144.422645881379);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22670, 'Greater Dandenong', 'C', 129.5469, -38.0055893317123, 145.190009110283);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22750, 'Greater Geelong', 'C', 1247.9876, -38.0689586640845, 144.41716237457);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22830, 'Greater Shepparton', 'C', 2421.9093, -36.3969945396139, 145.386199129505);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22910, 'Hepburn', 'S', 1472.9844, -37.3169370531622, 144.057560498475);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (22980, 'Hindmarsh', 'S', 7524.1824, -36.0515179929649, 141.752554147706);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23110, 'Hobsons Bay', 'C', 64.2404, -37.8547206220697, 144.829757670576);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23190, 'Horsham', 'RC', 4266.769, -36.8257452381954, 142.090450099922);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23270, 'Hume', 'C', 503.8505, -37.5891822364352, 144.824534272024);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23350, 'Indigo', 'S', 2040.069, -36.2255489203402, 146.723093848237);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23430, 'Kingston (Vic.)', 'C', 91.3677, -37.9885835324675, 145.105072279395);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23670, 'Knox', 'C', 113.9115, -37.8889822511619, 145.258669678988);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23810, 'Latrobe (Vic.)', 'C', 1425.6128, -38.2745645471876, 146.438135092618);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (23940, 'Loddon', 'S', 6696.4447, -36.363905360684, 143.867142284401);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24130, 'Macedon Ranges', 'S', 1748.2837, -37.3356677243828, 144.616613598372);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24210, 'Manningham', 'C', 113.3478, -37.76159034589, 145.188560816888);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24250, 'Mansfield', 'S', 3843.8535, -37.2004270613764, 146.206835736427);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24330, 'Maribyrnong', 'C', 31.2254, -37.7952674106055, 144.877772285011);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24410, 'Maroondah', 'C', 61.4097, -37.8048723163203, 145.26526144554);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24600, 'Melbourne', 'C', 37.3513, -37.8104980853538, 144.943904866658);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24650, 'Melton', 'C', 527.5374, -37.6930056303138, 144.625981812414);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24780, 'Mildura', 'RC', 22082.4836, -34.8692128607202, 141.682862107427);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24850, 'Mitchell', 'S', 2862.0833, -37.1375304547696, 145.001605159477);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24900, 'Moira', 'S', 4046.3738, -36.0618919097093, 145.550358244621);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (24970, 'Monash', 'C', 81.4829, -37.8971414715134, 145.14403346465);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25060, 'Moonee Valley', 'C', 43.1386, -37.7494999245364, 144.895761666885);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25150, 'Moorabool', 'S', 2110.5504, -37.6327751348673, 144.215650368386);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25250, 'Moreland', 'C', 50.9519, -37.7299185573606, 144.94888799552);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25340, 'Mornington Peninsula', 'S', 724.1679, -38.3416873355635, 145.035331715767);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25430, 'Mount Alexander', 'S', 1529.6184, -37.0507902440722, 144.192936695525);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25490, 'Moyne', 'S', 5481.6861, -38.1224542848781, 142.490035667656);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25620, 'Murrindindi', 'S', 3879.7505, -37.310981038653, 145.630105347086);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25710, 'Nillumbik', 'S', 432.3373, -37.6229146283487, 145.236804345363);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25810, 'Northern Grampians', 'S', 5729.8764, -36.8446289978077, 142.919642992208);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25900, 'Port Phillip', 'C', 20.7092, -37.8518157856685, 144.965797239279);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (25990, 'Pyrenees', 'S', 3434.5689, -37.3164579369996, 143.375041082557);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26080, 'Queenscliffe', 'B', 8.6166, -38.2642802963496, 144.647715397738);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26170, 'South Gippsland', 'S', 3296.3307, -38.6213771016093, 146.075991881672);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26260, 'Southern Grampians', 'S', 6654.0186, -37.5365333396719, 142.033093973155);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26350, 'Stonnington', 'C', 25.6514, -37.8579548286884, 145.033656905894);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26430, 'Strathbogie', 'S', 3303.2568, -36.7603314456278, 145.434917507404);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26490, 'Surf Coast', 'S', 1552.944, -38.3123017917381, 144.053122052627);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26610, 'Swan Hill', 'RC', 6115.3087, -35.1202053103785, 143.125455404725);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26670, 'Towong', 'S', 6674.9467, -36.354450466778, 147.598857862763);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26700, 'Wangaratta', 'RC', 3645.1095, -36.5882689170341, 146.42838546207);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26730, 'Warrnambool', 'C', 120.9488, -38.3714438509128, 142.511813875197);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26810, 'Wellington', 'S', 10817.3346, -37.8943505511399, 146.919347713138);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26890, 'West Wimmera', 'S', 9108.2042, -36.6755654279216, 141.279363332904);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (26980, 'Whitehorse', 'C', 64.28, -37.8302485079635, 145.155059915059);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (27070, 'Whittlesea', 'C', 489.6939, -37.5472124885499, 145.077692657354);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (27170, 'Wodonga', 'C', 432.6894, -36.150556056116, 146.882617396875);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (27260, 'Wyndham', 'C', 542.0949, -37.8866470002106, 144.618252383237);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (27350, 'Yarra', 'C', 19.5425, -37.802280819584, 144.99854855436);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (27450, 'Yarra Ranges', 'S', 2468.205, -37.7142763668462, 145.697036613133);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (27630, 'Yarriambiack', 'S', 7325.797, -35.990064155692, 142.419009227922);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (29399, 'Unincorporated Vic', '', 283.0142, -37.8991101166204, 145.892789945069);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (29499, 'No usual address (Vic.)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (29799, 'Migratory - Offshore - Shipping (Vic.)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30250, 'Aurukun', 'S', 7423.989, -13.6093769476454, 141.828446588356);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30300, 'Balonne', 'S', 31103.7071, -28.3158944853597, 148.116170899824);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30370, 'Banana', 'S', 28550.1626, -24.9351669102235, 149.938703508162);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30410, 'Barcaldine', 'R', 53382.6558, -23.1136870297605, 145.693420897098);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30450, 'Barcoo', 'S', 61830.0907, -25.1310696746842, 142.267461869418);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30760, 'Blackall-Tambo', 'R', 30537.2479, -24.7856303414116, 145.791255852922);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (30900, 'Boulia', 'S', 60905.7352, -22.4804645258213, 139.24645428504);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (31000, 'Brisbane', 'C', 1342.7188, -27.4378409947407, 153.039003292114);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (31750, 'Bulloo', 'S', 73723.751, -28.0213061511548, 142.594836068562);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (31820, 'Bundaberg', 'R', 6432.6598, -24.9678726294428, 152.035901177737);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (31900, 'Burdekin', 'S', 5043.9317, -19.8235827699619, 147.243105411105);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (31950, 'Burke', 'S', 39684.0526, -18.031331515209, 138.947684085282);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32080, 'Cairns', 'R', 1689.3129, -17.1601602402361, 145.819001143441);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32250, 'Carpentaria', 'S', 64121.0124, -17.4443971208353, 141.364745916653);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32260, 'Cassowary Coast', 'R', 4687.824, -17.9595513916003, 145.925972367772);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32270, 'Central Highlands (Qld)', 'R', 59834.8359, -24.0314569613989, 148.41581200034);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32310, 'Charters Towers', 'R', 68382.1643, -20.1488626673868, 145.788202927679);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32330, 'Cherbourg', 'S', 31.6002, -26.2888085448716, 151.935993030238);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32450, 'Cloncurry', 'S', 47971.2596, -20.8177044632515, 140.264762600662);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32500, 'Cook', 'S', 105719.7397, -14.2359419571573, 143.259666372576);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32600, 'Croydon', 'S', 29497.9024, -18.5540995883113, 142.216801146587);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32750, 'Diamantina', 'S', 94730.4545, -24.6302746702161, 139.731819674253);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32770, 'Doomadgee', 'S', 1827.6518, -17.5965286940304, 138.780953225433);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (32810, 'Douglas', 'S', 2427.8626, -16.2220408233204, 145.286696788868);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33100, 'Etheridge', 'S', 39199.2956, -18.5046209763477, 143.660405122765);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33200, 'Flinders (Qld)', 'S', 41199.9374, -20.9738802390634, 144.321727399116);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33220, 'Fraser Coast', 'R', 7102.9419, -25.5279832096178, 152.676755288242);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33360, 'Gladstone', 'R', 10484.2862, -24.1763231993894, 151.307030829273);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33430, 'Gold Coast', 'C', 1333.7031, -27.9805578454652, 153.318477018729);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33610, 'Goondiwindi', 'R', 19258.1008, -28.3735897716195, 150.339892733422);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33620, 'Gympie', 'R', 6883.9713, -26.1470377222367, 152.463634616249);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33800, 'Hinchinbrook', 'S', 2807.1889, -18.66189496758, 146.047608840077);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33830, 'Hope Vale', 'S', 1111.7099, -15.1677503940958, 145.191566433233);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33960, 'Ipswich', 'C', 1084.9777, -27.6644815655053, 152.666281191655);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (33980, 'Isaac', 'R', 58707.9174, -22.2381015636424, 147.891851705851);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34420, 'Kowanyama', 'S', 2555.3325, -15.3195278540358, 141.810563553767);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34530, 'Livingstone', 'S', 11757.8683, -22.7959842554917, 150.193474390912);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34570, 'Lockhart River', 'S', 3574.5183, -13.0054831802476, 143.240247122626);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34580, 'Lockyer Valley', 'R', 2269.0053, -27.6427298631332, 152.240552164086);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34590, 'Logan', 'C', 958.1322, -27.7623960850253, 153.040207026872);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34710, 'Longreach', 'R', 40572.2443, -23.7181339072582, 143.959319058183);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34770, 'Mackay', 'R', 7613.2964, -21.1390918632902, 148.804242954667);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34800, 'McKinlay', 'S', 40736.7989, -20.5339975864144, 141.586964291216);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34830, 'Mapoon', 'S', 537.1003, -12.1417617482078, 141.919804197811);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34860, 'Maranoa', 'R', 58704.3908, -26.5443438045803, 148.287386860373);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (34880, 'Mareeba', 'S', 53502.0248, -16.9849646359216, 143.955360890347);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35010, 'Moreton Bay', 'R', 2041.4746, -27.1179930579242, 152.883120098686);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35250, 'Mornington', 'S', 1247.6932, -16.6318332611905, 139.401311956461);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35300, 'Mount Isa', 'C', 43713.0221, -19.9539149862411, 138.782262359907);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35600, 'Murweh', 'S', 40699.7585, -26.1896795681079, 146.489476180839);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35670, 'Napranum', 'S', 2004.3545, -12.515767769487, 142.112438184002);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35740, 'Noosa', 'S', 869.8657, -26.3248542104059, 152.945575965065);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35760, 'North Burnett', 'R', 19669.8489, -25.3552835753853, 151.204166803311);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35780, 'Northern Peninsula Area', 'R', 1052.0676, -11.0049161896381, 142.312890213048);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35790, 'Palm Island', 'S', 71.9928, -18.7313609304384, 146.60025239512);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (35800, 'Paroo', 'S', 47612.8774, -28.0729193955807, 145.771282057209);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36070, 'Pormpuraaw', 'S', 4395.3657, -14.7194066782586, 141.807397518394);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36150, 'Quilpie', 'S', 67414.6563, -26.348829920888, 143.893438412578);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36250, 'Redland', 'C', 537.167, -27.5685984881586, 153.360842944554);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36300, 'Richmond', 'S', 26580.7478, -20.5406554565485, 142.901056895373);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36370, 'Rockhampton', 'R', 6570.2667, -23.4411435877279, 150.218420658585);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36510, 'Scenic Rim', 'R', 4251.6225, -28.0617871475761, 152.796221166494);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36580, 'Somerset', 'R', 5373.4337, -27.0089366013715, 152.425213317553);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36630, 'South Burnett', 'R', 8381.558, -26.4052208434247, 151.646925581637);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36660, 'Southern Downs', 'R', 7107.816, -28.405525146821, 151.885812453307);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36720, 'Sunshine Coast', 'R', 2253.8526, -26.6961814149962, 152.898351905845);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36820, 'Tablelands', 'R', 11281.895, -17.930640465737, 145.33097941421);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36910, 'Toowoomba', 'R', 12957.2108, -27.5819923095519, 151.533892941808);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36950, 'Torres', 'S', 883.731, -10.7311631720439, 142.41227811591);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (36960, 'Torres Strait Island', 'R', 490.031, -9.85911737381313, 142.36557135083);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37010, 'Townsville', 'C', 3730.82, -19.3908331055078, 146.711669869177);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37300, 'Weipa', 'T', 10.8218, -12.6404458581146, 141.878903785904);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37310, 'Western Downs', 'R', 37937.4546, -26.8415665748061, 150.347318745999);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37340, 'Whitsunday', 'R', 23818.8922, -20.7009410422293, 147.724696448783);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37400, 'Winton', 'S', 53813.4826, -22.539144755955, 142.42449783953);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37550, 'Woorabinda', 'S', 390.5578, -23.9439514188196, 149.525545485548);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37570, 'Wujal Wujal', 'S', 11.842, -15.9683032517927, 145.313192236696);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (37600, 'Yarrabah', 'S', 158.8381, -16.994539472662, 145.897159522751);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (39499, 'No usual address (Qld)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (39799, 'Migratory - Offshore - Shipping (Qld)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40070, 'Adelaide', 'C', 15.5733, -34.9219829749468, 138.598912602393);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40120, 'Adelaide Hills', 'DC', 794.4957, -34.8928237524515, 138.836229230564);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40220, 'Alexandrina', 'DC', 1826.8066, -35.3519139702989, 138.878352004249);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40250, 'Anangu Pitjantjatjara', 'AC', 102353.0512, -27.0776426225651, 131.205581043945);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40310, 'Barossa', 'DC', 893.5424, -34.6210643652896, 139.001682423076);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40430, 'Barunga West', 'DC', 1590.3887, -33.7989670786768, 137.956336637536);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40520, 'Berri and Barmera', 'DC', 476.1962, -34.2658544112394, 140.488905709067);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40700, 'Burnside', 'C', 27.5183, -34.9399763576143, 138.659867192825);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (40910, 'Campbelltown (SA)', 'C', 24.3486, -34.8837258146839, 138.682233645061);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41010, 'Ceduna', 'DC', 5420.3436, -32.102111701762, 133.872420301259);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41060, 'Charles Sturt', 'C', 54.7876, -34.8903650966761, 138.523611074883);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41140, 'Clare and Gilbert Valleys', 'DC', 1892.4466, -34.0039701286937, 138.735969464682);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41190, 'Cleve', 'DC', 5018.8484, -33.6503096823257, 136.284750390615);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41330, 'Coober Pedy', 'DC', 77.6795, -29.0158585533551, 134.75235293151);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41560, 'Copper Coast', 'DC', 772.9149, -33.9833927072876, 137.728958369906);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41750, 'Elliston', 'DC', 6741.9317, -33.5615531534743, 135.344607361395);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41830, 'Flinders Ranges', 'DC', 4070.4827, -32.0756239257693, 138.30119070704);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (41960, 'Franklin Harbour', 'DC', 2755.564, -33.5343031594947, 136.964407843154);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (42030, 'Gawler', 'T', 41.1379, -34.6221268080484, 138.729882005757);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (42110, 'Goyder', 'DC', 6715.1418, -33.645971179361, 139.074075180026);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (42250, 'Grant', 'DC', 1898.0143, -37.8461037076137, 140.72476870038);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (42600, 'Holdfast Bay', 'C', 13.752, -35.0011440091983, 138.521309969376);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (42750, 'Kangaroo Island', 'DC', 4400.8558, -35.8278195251668, 137.239768792064);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43080, 'Karoonda East Murray', 'DC', 4415.7959, -34.9505049856788, 140.020094931107);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43220, 'Kimba', 'DC', 5697.1076, -33.0026933195772, 136.143799316287);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43360, 'Kingston (SA)', 'DC', 3339.7952, -36.6435157475178, 140.025509567648);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43650, 'Light (RegC)', '', 1276.8453, -34.4111055919762, 138.846494283669);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43710, 'Lower Eyre Peninsula', 'DC', 4721.2875, -34.4124549282544, 135.597083030145);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43790, 'Loxton Waikerie', 'DC', 7763.9231, -34.5082287154469, 140.351624948172);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (43920, 'Mallala', 'DC', 932.4913, -34.4806220802787, 138.45467702624);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44000, 'Maralinga Tjarutja', 'AC', 102703.899, -29.3292171383412, 130.938659085952);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44060, 'Marion', 'C', 55.6407, -35.0324830293258, 138.539696274644);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44210, 'Mid Murray', 'DC', 6271.6254, -34.4502207981984, 139.461386984333);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44340, 'Mitcham', 'C', 75.5468, -35.0038756725014, 138.621750054044);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44550, 'Mount Barker', 'DC', 594.6405, -35.0858093285663, 138.875004361691);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44620, 'Mount Gambier', 'C', 33.8938, -37.8253452194529, 140.781682430021);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (44830, 'Mount Remarkable', 'DC', 3422.7733, -32.7582844410928, 138.205112846333);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45040, 'Murray Bridge', 'RC', 1831.7597, -35.159318582277, 139.301783002275);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45090, 'Naracoorte and Lucindale', 'DC', 4520.127, -36.9772553163682, 140.547353878009);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45120, 'Northern Areas', 'DC', 2986.1818, -33.2864090656029, 138.51141969284);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45290, 'Norwood Payneham St Peters', 'C', 15.1036, -34.9075738614415, 138.636449638004);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45340, 'Onkaparinga', 'C', 518.1251, -35.1786880483252, 138.568852590277);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45400, 'Orroroo/Carrieton', 'DC', 3321.8238, -32.520768988511, 138.639353794473);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45540, 'Peterborough', 'DC', 3020.142, -32.864122516322, 139.059641142362);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45680, 'Playford', 'C', 345.203, -34.6888892842668, 138.66296657611);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (45890, 'Port Adelaide Enfield', 'C', 91.7586, -34.840712005815, 138.561507662549);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46090, 'Port Augusta', 'C', 1195.5836, -32.5956469864441, 137.755166452906);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46300, 'Port Lincoln', 'C', 30.3681, -34.7292212093313, 135.851128444487);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46450, 'Port Pirie City and Dists', 'M', 1760.7097, -33.3768423160997, 138.105932343508);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46510, 'Prospect', 'C', 7.7915, -34.8839970738297, 138.597935804015);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46670, 'Renmark Paringa', 'DC', 915.8655, -34.1823545246586, 140.81402109298);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46860, 'Robe', 'DC', 1091.7162, -37.1876842031613, 139.979442439961);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (46970, 'Roxby Downs', 'M', 110.4762, -30.5543858225268, 136.88117864537);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47140, 'Salisbury', 'C', 159.8432, -34.7726589788365, 138.611299312392);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47290, 'Southern Mallee', 'DC', 5702.2095, -35.3939208196897, 140.574352099827);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47490, 'Streaky Bay', 'DC', 6222.8591, -32.708917041443, 134.564028529869);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47630, 'Tatiara', 'DC', 6527.2084, -36.2279199427824, 140.584440627155);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47700, 'Tea Tree Gully', 'C', 95.2108, -34.8051616016876, 138.71804094396);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47800, 'The Coorong', 'DC', 8833.4534, -35.7138080867503, 139.761310303393);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47910, 'Tumby Bay', 'DC', 2669.0747, -34.1793341270218, 136.019697172718);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (47980, 'Unley', 'C', 14.2703, -34.9547972005944, 138.604032290917);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48050, 'Victor Harbor', 'C', 384.6255, -35.5127898907673, 138.546161466909);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48130, 'Wakefield', 'DC', 3468.4881, -33.9914453436053, 138.356504952871);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48260, 'Walkerville', 'M', 3.53, -34.892785827232, 138.617109480068);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48340, 'Wattle Range', 'DC', 3926.3233, -37.4704053192453, 140.518876801479);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48410, 'West Torrens', 'C', 37.04, -34.9414063778955, 138.543861312049);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48540, 'Whyalla', 'C', 1071.6099, -33.0373110320911, 137.494357115996);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48640, 'Wudinna', 'DC', 5075.2783, -33.0286640903993, 135.314638392468);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48750, 'Yankalilla', 'DC', 751.2577, -35.5185922678439, 138.337093169012);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (48830, 'Yorke Peninsula', 'DC', 5899.6079, -34.6837118383375, 137.559940597923);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (49399, 'Unincorporated SA', '', 622489.1953, -29.5902252590867, 136.749613132346);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (49499, 'No usual address (SA)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (49799, 'Migratory - Offshore - Shipping (SA)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50080, 'Albany', 'C', 4310.8905, -34.7389543720479, 118.183004773222);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50210, 'Armadale', 'C', 559.5261, -32.1675319726578, 116.136978090485);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50250, 'Ashburton', 'S', 100816.1523, -22.4936763074408, 116.726257703676);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50280, 'Augusta-Margaret River', 'S', 2122.3749, -34.0308772282193, 115.227790523815);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50350, 'Bassendean', 'T', 10.3449, -31.9038475325522, 115.945221086905);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50420, 'Bayswater', 'C', 32.7699, -31.9057236002704, 115.908276627096);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50490, 'Belmont', 'C', 39.6519, -31.9563827000943, 115.94827890706);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50560, 'Beverley', 'S', 2370.5195, -32.1746644884409, 116.796579268046);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50630, 'Boddington', 'S', 1904.4791, -32.8162962995626, 116.399890123667);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50770, 'Boyup Brook', 'S', 2826.4586, -33.8917676706862, 116.524030161577);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50840, 'Bridgetown-Greenbushes', 'S', 1337.361, -34.0037809498642, 116.190990075822);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50910, 'Brookton', 'S', 1601.1532, -32.3619953246182, 117.003089157346);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (50980, 'Broome', 'S', 54371.5979, -18.671461573721, 122.463290483611);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51080, 'Broomehill-Tambellup', 'S', 2609.6585, -34.0025096716844, 117.661318555676);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51120, 'Bruce Rock', 'S', 2724.6944, -31.9525895449312, 118.028629973531);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51190, 'Bunbury', 'C', 65.4163, -33.3516465610093, 115.664394026326);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51260, 'Busselton', 'C', 1454.0505, -33.71844401075, 115.348859820577);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51310, 'Cambridge', 'T', 21.9936, -31.9362995380125, 115.786432220544);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51330, 'Canning', 'C', 64.8789, -32.036894623339, 115.916350991536);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51400, 'Capel', 'S', 557.8983, -33.5323505929175, 115.63571982297);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51470, 'Carnamah', 'S', 2870.9247, -29.7732228694989, 115.577832406193);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51540, 'Carnarvon', 'S', 46574.4709, -24.3499584848485, 114.391029150784);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51610, 'Chapman Valley', 'S', 3981.3333, -28.322376860081, 115.059126175325);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51680, 'Chittering', 'S', 1219.9032, -31.3743947174628, 116.078336166926);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51750, 'Claremont', 'T', 4.9556, -31.9801491033696, 115.779976048359);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51820, 'Cockburn', 'C', 167.8989, -32.1143092784823, 115.79295309421);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51890, 'Collie', 'S', 1709.8149, -33.2835547848008, 116.211566090753);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (51960, 'Coolgardie', 'S', 30297.6977, -31.1867854317861, 120.964462959043);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52030, 'Coorow', 'S', 4189.8791, -30.0216161596358, 115.759214167739);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52100, 'Corrigin', 'S', 2681.2709, -32.35836673143, 117.799029213633);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52170, 'Cottesloe', 'T', 3.8564, -31.9940032356975, 115.758496080462);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52240, 'Cranbrook', 'S', 3276.0491, -34.314818417038, 117.285873015503);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52310, 'Cuballing', 'S', 1195.337, -32.7354094109407, 117.159174132009);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52380, 'Cue', 'S', 13582.1956, -27.3108206509927, 117.940040807889);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52450, 'Cunderdin', 'S', 1862.4458, -31.5995814339683, 117.155719809765);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52520, 'Dalwallinu', 'S', 7224.3566, -30.1252467870635, 116.94475432472);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52590, 'Dandaragan', 'S', 6711.5721, -30.5396136893354, 115.506069993484);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52660, 'Dardanup', 'S', 525.8017, -33.4154249868973, 115.851914705629);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52730, 'Denmark', 'S', 1859.8488, -34.8904845889574, 117.118828209232);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52800, 'Derby-West Kimberley', 'S', 119761.1954, -17.7907101608205, 124.977055580568);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52870, 'Donnybrook-Balingup', 'S', 1559.8561, -33.6695530667936, 115.973538045043);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (52940, 'Dowerin', 'S', 1863.0851, -31.1076563485212, 117.111268167447);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53010, 'Dumbleyung', 'S', 2539.2249, -33.2245014533589, 117.964527429067);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53080, 'Dundas', 'S', 92885.0302, -32.0113355718678, 124.417878021572);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53150, 'East Fremantle', 'T', 3.1384, -32.0379402285634, 115.768167428391);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53220, 'East Pilbara', 'S', 372307.466, -21.7684839929619, 123.596659359709);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53290, 'Esperance', 'S', 44797.5456, -33.2219725480835, 122.250281452961);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53360, 'Exmouth', 'S', 6488.0705, -22.5217021337037, 114.167011848108);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53430, 'Fremantle', 'C', 19.0103, -32.0576472245182, 115.766560236437);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53570, 'Gingin', 'S', 3208.3585, -31.1915800014238, 115.69917406535);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53640, 'Gnowangerup', 'S', 4265.0424, -34.062135207425, 118.288742039417);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53710, 'Goomalling', 'S', 1835.4294, -31.2428409925641, 116.784747771998);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53780, 'Gosnells', 'C', 127.2975, -32.0662317830426, 115.992136777841);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53800, 'Greater Geraldton', 'C', 9909.0003, -28.561547868219, 115.497148486141);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53920, 'Halls Creek', 'S', 133061.0128, -19.2582169194368, 127.61695305418);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (53990, 'Harvey', 'S', 1727.6068, -33.10110481201, 115.912495555444);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54060, 'Irwin', 'S', 2369.3298, -29.3260419798171, 115.09181130991);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54130, 'Jerramungup', 'S', 6508.5904, -34.0704400130571, 119.101265431331);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54170, 'Joondalup', 'C', 98.9285, -31.7834926802148, 115.766703216899);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54200, 'Kalamunda', 'S', 324.2957, -32.0122450728493, 116.122763451519);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54280, 'Kalgoorlie/Boulder', 'C', 95498.052, -30.7494131444048, 125.051226658907);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54310, 'Karratha', 'C', 15239.4525, -21.0492260882868, 117.035895027343);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54340, 'Katanning', 'S', 1518.1854, -33.6483004438378, 117.684216306672);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54410, 'Kellerberrin', 'S', 1915.433, -31.582345843006, 117.814525832731);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54480, 'Kent', 'S', 5624.5818, -33.5508293504359, 118.572235517469);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54550, 'Kojonup', 'S', 2930.9926, -33.9076365913098, 117.048011838827);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54620, 'Kondinin', 'S', 7440.8016, -32.427317137483, 119.184799181634);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54690, 'Koorda', 'S', 2832.3131, -30.5904915636462, 117.425461424063);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54760, 'Kulin', 'S', 4718.9219, -32.7175201231912, 118.576106166811);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54830, 'Kwinana', 'C', 120.0121, -32.2276902022262, 115.828662037575);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54900, 'Lake Grace', 'S', 11886.3199, -33.0598971585763, 119.287528436321);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (54970, 'Laverton', 'S', 179984.601, -27.891120940985, 125.401477674999);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55040, 'Leonora', 'S', 31915.0562, -28.2123279235976, 121.145366050999);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55110, 'Mandurah', 'C', 174.8967, -32.6337959484482, 115.682924023853);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55180, 'Manjimup', 'S', 7029.6077, -34.5571401713522, 116.325678146967);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55250, 'Meekatharra', 'S', 100188.5477, -25.1401103613913, 118.864012735764);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55320, 'Melville', 'C', 52.8506, -32.0474466098712, 115.829388153899);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55390, 'Menzies', 'S', 124110.9368, -29.5751053885448, 123.970915440334);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55460, 'Merredin', 'S', 3293.7824, -31.5153277519977, 118.359348802118);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55530, 'Mingenew', 'S', 1934.8857, -29.1581991517113, 115.484249347916);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55600, 'Moora', 'S', 3763.0254, -30.4980581897333, 116.185443777013);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55670, 'Morawa', 'S', 3510.5928, -29.066919482649, 116.017087286851);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55740, 'Mosman Park', 'T', 4.3472, -32.0148043873717, 115.765545732715);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55810, 'Mount Magnet', 'S', 13858.1182, -28.2380656005614, 117.976408386355);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55880, 'Mount Marshall', 'S', 10184.5937, -30.1837661561214, 117.962177714127);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (55950, 'Mukinbudin', 'S', 3426.9441, -30.6299535380647, 118.311135785626);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56090, 'Mundaring', 'S', 643.1794, -31.8999367108402, 116.251639221041);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56160, 'Murchison', 'S', 45046.0922, -26.7518464711574, 116.299754036369);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56230, 'Murray', 'S', 1703.4688, -32.6236626608864, 115.989431583673);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56300, 'Nannup', 'S', 3053.9361, -34.1284358623806, 115.663896134458);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56370, 'Narembeen', 'S', 3809.0285, -32.047115719459, 118.653848223959);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56460, 'Narrogin', 'S', 1631.3024, -32.9953781215669, 117.262249440296);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56580, 'Nedlands', 'C', 19.9466, -31.9724000606281, 115.789948588913);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56620, 'Ngaanyatjarraku', 'S', 159821.7026, -25.0948425749581, 126.835363170331);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56730, 'Northam', 'S', 1431.2215, -31.6859473287975, 116.635996056437);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56790, 'Northampton', 'S', 12543.7142, -27.75307949166, 114.645913700727);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56860, 'Nungarin', 'S', 1166.0245, -31.14939384491, 118.20808814043);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (56930, 'Peppermint Grove', 'S', 1.0677, -31.9993332083388, 115.7671427279);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57000, 'Perenjori', 'S', 8301.3551, -29.4439405967053, 116.611416174571);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57080, 'Perth', 'C', 12.0213, -31.9576343458506, 115.850662562492);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57140, 'Pingelly', 'S', 1294.5721, -32.5199590881504, 117.222046475883);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57210, 'Plantagenet', 'S', 4876.6821, -34.5972190019849, 117.561968987611);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57280, 'Port Hedland', 'T', 18417.0777, -20.9291230610228, 118.673203522268);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57350, 'Quairading', 'S', 2016.9269, -32.0048156964804, 117.423439715323);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57420, 'Ravensthorpe', 'S', 9841.7503, -33.6161956344792, 120.138598491565);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57490, 'Rockingham', 'C', 257.497, -32.3441825286511, 115.788996800714);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57630, 'Sandstone', 'S', 32605.2911, -28.3359144298072, 119.173112705407);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57700, 'Serpentine-Jarrahdale', 'S', 901.2056, -32.3442558026208, 116.034331029869);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57770, 'Shark Bay', 'S', 24201.3839, -26.5367245036926, 114.52514194515);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57840, 'South Perth', 'C', 19.8116, -31.9978570546032, 115.870014801098);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57910, 'Stirling', 'C', 104.727, -31.8856932407319, 115.819626914288);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (57980, 'Subiaco', 'C', 6.9764, -31.9576593636313, 115.818670238887);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58050, 'Swan', 'C', 1043.2271, -31.7414237190159, 116.06742230559);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58190, 'Tammin', 'S', 1101.692, -31.6066762650235, 117.494990860776);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58260, 'Three Springs', 'S', 2656.6928, -29.5257673098207, 115.577315708568);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58330, 'Toodyay', 'S', 1691.6486, -31.4710927054306, 116.380654669015);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58400, 'Trayning', 'S', 1651.2043, -31.1440117630229, 117.806873253722);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58470, 'Upper Gascoyne', 'S', 57809.8737, -24.7265892923718, 116.355111143346);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58510, 'Victoria Park', 'T', 17.9397, -31.9797136936167, 115.90147001019);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58540, 'Victoria Plains', 'S', 2551.0132, -31.0143350258959, 116.319593936876);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58570, 'Vincent', 'C', 11.3769, -31.9312904032679, 115.852544586359);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58610, 'Wagin', 'S', 1946.1763, -33.2766935735063, 117.369929065194);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58680, 'Wandering', 'S', 1903.8645, -32.5471827807234, 116.581255084119);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58760, 'Wanneroo', 'C', 685.068, -31.6122814047644, 115.763256730668);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58820, 'Waroona', 'S', 832.2286, -32.8579523338828, 115.920095289167);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (58890, 'West Arthur', 'S', 2831.8272, -33.4571301691839, 116.739367190266);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59030, 'Westonia', 'S', 3319.4497, -30.9675768672028, 118.656247019307);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59100, 'Wickepin', 'S', 2040.8985, -32.8069647585336, 117.671761691664);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59170, 'Williams', 'S', 2304.7119, -33.0714270732556, 116.728089223699);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59250, 'Wiluna', 'S', 181297.3382, -25.3120281964936, 122.245079532476);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59310, 'Wongan-Ballidu', 'S', 3365.0675, -30.7171307773265, 116.842614215158);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59320, 'Woodanilling', 'S', 1128.8348, -33.5336658623814, 117.338062341707);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59330, 'Wyalkatchem', 'S', 1594.4885, -31.18668907093, 117.435277036076);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59340, 'Wyndham-East Kimberley', 'S', 112065.9843, -15.55897818577, 127.05167702393);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59350, 'Yalgoo', 'S', 27949.4641, -28.5651730818383, 117.05027308579);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59360, 'Yilgarn', 'S', 30428.765, -30.9573479728698, 119.341985048484);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59370, 'York', 'S', 2131.5916, -31.9263797068441, 116.735427926079);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59499, 'No usual address (WA)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (59799, 'Migratory - Offshore - Shipping (WA)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (60210, 'Break O''Day', 'M', 3523.8859, -41.4253079566417, 148.049894605736);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (60410, 'Brighton', 'M', 171.1599, -42.7193425564517, 147.260947605086);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (60610, 'Burnie', 'C', 610.9529, -41.2160578338863, 145.806193672787);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (60810, 'Central Coast (Tas.)', 'M', 933.0892, -41.2812476807072, 146.040023349855);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (61010, 'Central Highlands (Tas.)', 'M', 7982.4155, -42.2123456189751, 146.64605834461);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (61210, 'Circular Head', 'M', 4898.011, -41.078948789854, 145.014654262156);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (61410, 'Clarence', 'C', 377.9552, -42.8370262798852, 147.434134065949);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (61510, 'Derwent Valley', 'M', 4108.1021, -42.8129698285084, 146.421355123958);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (61610, 'Devonport', 'C', 111.259, -41.2086969274122, 146.311899433532);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (61810, 'Dorset', 'M', 3230.5456, -41.0721213745254, 147.708514544917);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (62010, 'Flinders (Tas.)', 'M', 1996.6244, -40.1193670839542, 148.09784891889);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (62210, 'George Town', 'M', 653.4377, -41.1021798747895, 147.026016591849);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (62410, 'Glamorgan/Spring Bay', 'M', 2591.5618, -42.269180059913, 147.965347310874);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (62610, 'Glenorchy', 'C', 121.1483, -42.839333146404, 147.219760471438);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (62810, 'Hobart', 'C', 77.9097, -42.8978387525393, 147.287606595667);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (63010, 'Huon Valley', 'M', 5507.3541, -43.2514297080677, 146.597154815832);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (63210, 'Kentish', 'M', 1156.1887, -41.4539693095177, 146.183514492971);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (63410, 'King Island', 'M', 1095.7407, -39.8638139789043, 143.985480101713);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (63610, 'Kingborough', 'M', 720.1029, -43.1891988416465, 147.262334732365);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (63810, 'Latrobe (Tas.)', 'M', 600.4617, -41.2439831563992, 146.56002152213);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (64010, 'Launceston', 'C', 1413.6306, -41.3606342424622, 147.305814726015);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (64210, 'Meander Valley', 'M', 3330.8145, -41.6266543779393, 146.484781614844);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (64610, 'Northern Midlands', 'M', 5135.2503, -41.8401869257506, 147.460168215539);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (64810, 'Sorell', 'M', 583.6761, -42.7786570601345, 147.696128927246);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (65010, 'Southern Midlands', 'M', 2615.4934, -42.434562227359, 147.400550760362);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (65210, 'Tasman', 'M', 660.4962, -43.0546651081096, 147.834644871036);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (65410, 'Waratah/Wynyard', 'M', 3535.9075, -41.3832415525306, 145.495380736419);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (65610, 'West Coast', 'M', 9583.5388, -42.2981881375873, 145.637319009409);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (65810, 'West Tamar', 'M', 691.147, -41.2816419665381, 146.864396214389);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (69499, 'No usual address (Tas.)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (69799, 'Migratory - Offshore - Shipping (Tas.)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (70200, 'Alice Springs', 'T', 327.7133, -23.7350731335645, 133.854768624081);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (70420, 'Barkly', 'R', 322713.2188, -19.4440960424418, 135.084746207884);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (70540, 'Belyuen', 'S', 41.4054, -12.5381846330621, 130.683180527788);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (70620, 'Central Desert', 'R', 281312.0262, -21.4898365922268, 132.415299914484);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (70700, 'Coomalie', 'S', 2056.0547, -13.125752177508, 131.082854067767);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (71000, 'Darwin', 'C', 111.2725, -12.3984254582146, 130.887001957801);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (71300, 'East Arnhem', 'R', 33309.9334, -12.9332437292618, 135.745530783581);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (72200, 'Katherine', 'T', 7416.6444, -14.6901726943678, 132.19508198088);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (72300, 'Litchfield', 'M', 2903.1459, -12.5374507729503, 131.121800574637);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (72330, 'MacDonnell', 'R', 268329.3474, -24.6373016339172, 133.161508614247);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (72800, 'Palmerston', 'C', 52.6559, -12.5025194105554, 130.979176786191);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (73600, 'Roper Gulf', 'R', 185210.2475, -15.4348397033859, 134.651130976911);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (74050, 'Tiwi Islands', 'R', 7483.1661, -11.5598454600379, 130.816296139098);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (74550, 'Victoria Daly', 'R', 153287.0839, -16.249586274424, 130.658626915299);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (74560, 'Wagait', 'S', 5.6378, -12.4412354563658, 130.749704696444);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (74660, 'West Arnhem', 'R', 49675.0343, -12.5080581736812, 133.258513531361);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (74680, 'West Daly', 'R', 14069.6979, -14.2230073178362, 130.060339366444);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (79399, 'Unincorporated NT', '', 19790.0427, -13.112453526691, 131.187217053692);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (79499, 'No usual address (NT)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (79799, 'Migratory - Offshore - Shipping (NT)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (89399, 'Unincorporated ACT', '', 2358.172, -35.4887660813574, 149.002523069712);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (89499, 'No usual address (ACT)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (89799, 'Migratory - Offshore - Shipping (ACT)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (99399, 'Unincorp. Other Territories', '', 256.3162, -20.7972651817048, 128.368542906232);
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (99499, 'No usual address (OT)', '', 0.0, '', '');
INSERT INTO LGA (LGA_Code, LGA_Name, LGA_Type, area_Sqkm, latitude, longitude) VALUES (99799, 'Migratory - Offshore - Shipping (OT)', '', 0.0, '', '');

-- Table: Non_School_Education
CREATE TABLE Non_School_Education (census_Date INTEGER REFERENCES Census (census_Date) NOT NULL, LGA_Code INTEGER REFERENCES LGA (LGA_Code) NOT NULL, NS_Education_ID INTEGER REFERENCES NS_Education_Level (NS_Education_ID) NOT NULL, sex_ID INTEGER REFERENCES Sex_Indicator (sex_ID) NOT NULL, indigenous_ID INTEGER REFERENCES Indigenous_Indicator (indigenous_ID) NOT NULL, census_Count INTEGER NOT NULL, PRIMARY KEY (census_Date, LGA_Code, NS_Education_ID, sex_ID, indigenous_ID));

-- Table: NS_Education_Level
CREATE TABLE NS_Education_Level (NS_Education_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, NS_Education_Levels VARCHAR (0, 50) NOT NULL);
INSERT INTO NS_Education_Level (NS_Education_ID, NS_Education_Levels) VALUES (1, 'Certificate II');
INSERT INTO NS_Education_Level (NS_Education_ID, NS_Education_Levels) VALUES (2, 'Advanced Diploma');
INSERT INTO NS_Education_Level (NS_Education_ID, NS_Education_Levels) VALUES (3, 'Bachelor Degree');
INSERT INTO NS_Education_Level (NS_Education_ID, NS_Education_Levels) VALUES (4, 'Graduate Diploma/Graduate Certificate');
INSERT INTO NS_Education_Level (NS_Education_ID, NS_Education_Levels) VALUES (5, 'Postgraduate Degree');

-- Table: Personas
DROP TABLE Personas;
CREATE TABLE Personas (persona_Num INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name VARCHAR (0, 50) NOT NULL, description STRING NOT NULL, needs_Goals STRING NOT NULL, skills_Experience STRING NOT NULL);
INSERT INTO Personas (persona_Num, name, description, needs_Goals, skills_Experience) VALUES (1, 'Michael Dhurrkay', 'Michael is a  55 year old semi-retired father of 4. His children are aged 26, 22, 21 and  17. He still owns but does not actively manage a renewable energy company in rural Victoria. He has been married to his wife Clarissa for 29 years. Michael has recently taken an interest in helping the indigenous community in any way he can, however he doesn''t know where to start or what to focus on. This interest arose after watching a documentary about the living conditions and general quality of life that most Indigenous people experience. Michael lives in Whittlesea.', 'To see a brief overview of information about aboriginal with regards to Aboriginal quality of life.To be able to view statistics about his own local community or any specific one that he chooses.To be able to discern which are the best and worst aspects within his own community.Compare how other communities are doing.See which communities are doing the worst or best.%To become educated on the topic of aboriginal socio-economic outcomes.Use this information to help his community and the greater community if possible.To make the future a better place for his children.', 'Good interpersonal skills which have enabled him to make strong business connections.Excellent ability to delegate tasks, this has enabled him to grow his business.Very competent with web applications as this is where he does alot of research and reading. He is also an active participant on forums such as Quora and Reddit.');
INSERT INTO Personas (persona_Num, name, description, needs_Goals, skills_Experience) VALUES (2, 'Jessica Green', 'Jessica is a 20 year old University student in Melbourne who believes strongly in social-justice, anti-discrimination, human rights and equality. As a young adult she tries to keep up to date with the current state of the world so she regularly reads the news and is unhappy with the current political climate. She enjoys doing volunteer work with a few different charities and tries very hard to juggle her life/work/study balance. She ultimately wants to see faster positive change such as achieving net zero emissions, international human rights and fair opportunities as it directly impacts her future. Included with her vision of her future is the goal of closing the gap for Indigienous Australian people. ', 'Fast and reliable access to specific proportional and raw data which she can use and reference in her own material.To be able to clearly read and understand the data and statistics in an efficient manner.To clearly see an indication and statistical representation of the ''gap'' between indigenous people against non-indigenous people.To be able to quickly find data and statistics about closing the gap on certain LGA''s, States and the whole country.To find specific problems and causes of poorly performing LGA''s when it comes to ''closing the gap''.%Contribute to making progressive change in society.Use her research to shed greater light onto the significance of closing the gap through her social media.', 'Being a young Australian born and raised in a first world country and being privileged to have access to modern technology she is well versed when it comes to web browsing and applications on the internet.She likes to share her thoughts and research she has gathered on social media therefore she has great experience with tech.');


-- Table: School_Completion
CREATE TABLE School_Completion (census_Date INTEGER REFERENCES Census (census_Date) NOT NULL, LGA_Code INTEGER REFERENCES LGA (LGA_Code) NOT NULL, education_ID INTEGER REFERENCES Education_Level (education_ID) NOT NULL, sex_ID REFERENCES Sex_Indicator (sex_ID) NOT NULL, indigenous_ID INTEGER REFERENCES Indigenous_Indicator (indigenous_ID) NOT NULL, census_Count INTEGER NOT NULL, PRIMARY KEY (census_Date, LGA_Code, education_ID, sex_ID, indigenous_ID));

-- Table: Sex_Indicator
CREATE TABLE Sex_Indicator (sex_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sex_Type VARCHAR (0, 50) NOT NULL);
INSERT INTO Sex_Indicator (sex_ID, sex_Type) VALUES (1, 'Female');
INSERT INTO Sex_Indicator (sex_ID, sex_Type) VALUES (2, 'Male');

-- Table: Status_By_Age_By_Sex
CREATE TABLE Status_By_Age_By_Sex (census_Date INTEGER REFERENCES Census (census_Date) NOT NULL, LGA_Code INTEGER REFERENCES LGA (LGA_Code) NOT NULL, age_Range_ID INTEGER REFERENCES Age_Range (age_Range_ID) NOT NULL, sex_ID INTEGER REFERENCES Sex_Indicator (sex_ID) NOT NULL, indigenous_ID INTEGER NOT NULL REFERENCES Indigenous_Indicator (indigenous_ID), census_Count INTEGER NOT NULL, PRIMARY KEY (census_Date, LGA_Code, age_Range_ID, sex_ID, indigenous_ID));

-- Table: Team_Members
CREATE TABLE Team_Members (student_Num VARCHAR (0, 10) PRIMARY KEY NOT NULL, student_Name VARCHAR (0, 50) NOT NULL);
INSERT INTO Team_Members (student_Num, student_Name) VALUES ('S3945532', 'Mark Putter');
INSERT INTO Team_Members (student_Num, student_Name) VALUES ('S3944168', 'Joshua Lam');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

SELECT * FROM Sex_Indicator;
SELECT * FROM School_Completion;
SELECT * FROM Labour_Force;
SELECT * FROM Non_School_Education;
SELECT * FROM Status_By_Age_By_Sex;
SELECT * FROM LGA;

SELECT * FROM LGA ORDER BY LGA_Name ASC

SELECT * FROM LGA WHERE LGA_Name = "Albury";
SELECT * FROM LGA WHERE LGA_Name = 'fairfield';

SELECT SUM(census_Count) 
FROM Status_By_Age_By_Sex
JOIN LGA on LGA.LGA_Code = Status_By_Age_By_Sex.LGA_Code
WHERE LGA_Name = "Albury";

SELECT * FROM School_Completion
NATURAL JOIN LGA
WHERE LGA_Name = "Albury";
SELECT SUM(census_Count) as INT FROM School_Completion JOIN LGA ON School_Completion.LGA_Code = LGA.LGA_Code WHERE LOWER(LGA_Name) = "albury" and education_id = 4 and indigenous_id = 3 and sex_id = "2";

SELECT SUM(census_Count) as INT FROM Status_By_Age_By_Sex  NATURAL JOIN LGA WHERE LOWER(LGA_Name) = "albury" and indigenous_id = 3;

SELECT SUM(census_Count) as INT FROM Status_By_Age_By_Sex WHERE indigenous_id = 1 and age_Range_ID = 14;


/* queries for proportion ranking */
SELECT ((SELECT SUM(census_Count) FROM School_Completion WHERE indigenous_id = 1 AND education_id = 4 GROUP BY LGA_Code)
/ ((SELECT SUM(census_Count) FROM Status_By_Age_By_Sex WHERE indigenous_id = 1 and LGA_Code = 10050) * 1.0)) AS 'val' FROM LGA;

SELECT ((SELECT SUM(census_Count) FROM School_Completion WHERE indigenous_id = 2 and LGA_Code = 10050 AND education_id = 4)
/ ((SELECT SUM(census_Count) FROM Status_By_Age_By_Sex WHERE indigenous_id = 2 and LGA_Code = 10050) * 1.0)) AS 'val';

SELECT ((SELECT SUM(census_Count) AS sum FROM School_Completion WHERE indigenous_id = 1 AND education_id = 4 GROUP BY LGA_Code)
/((SELECT SUM(census_Count) AS divisor FROM Status_By_Age_By_Sex WHERE indigenous_id = 1 GROUP BY LGA_Code)*1.0)) AS prop;

SELECT School_Completion.LGA_Code,
(SELECT SUM(School_Completion.census_Count) FROM School_Completion WHERE indigenous_id = 1  AND education_id = 1 GROUP BY LGA_Code) AS count, 
(SELECT SUM(Status_By_Age_By_Sex.census_Count) FROM Status_By_Age_By_Sex WHERE indigenous_id = 1 GROUP BY LGA_Code) AS divisor
FROM School_Completion
WHERE indigenous_id = 1 GROUP BY LGA_Code;

SELECT * 
FROM School_Completion
where education_ID = 4
and   indigenous_ID = 1
and   LGA_Code      = 29399

SELECT * FROM Status_By_Age_By_Sex
where indigenous_ID = 1
and LGA_Code = 29399




SELECT b.LGA_Code, sum(b.census_Count) 
FROM Status_By_Age_By_Sex b 
where b.indigenous_ID = 1
group by b.LGA_Code



SELECT a.LGA_Code, LGA_Name, sum( a.census_Count ) AS Total1,  c.Qty, sum( a.census_Count ) / (c.Qty*1.0) * 100 AS PropI, g.Qty3 AS Total2, e.Qty2, g.Qty3 / (e.qty2 * 1.0) * 100 AS PropNI
FROM School_Completion a, ( SELECT b.LGA_Code as LGA_Code, sum(b.census_Count) as Qty 
                            FROM Status_By_Age_By_Sex b 
                            where b.indigenous_ID = 1
                            group by b.LGA_Code ) c, 
                          ( SELECT d.LGA_Code as LGA_Code, sum(d.census_Count) as Qty2
                            FROM Status_By_Age_By_Sex d 
                            where d.indigenous_ID = 2
                            group by d.LGA_Code ) e,
                          ( SELECT f.LGA_Code as LGA_Code, sum(f.census_Count) as Qty3
                            FROM School_Completion f 
                            where f.indigenous_ID = 2
                            AND f.education_ID = 4
                            group by f.LGA_Code ) g
NATURAL JOIN LGA
where a.education_ID  = 4
and   a.indigenous_ID = 1
and   c.LGA_Code      = a.LGA_Code 
and   a.LGA_Code      = e.LGA_Code
and   a.LGA_Code      = g.LGA_Code
group by a.LGA_Code;



SELECT a.LGA_Code, LGA_Name, sum( a.census_Count ) AS Total1,  c.Qty, sum( a.census_Count ) / (c.Qty*1.0) * 100 AS PropI, g.Qty3 AS Total2, e.Qty2, g.Qty3 / (e.qty2 * 1.0) * 100 AS PropNI
FROM Status_By_Age_By_Sex a, ( SELECT b.LGA_Code as LGA_Code, sum(b.census_Count) as Qty 
                            FROM Status_By_Age_By_Sex b 
                            where b.indigenous_ID = 1
                            group by b.LGA_Code ) c, 
                          ( SELECT d.LGA_Code as LGA_Code, sum(d.census_Count) as Qty2
                            FROM Status_By_Age_By_Sex d 
                            where d.indigenous_ID = 2
                            group by d.LGA_Code ) e,
                          ( SELECT f.LGA_Code as LGA_Code, sum(f.census_Count) as Qty3
                            FROM Status_By_Age_By_Sex f 
                            where f.indigenous_ID = 2
                            AND f.age_Range_ID = 4
                            group by f.LGA_Code ) g
NATURAL JOIN LGA
where a.age_Range_ID  = 4
and   a.indigenous_ID = 1
and   c.LGA_Code      = a.LGA_Code 
and   a.LGA_Code      = e.LGA_Code
and   a.LGA_Code      = g.LGA_Code
group by a.LGA_Code
ORDER BY a.LGA_Code DESC;

SELECT * FROM LGA;

SELECT * FROM LGA WHERE LGA_Name = "Albury";
SELECT * FROM LGA WHERE LGA_Name = "Albury";

SELECT * FROM Employment_Type;
SELECT * FROM NS_Education_Level;

SELECT * FROM Labour_Force;
SELECT * FROM Non_School_Education;







    


