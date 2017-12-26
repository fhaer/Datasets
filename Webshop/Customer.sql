-- for PostgreSQL 9
SET client_encoding = 'UTF8';

CREATE TABLE "Customer" (
    "CID" integer NOT NULL,
    "NameLine" text,
    "isCompany" boolean,
    "AddressLine1" text,
    "AddressLine2" text,
    "ZIPCode" text,
    "City" text,
    "Country" character(2)
);

COPY "Customer" ("CID", "NameLine", "isCompany", "AddressLine1", "AddressLine2", "ZIPCode", "City", "Country") FROM stdin;
470234	Tournmentone Corp	t	1200 High Ridge Road	\N	6092	Stamford CT	US
470235	Westlink Career Institute, Llc	t	1325 G Street, Nw Suite 500	\N	20001	Washington DC	US
470236	Xerox Corporation	t	100 S. Clinton Avenue Xrx2-40A	\N	14604	Rochester NY	US
470237	Mclean Bus Company	t	7905 Marlboro Pike	\N	20747	Forestville MD	US
470238	Medstar Health, Inc	t	5565 Sterrett Place, 5Th Floor	\N	21044	Columbia MD	US
470239	Mattie Poquette	f	73 State Road 434 E	\N	99654	Phoenix AZ	US
470240	District Of Columbia Agencies	t	4200 Connecticut Avenue, Nw Cashiers Office Bldg. 39 # 201	\N	20001	Washington DC	US
470241	Skf	t	Åkergatan 24	\N	S-844 67	Bräcke	SE
470242	Ricoh	t	2-2-8 Roppongi	\N	106-0032	Minato-Ku	JP
470243	Dustin Construction, Inc.	t	2510 Urbana Pike, Suite 201	\N	21754	Ijamsville MD	US
470244	Tac Transport Llc	t	80 R Street, Sw	\N	20001	Washington DC	US
470245	Potomac Creek Assoc Lp	t	955 L'Enfant Plaza Sw North Building, Suite 1208	\N	20001	Washington DC	US
470246	Catholic University Of America	t	620 Michigan Avenue, Ne	\N	20001	Washington DC	US
470247	African Translation Llc	t	1250 Connecticut Ave. Nw Suite 200	\N	20001	Washington DC	US
470248	Bernardo Figeroa	f	386 9th Ave N	\N	2703	Conroe TX	US
470249	Mee Productions	t	340 N 12Th Street 5Th Floor	\N	16106	Philadelphia PA	US
470250	United General Contractor	t	606 B Rhode Island Avenue, Ne	\N	20001	Washington DC	US
470251	Schneider Electric Buildings	t	23 Tsawassen Blvd.	\N	T2F 8M4	Tsawassen	CA
470252	Powellhouse Project, Inc.	t	2634 12Th Street Ne	\N	20001	Washington DC	US
470253	Tiffiny Steffensmeier	f	32860 Sierra Rd	\N	33055	Miami FL	US
470254	Harvey W Hottel Inc	t	18900 Woodfield Road	\N	20877	Gaithersburg MD	US
470255	Softech, Inc	t	7184 Collingwood Court	\N	21075	Elkridge MD	US
470256	Infinity Radio Dba/Wlzl Radio	t	4200 Parliament Place, #300 # 300	\N	20706	Lanham MD	US
470257	Apple Computer Inc	t	1 Infinite Loop	\N	95014	Cupertino CA	US
470258	Yug, Inc.	t	111 South Wacker Drive	\N	60602	Chicago IL	US
470259	Ernie Stenseth	f	45 E Liberty St	\N	99655	Ridgefield Park NJ	US
470260	Appletree Early Learning Pcs	t	415 Michigan Avenue, Ne 3Rd Floor	\N	20001	Washington DC	US
470261	Maryann Royster	f	74 S Westgate St	\N	605	Albany NY	US
470262	Raytheon Company	t	362 Lowell Street	\N	1810	Andover MA	US
470263	Data Net Systems Corp	t	1201 - 15Th Street Nw Suite 210	\N	20001	Washington DC	US
470264	Different Roads To Learning	t	37 East 18Th St 10Th Fl	\N	10001	New York NY	US
470265	Zamano	t	8 Johnstown Road	\N	\N	Cork	IE
470266	Jose Stockham	f	128 Bransten Rd	\N	42261	New York NY	US
470267	Meeder Consulting Group, Llc	t	6713 Groveleigh Drive	\N	21044	Columbia MD	US
470268	Psi Services, Inc	t	7101 Wisconsin Ave Suite 1400	\N	20814	Bethesda MD	US
470269	Talent Education Arts And Ment	t	409 Rittenhouse St Nw	\N	20001	Washington DC	US
470270	Cengage Learning	t	5191 Natorp Blvd	\N	45040	Mason OH	US
470271	Lucas Holdings, Llc	t	4900 N Santa Fe Ave	\N	73107	Okc OK	US
470272	Powell Manufacturing Industries	t	258 35Th Street Ne	\N	20001	Washington DC	US
470273	Arent Fox Kintner Plotkin	t	1050 Connecticut Avenue, Nw	\N	20001	Washington DC	US
470274	Meridian Public Charter School	t	1328 Florida Avenue, Nw	\N	20001	Washington DC	US
470275	Corp.For Supportive Housing	t	50 Broadway, 17Th Floor	\N	10001	New York NY	US
470276	Fortum	t	Torikatu 38	\N	90110	Oulu	FI
470277	Cecily Hollack	f	59 N Groesbeck Hwy	\N	614	Austin TX	US
470278	Ubi Banca	t	Via Monte Bianco 34	\N	10100	Torino	IT
470279	Curaxys	t	Rambla De Cataluña, 23	\N	8022	Barcelona	ES
470280	Vtb	t	2 Pobedy Square	\N	196143	Saint Petersburg	RU
470281	Rosio Cork	f	4 10th St W	\N	2718	High Point NC	US
470282	Myra Munns	f	461 Prospect Pl #316	\N	2718	Euless TX	US
470283	Ace-Federal Reporter Inc	t	1120 G Street Nw Suite 500	\N	20001	Washington DC	US
470284	Roy Juarez, Jr	t	11439 Remsen Street	\N	78201	San Antonio TX	US
470285	Hercules Fence Md.	t	8580 Mission Road	\N	20794	Jessup MD	US
470286	Elly Morocco	f	7 W 32nd St	\N	2718	Erie PA	US
470287	Scantron Corporation	t	2020 South 158Th Circle	\N	68022	Omaha NE	US
470288	Howard University Hospital	t	2041 Georgia Avenue, Nw Suite 2078	\N	20001	Washington DC	US
470289	Art Venere	f	8 W Cerritos Ave #54	\N	2703	Bridgeport NJ	US
470290	Aspial Corporation	t	Suntec Tower Three	8 Temasek	38988	Singapore	SG
470291	Meketa Investment Group	t	100 Lowder Brook Drive Suite 1100	\N	2090	Westwood MA	US
470292	Advanced Medical Waste Soluti	t	8716 Damascus Rd.	\N	20872	Damascus MD	US
470293	Bernard W Moffett	t	1430 Independence Ave Se	\N	20001	Washington DC	US
470294	Roxane Campain	f	1048 Main St	\N	2718	Fairbanks AK	US
470295	Jennifer Munson	t	12305 Sour Cherry Way	\N	20878	North Potomac MD	US
470296	Dc Arts & Humanities Education	t	1835 14Th Street, Nw	\N	20001	Washington DC	US
470297	National Housing Corporation	t	820 H Street N.E.	\N	20001	Washington DC	US
470298	Crow Canyon Systems Inc.	t	565 Lori Drive #71 #71	\N	94510	Benicia CA	US
470299	Saic, Inc.	t	1710 Saic Drive Mail Stop 365	\N	22101	Mclean VA	US
470300	Matthews Mem. Baptist Church	t	2616 Martin L. King Jr Ave Se	\N	20001	Washington DC	US
470301	American Assn. Of State Highwa	t	444 North Capitol St Nw	\N	20001	Washington DC	US
470302	Selectron Technologies, Inc	t	7405 Sw Tech Center Dr. Ste 140	\N	97201	Portland OR	US
470303	Scantron Corporation	t	2020 South 158Th Circle	\N	68022	Omaha NE	US
470304	Nia Community Pcs	t	Fauntleroy Circus	\N	EC2 5NT	Manchester	GB
470305	Emsl Analytical, Inc.	t	107 Haddon Avenue	\N	8108	Westmont NJ	US
470306	Andromeda Transcultural	t	162-164 Grafton Road	Level 2	\N	Auckland  	NZ
470307	Margie Monroe Dba/3-L Bus	t	112 56Th Place Se	\N	20001	Washington DC	US
470308	United Medical Center Foundati	t	1310 Southern Avenue, S.E.	\N	20001	Washington DC	US
470309	Agrium Advanced Technologies	t	2915 Rocky Mountain Avenue Suite 400	\N	80537	Loveland CO	US
470310	Lettie Isenhower	f	70 W Main St	\N	617	Beachwood OH	US
470311	Dc Scores	t	1224 M Street Nw, #200	\N	20001	Washington DC	US
470312	Pro-Typists Inc	t	3235 P Street, N.W.	\N	20001	Washington DC	US
470313	M1 Limited	t	Bronz Sok.	Bronz Apt. 3/6 Tesvikiye	79903	Singapore	SG
470314	Willow Kusko	f	90991 Thorburn Ave	\N	42261	New York NY	US
470315	Tl Garden & Assoc/Life Saftey	t	7170 Gary Rd	\N	20109	Manassas VA	US
470316	Hancock Software Inc	t	28 Gilleonard Lane	\N	1701	Framingham MA	US
470317	Minna Amigon	f	2371 Jerrold Ave	\N	2718	Kulpsville PA	US
470318	Wilda Giguere	f	1747 Calle Amanecer #2	\N	610	Anchorage AK	US
470319	American Express Company	t	2975 W Corporate Lakes Blvd Cpc Remittance Processing	\N	33326	Weston FL	US
470320	CBA	t	1003 K Street, N.W. Suite 700	\N	20001	Washington DC	US
470321	Language,Etc...	t	2200 California St Nw	\N	20001	Washington DC	US
470322	Wilson Energy Economics	t	4800 Hampden Lane - Suite 200	\N	20814	Bethesda MD	US
470323	Alpine Trading Co Inc.	t	400 Overpeck Ave	\N	7631	Englewood NJ	US
470324	School Improvement Network	t	8686 South 1300 East	\N	84070	Sandy UT	US
470325	Ch2M Hill, D.C., P.C.	t	101 Lambton Quay	Level 11	\N	Wellington	NZ
470326	Bobbye Rhym	f	30 W 80th St #1995	\N	99657	San Carlos CA	US
470327	Marjory Mastella	f	71 San Mateo Ave	\N	99950	Wayne PA	US
470328	Hackett & Family Catering	t	129 Varnum Street N W	\N	20001	Washington DC	US
470329	Ici Systems	t	1150 17Th Street Nw Suite 100	\N	20001	Washington DC	US
470330	Xerox Corporation	t	100 S. Clinton Avenue Xrx2-40A	\N	14604	Rochester NY	US
470331	Melanie Byrd Chisholm	t	1829 Bruce Place, Se	\N	20001	Washington DC	US
470332	Q-Matic Corporation	t	95 Underwood Road	\N	28732	Fletcher NC	US
470333	Young Playwrights Theatre	t	2437 15Th St Nw	\N	20001	Washington DC	US
470334	Dynamix Corporation	t	9111 Edmonston Road, Suite 100 Suite 100	\N	20770	Greenbelt MD	US
470335	Stephaine Barfield	f	47154 Whipple Ave Nw	\N	2718	Gardena CA	US
470336	The Gale Group	t	27500 Drake Road	\N	48331	Farmington Hills MI	US
470337	Norix Group Inc	t	1000 Atlantic Drive	\N	60185	West Chicago IL	US
470338	Yuki Whobrey	f	1 State Route 27	\N	99950	Taylor MI	US
470339	Freeway Construction Llc	t	1325 18Th Street, Nw Suite 103	\N	20001	Washington DC	US
470340	Alta Bicycle Share, Inc.	t	711 Se Grand Avenue	\N	97201	Portland OR	US
470341	R.S.C.R. - Wv Inc.	t	1 Dunbar Plaza, Ste 100 P.O. Box 484	\N	25064	Dunbar WV	US
470342	Hi-Tech Solution, Inc.	t	1300 Pennsylania Ave, Nw Suite 700	\N	20001	Washington DC	US
470343	Supretech, Inc.	t	7600 Georgia Avenue, Nw #Ll	\N	20001	Washington DC	US
470344	Qas, Ltd.	t	125 Summer Street Suite 1910	\N	2108	Boston MA	US
470345	Elvera Benimadho	f	99385 Charity St #840	\N	99657	San Jose CA	US
470346	Delmy Ahle	f	65895 S 16th St	\N	99654	Providence RI	US
470347	Washington Literacy Council	t	1918 18Th Street Nw Suite B2	\N	20001	Washington DC	US
470348	Criswell Cheverolet, Inc.	t	503 Quince Orchard Road	\N	20877	Gaithersburg MD	US
470349	Deaf Reach	t	3521 12Th Street Ne	\N	20001	Washington DC	US
470350	Mellmo Inc.	t	2002 Jimmy Durante Blvd., #124	\N	92014	Del Mar CA	US
470351	Ngen Llc	t	1101 Merchantile Lane Suite 100	\N	20774	Largo MD	US
470352	Novo Nordisk	t	Smagsloget 45	\N	8200	Århus	DK
470353	Brentworks, Inc.	t	1776 Eye Street Nw 9Th Floor	\N	20001	Washington DC	US
470354	Willard Kolmetz	f	618 W Yakima Ave	\N	2718	Irving TX	US
470355	Centronia, Inc.	t	1420 Columbia Road Nw Muticultural Learning Center	\N	20001	Washington DC	US
470356	Erick Ferencz	f	20 S Babcock St	\N	2718	Fairbanks AK	US
470357	Kallie Blackwood	f	701 S Harrison Rd	\N	99657	San Francisco CA	US
470358	Keystone Plus Construction Cor	t	1600 K Street, N.W. Suite 350	\N	20001	Washington DC	US
470359	Tsi Group, Llc	t	1230 23Rd Street Nw, Suite 601	\N	20001	Washington DC	US
470360	Restl Designers Inc	t	702 Russell Avenue Suite 400	\N	20877	Gaithersburg MD	US
470361	Mary'S Ctr Maternal Child Care	t	2333 Ontario Rd Nw	\N	20001	Washington DC	US
470362	Solange Shinko	f	426 Wolf St	\N	3253	Metairie LA	US
470363	Red Jenkins Ltd	t	5404 Southport Lane	\N	22030	Fairfax VA	US
470364	Cammy Albares	f	56 E Morehead St	\N	2718	Laredo TX	US
470365	Vested Optimum Community Ser.	t	8775 M Centre Park Dr. No. 515	\N	21044	Columbia MD	US
470366	Bell Techlogix	t	8888 Keystone Crossing Suite 1700	\N	46201	Indianapolis IN	US
470367	Padula Construction Co Inc	t	1445 Pennsylvania Avenue S.E.	\N	20001	Washington DC	US
470368	Capitol Process Services, Inc.	t	1827 18Th St. Nw	\N	20001	Washington DC	US
470369	Center City Pcs	t	7 New York Ave Suite 300	\N	20001	Washington DC	US
470370	Mentis Technology Solutions	t	2231 South Poplar St	\N	80123	Denver CO	US
470371	American Arbitration Assoc.	t	335 Madison Ave 10 Floor	\N	10001	New York NY	US
470372	Nelva Hernandez	t	3114 Collard Street	\N	22301	Alexandria VA	US
470373	Oriental Trading Company Inc.	t	4206 South 108Th Street	\N	68022	Omaha NE	US
470374	Sports4Kids	t	517 4Th Street	\N	93601	Oakland CA	US
470375	Amtek Company, Inc.	t	1244 Ritchie Hwy, Suite 10	\N	21012	Arnold MD	US
470376	Danske Bank	t	Vinbæltet 34	\N	1734	Kobenhavn	DK
470377	Hdr Engineering Inc.	t	8404 Indian Hills Drive	\N	68022	Omaha NE	US
470378	Micaela Rhymes	f	20932 Hedley St	\N	2703	Concord CA	US
470379	Donte Kines	f	3 Aspen St	\N	99950	Worcester MA	US
470380	Margni, Inc.	t	603 Gallatin Street, Nw	\N	20001	Washington DC	US
470381	Louisa Cronauer	f	524 Louisiana Ave Nw	\N	99657	San Leandro CA	US
470382	Community Connections	t	801 Pennsylvania Ave., Se Suite 201	\N	20001	Washington DC	US
470383	Michael Robert Kronen	t	15420 Good Hope Road	\N	20901	Silver Spring MD	US
470384	Francine Vocelka	f	366 South Dr	\N	2718	Las Cruces NM	US
470385	Dc Choices, Llc	t	4701 N. Keystone Ave,Suite 150	\N	46201	Indianapolis IN	US
470386	Proforma Docucom Services Llc	t	46 Lanoche Court	\N	14221	Williamsville NY	US
470387	Jhp, Inc	t	1526 Pennsylvania Ave., Se	\N	20001	Washington DC	US
470388	Alishia Sergi	f	2742 Distribution Way	\N	42261	New York NY	US
470389	Vidal	t	C/ Romero, 33	\N	41101	Sevilla	ES
470390	Blondell Pugh	f	201 Hawk Ct	\N	99654	Providence RI	US
470391	Vallie Mondella	f	74 W College St	\N	617	Boise ID	US
470392	Maria Graciela Steiger	t	9516 Reach Road	\N	20854	Potomac MD	US
470393	Good Technologies,Inc.	t	4250 Burton Drive	\N	95050	Santa Clara CA	US
470394	Liberty Healthcare Corp.	t	401 E City Avenue #820	\N	19004	Bala Cynwyd PA	US
470395	General Services, Inc.	t	3613 Georgia Avenue, Nw	\N	20001	Washington DC	US
470396	Amy Jacques Garvey Institute, Inc.	t	4243 Lane Place, Ne	\N	20001	Washington DC	US
470397	Harvey W Hottel Inc	t	18900 Woodfield Road	\N	20877	Gaithersburg MD	US
470398	Adoptions Together Inc	t	10230 New Hampshire Ave #200	\N	20901	Silver Spring MD	US
470399	Andræ Løkke	f	18 Fountain St	\N	610	Anchorage AK	US
470400	Mentors, Inc.	t	1012 14Th Street, Nw Suite 304	\N	20001	Washington DC	US
470401	Carolyn Abbott	t	10261 Quiet Pond Terrace	\N	20115	Burke VA	US
470402	P & D Inc. (Skyland Liquors)	t	2126 Minnesota Avenue Se	\N	20001	Washington DC	US
470403	Mercer Human Resource Consulti	t	462 South Fourth Street Suite 1100	\N	40202	Louisville KY	US
470404	Bedd Group Llc	t	1744 Taylor Street Nw	\N	20001	Washington DC	US
470405	Timothy Mulqueen	f	44 W 4th St	\N	99950	Staten Island NY	US
470406	Digi Docs Inc Document Mgers	t	510 Florida Ave Nw	\N	20001	Washington DC	US
470407	Cmts Dc Llc	t	1101 15Th Street Nw, Ste 206	\N	20001	Washington DC	US
470408	Mercia D. Bowser	t	1827 Good Hope Road Se Suite A-4	\N	20001	Washington DC	US
470409	Tammara Wardrip	f	4800 Black Horse Pike	\N	2703	Burlingame CA	US
470410	District Supply Inc.	t	7702 Georgia Avenue, Nw Suite 200	\N	20001	Washington DC	US
470411	Sage Wieser	f	5 Boston Ave #88	\N	99950	Sioux Falls SD	US
470412	Malinda Hochard	f	55 Riverside Ave	\N	2718	Indianapolis IN	US
470413	Kiley Caldarera	f	25 E 75th St #69	\N	3251	Los Angeles CA	US
470414	Chanel Caudy	f	86 Nw 66th St #8673	\N	99665	Shawnee KS	US
470415	General Merchandise Supplies	t	2221 Adams Place, N.E.	\N	20001	Washington DC	US
470416	Historic Dupont Circle Mainstr	t	9 Dupont Circle Nw	\N	20001	Washington DC	US
470417	Marcus Gore	t	2541 34Th Street., S.E.	\N	20001	Washington DC	US
470418	Carma Vanheusen	f	68556 Central Hwy	\N	99657	San Leandro CA	US
470419	Holder Enterprises, Inc.	t	1949 Vermont Street Nw	\N	20001	Washington DC	US
470420	Viva Toelkes	f	4284 Dorigo Ln	\N	2703	Chicago IL	US
470421	Cadd Microsystems, Inc.	t	6359 Walker Lane, Suite 110	\N	22301	Alexandria VA	US
470422	North Capitol Partners,Inc	t	1935 U Place Se	\N	20001	Washington DC	US
470423	Tawna Buvens	f	3305 Nabell Ave #679	\N	42261	New York NY	US
470424	Arlette Honeywell	f	11279 Loytan St	\N	2718	Jacksonville FL	US
470425	Middleton &  Meads Company, In	t	1900 S Hanover Street	\N	21128	Baltimore MD	US
470426	Chajana Denharder	t	3800 14Th St., Nw,	\N	20001	Washington DC	US
470427	Kappa Youth Development, Inc.	t	1250 Connecticut Avenue, Nw Suite 200	\N	20001	Washington DC	US
470428	Digital Gap Solutions Inc.	t	10 G Street Ne, Suite 710	\N	20001	Washington DC	US
470429	Hess Construction Co. Inc.	t	804 West Diamond Avenue Suite 300	\N	20877	Gaithersburg MD	US
470430	Donald B. Rice Tire Co.	t	909 Northeast Street	\N	21701	Frederick MD	US
470431	Rr Donnelly	t	111 South Wacker Drive	\N	60602	Chicago IL	US
470432	Maryland Office Interiors	t	2923 Lord Baltimore Drive	\N	21128	Baltimore MD	US
470433	Karl Klonowski	f	76 Brooks St #9	\N	2718	Flemington NJ	US
470434	C&O	t	7477 Old Alexandria Ferry Road	\N	20735	Clinton MD	US
470435	Ross Professional Services	t	Rte Des Arsenaux 41 	\N	1700	Fribourg	CH
470436	Henkels And Mccoy Training Services	t	450 David Drive	\N	19462	Plymouth Meeting PA	US
470437	Cesar Chavez Pcs	t	709 12Th Street Se	\N	20001	Washington DC	US
470438	Mitsue Tollner	f	7 Eads St	\N	2703	Chicago IL	US
470439	City Security Consultants, Inc	t	2010 Kendall Street, Ne	\N	20001	Washington DC	US
470440	Paramedical Personnel Of Md.	t	343 Granery Road, Ste. D	\N	21050	Forest Hill MD	US
470441	Voxeo Corporation	t	189 S. Orange Ave. #2050	\N	32801	Orlando FL	US
470442	Hillcrest Children'S Center	t	1408 U Street, Nw Ste A	\N	20001	Washington DC	US
470443	Meaghan Garufi	f	69734 E Carrillo St	\N	3251	Mc Minnville TN	US
470444	Faith Management Consulting	t	3417 Minnesota Ave, Se	\N	20001	Washington DC	US
470445	Calvary Women'S Services	t	110 Maryland Avenue Ne #103	\N	20001	Washington DC	US
470446	Aruze	t	1-6-20 Dojima	\N	 530-0003	Kita-Ku	JP
470447	American Mechanical Svcs Of Md	t	13300 Mid Atlantic Blvd	\N	20707	Laurel MD	US
470448	Anacostia Comm. Outreach Ctr	t	711 24Th St., Ne #119	\N	20001	Washington DC	US
470449	Scott Buchanan Dba 12 Rounds &	t	8741 Ashwood Drive	\N	20743	Capitol Heights MD	US
470450	Upm-Kymmene	t	Software Engineering Center	SEC Oy	FIN-02271	Espoo	FI
470451	Reel-Scout	t	31 Duncan St. West End	\N	4101	South Brisbane	AU
470452	Estrella Samu	f	64 Lakeview Ave	\N	617	Beloit WI	US
470453	Principal Decision System Int	t	50 Corporate Park	\N	92602	Irvine CA	US
470454	Opportunities Industrial Center	t	3707 Mlk Avenue Se	\N	20001	Washington DC	US
470455	Laurel Reitler	f	6 Kains Ave	\N	614	Baltimore MD	US
470456	Higher School Publishing Co.	t	3125 Catrina Lane	\N	21401	Annapolis MD	US
470457	Pyramid Educational Cons.Inc.	t	13 Garfield Way	\N	19702	Newark DE	US
470458	Sampo Group	t	Keskuskatu 45	\N	21240	Helsinki	FI
470459	Mariann E. Schick	t	2401 Pennsylvania Ave., #8331	\N	16106	Philadelphia PA	US
470460	Patrick W Keohane	t	714 Meramac Lane	\N	65714	Nixa MO	US
470461	Pepco Energy Services, Inc	t	701 Ninth Street, Nw Customer Service	\N	20001	Washington DC	US
470462	Shred-It Usa, Inc.	t	850 East Gude Drive Suite H	\N	20850	Rockville MD	US
470463	Marianne Schuelein	t	3208 44Th Street, Nw	\N	20001	Washington DC	US
470464	Sm Department Store	t	15 Mccallum Street	NatWest Center #13-03	1227 MM	Makati City	PH
470465	The Family Place, Inc	t	3309 16Th Street., Nw	\N	20001	Washington DC	US
470466	City Dance Ensemble Inc	t	1111 16Th Street Nw, Suite 300	\N	20001	Washington DC	US
470467	Graciela Ruta	f	98 Connecticut Ave Nw	\N	2703	Chagrin Falls OH	US
470468	Life Enhancement Svcs, Llc	t	1328 Southern Avenue, Se Suite 301	\N	20001	Washington DC	US
470469	Mamie Preston	t	3642 13Th Street Nw	\N	20001	Washington DC	US
470470	Millennium Pool And Spa, Llc	t	8927 Lake Braddock Dr	\N	20115	Burke VA	US
470471	Mergent Inc	t	5250 77 Center Drive Ste 150	\N	28202	Charlotte NC	US
470472	Mergent Inc	t	5250 77 Center Drive Ste 150	\N	28202	Charlotte NC	US
470473	Overdrive Inc	t	8555 Sweet Valley Drive Unit N	\N	44102	Cleveland OH	US
470474	Access411	t	52 Grumbacher Rd. Ste 1 Dba Access411	\N	17401	York PA	US
470475	Correos	t	Gran Vía, 1	\N	28001	Madrid	ES
470476	Sedc Charter School Inc.	t	3100 Martin Luther King Av, Se	\N	20001	Washington DC	US
470477	American Fleet Sales & Svcs	t	201 Ritchie Road Building C	\N	20743	Capitol Heights MD	US
470478	Wash. Area Lawyers F/T Arts	t	901 New York Ave Nw, #P-1	\N	20001	Washington DC	US
470479	Angela Kalargyos	t	10834 Eastwood Ave	\N	20901	Silver Spring MD	US
470480	Tamar Hoogland	f	2737 Pistorio Rd #9230	\N	3251	London OH	US
470481	Banner Staffing Llc	t	1025 Connecticut Avenue Nw Suite 211	\N	20001	Washington DC	US
470482	Barney Neighborhood House	t	5656 A Third Street Ne	\N	20001	Washington DC	US
470483	Alease Buemi	f	4 Webbs Chapel Rd	\N	2703	Boulder CO	US
470484	Platinum One, Inc.	t	12138 Central Avenue Suite 939	\N	20716	Mitchellville MD	US
470485	Lorrie Nestle	f	39 S 7th St	\N	99950	Tullahoma TN	US
470486	The Workmen'S Clinic	t	2029 K Street, Nw, # 301	\N	20001	Washington DC	US
470487	East River Family Stregthening	t	3917 Minnesota Ave, Ne	\N	20001	Washington DC	US
470488	Ilene Eroman	f	2853 S Central Expy	\N	2718	Glen Burnie MD	US
470489	De Lage Landen Fin. Services	t	43 Rue St. Laurent	\N	H1J 1C3	Montréal	CA
470490	Groom Law Group, Chartered	t	1701 Pennsylvania Ave, N.W. Suite 1200	\N	20001	Washington DC	US
470491	Election Systems & Software In	t	11208 John Galt Blvd.	\N	68022	Omaha NE	US
470492	Atlas Copco	t	Berguvsvägen  8	\N	S-958 22	Luleå	SE
470493	Ridge Roofing Llc	t	7 Allen Street	\N	3150	Glen Waverly	AU
470494	Patricia Fripp	t	527 Hugo Street	\N	94102	San Francisco CA	US
470495	Dc Children Youth Investment	t	1400 16Th Street Nw Suite 500	\N	20001	Washington DC	US
470496	Anasazi, Software Inc.	t	9831 S 51St Street Suite -C117	\N	85003	Phoenix AZ	US
470497	Kris Marrier	f	228 Runamuck Pl #2808	\N	614	Baltimore MD	US
470498	Medical Supply Systems Inc	t	3182 Bladensburg Rd. Ne.	\N	20001	Washington DC	US
470499	Diane Bradley	t	1629 K Street, Nw - 300	\N	20001	Washington DC	US
470500	Ace Mentor Program Of Gwma	t	1401 New York Ave, Nw Suite 900	\N	20001	Washington DC	US
470501	Stephen Emigh	f	3777 E Richmond St #900	\N	605	Akron OH	US
470502	Emerson Bowley	f	762 S Main St	\N	3251	Madison WI	US
470503	Henry Schein, Inc.	t	135 Duryea Road, Mail Rt.E-255	\N	11747	Melville NY	US
470504	The University Of Md	t	3112 Lee Building Off. Of Res. Admin And Advance	\N	20740	College Park MD	US
470505	Gcs/Sigal, Llc	t	3020 Yost Place Ne	\N	20001	Washington DC	US
470506	Document Systems Inc	t	333 Hawaii Avenue, Ne Suite 200	\N	20001	Washington DC	US
470507	Columbia Lighthouse For Blind	t	1825 K Street, Nw Suite 1103	\N	20001	Washington DC	US
470508	Kipp Dc/Key Academy Pcs	t	1003 K Street, N.W. Suite 700	\N	20001	Washington DC	US
470509	National Capital Poison Center	t	3201 New Mexico Ave Suite 310	\N	20001	Washington DC	US
470510	Midwest Bank Note Co.	t	50 Pearl Street	\N	14086	Lancaster NY	US
470511	Silver Spring Fire Protection,	t	7389 Washington Blvd. Suite 105	\N	21075	Elkridge MD	US
470512	Carmelina Lindall	f	2664 Lewis Rd	\N	3251	Littleton CO	US
470513	Gala Hispanic Theater	t	2437 15Th Street., Nw	\N	20001	Washington DC	US
470514	Facilities Technology Group	t	1110 East 32Nd Street Bldg 2	\N	78701	Austin TX	US
470515	Kadcon Corporation	t	1053 31St Street, Nw	\N	20001	Washington DC	US
470516	The Hamilton Group	t	4406 Gault Place Ne	\N	20001	Washington DC	US
470517	F&L Construction Inc.	t	1512 Good Hope Rd Se	\N	20001	Washington DC	US
470518	Donette Foller	f	34 Center St	\N	2718	Hamilton OH	US
470519	Airgas East Inc.	t	6990 Snowdrift Road	\N	18101	Allentown PA	US
470520	Himmel & Wilson Library Consul	t	417 East High Street	\N	53563	Milton WI	US
470521	Meridian Imaging Solutions	t	5775 General Washington Drive	\N	22301	Alexandria VA	US
470522	Dc Line, Inc.	t	2250 South Dakota Ave, Ne	\N	20001	Washington DC	US
470523	Integrated Design Electronics	t	1027 45Th Street Ne	\N	20001	Washington DC	US
470524	Danica Bruschke	f	840 15th Ave	\N	99950	Waco TX	US
470525	Flik International	t	800 Florida Avenue Ne	\N	20001	Washington DC	US
470526	Gmv	t	C/ Araquil, 67	\N	28023	Madrid	ES
470527	Florida Drug Screening Inc.	t	2191 Julian Ave. #2	\N	32905	Palm Bay FL	US
470528	Norsk Hydro	t	Brehmen St. 121	PR 334 Sentrum	N 5804	Bergen	NO
470529	Albina Glick	f	4 Ralph Ct	\N	2715	Dunellen NJ	US
470530	Print Mail Communications Inc	t	7201 Lockport Place	\N	22079	Lorton VA	US
470531	Allied Telecom Group,Llc	t	1120 20Th Street Nw Suite 500	\N	20001	Washington DC	US
470532	Cory Gibes	f	83649 W Belmont Ave	\N	99657	San Gabriel CA	US
470533	Abel Maclead	f	37275 St  Rt 17m M	\N	42256	Middle Island NY	US
470534	Second Genesis, Inc.	t	8611 Second Avenue, Suite #300	\N	20901	Silver Spring MD	US
470535	Park Southern Neighborhood Cp	t	800 Southern Avenue Se	\N	20001	Washington DC	US
470536	Corrections Corporation Of	t	10 Burton Hills Blvd America	\N	37013	Nashville TN	US
470537	Hireright, Inc.	t	5151 California Avenue	\N	92602	Irvine CA	US
470538	Unipol	t	Via Ludovico Il Moro 22	\N	24100	Bergamo	IT
470539	Pulse Advertising	t	1821 Florida Ave Nw	\N	20001	Washington DC	US
470540	Andrew S. Butler	t	1427 Holbrook Street, Ne, #1	\N	20001	Washington DC	US
470541	Pergravis	t	10012 N. Dale Mabry Hwy Suite 109	\N	33602	Tampa FL	US
470542	American Health & Wellness	t	25 Professional Way, #101	\N	24482	Verona VA	US
470543	Apple Computer Inc	t	1 Infinite Loop	\N	95014	Cupertino CA	US
470544	Nastos Contruction Inc	t	1421 Kenilworth Ave Ne	\N	20001	Washington DC	US
470545	Precyse Solutions, Inc	t	1275 Drummers Lane, Ste 200	\N	19087	Wayne PA	US
470546	Mbia	t	7335 North Palm Bluffs Drive	\N	93701	Fresno CA	US
470547	Hill International Inc.	t	1225 Eye Street N.W.	\N	20001	Washington DC	US
470548	Premier Office & Medical Suppl	t	1020 49Th Street Ne	\N	20001	Washington DC	US
470549	Formost Advanced Creations	t	1730 17Th Street Ne	\N	20001	Washington DC	US
470550	Mapfre	t	C/ Moralzarzal, 86	\N	28034	Madrid	ES
470551	Kamit Institute-Magni Achi,Pcs	t	100 Peabody Street Nw First Floor	\N	20001	Washington DC	US
470552	American Supply Company	t	316 F. St. Ne. 103	\N	20001	Washington DC	US
470553	Fairness Environmental Service	t	3109 Martin Luther King Jr. Av	\N	20001	Washington DC	US
470554	Washington Hospital Center	t	2000 15Th St N. Suite 600	\N	22201	Arlington VA	US
470555	Mi Casa, Inc.	t	6230 3Rd Street Nw, Suite 2	\N	20001	Washington DC	US
470556	Hotel Washington	t	515 15Th Street Nw	\N	20001	Washington DC	US
470557	Tamah., Llc	t	1701 Independence Ave Se	\N	20001	Washington DC	US
470558	Longobardi & Associates Dc Llc	t	1401 14Th Street, Nw Suite 300	\N	20001	Washington DC	US
470559	Titus Llc	t	Arenales 1938 3'A'	\N	\N	Auckland  	NZ
470560	Life Skills Center	t	6200 2Nd St Nw, 3Rd Fl	\N	20001	Washington DC	US
470561	Capital City Pcs	t	3047 15Th Street Nw	\N	20001	Washington DC	US
470562	Moon Parlato	f	74989 Brandon St	\N	99950	Wellsville NY	US
470563	Keanya Carr	t	1900 Oak St.	\N	V3F 2K1	Vancouver	CA
470564	Fletcher Flosi	f	394 Manchester Blvd	\N	99655	Rockford IL	US
470565	Sanlam	t	1250 Pretorius Street	\N	28	Hatfield	ZA
470566	Lawmen Suupply Company, Inc.	t	35 King George	\N	WX3 6FW	London	GB
470567	Liebert Global Services	t	610 Executive Campus Drive	\N	43081	Westerville OH	US
470568	District Of Columbia Care Center	t	4043 Clay Pl., Ne	\N	20001	Washington DC	US
470569	Malcolm L. Wiseman, Jr.	t	1228 Crittenden Street, Nw	\N	20001	Washington DC	US
470570	Post Master	t	1200 Pennsylvania Ave. Nw	\N	20001	Washington DC	US
470571	Morgans Inc	t	900 Rhode Island Avenue Ne	\N	20001	Washington DC	US
470572	Veronika Inouye	f	6 Greenleaf Ave	\N	99657	San Jose CA	US
470573	Cambro Manufacturing	t	5801 Skylab Road	\N	92646	Huntington Beach CA	US
470574	Mtw Distributors Inc	t	1235 Kenilworth Ave Ne Suite#8	\N	20001	Washington DC	US
470575	Nat Assoc Of State Alcohol & D	t	808 17Th Street Nw Suite 410	\N	20001	Washington DC	US
470576	Educators For Social Respon.	t	23 Garden Street	\N	2138	Cambridge MA	US
470577	Pepco Inc	t	1615 Robertson Road	\N	65270	Moberly MO	US
470578	The Malloy Group, Llc.	t	4216 Evergreen Lane Suite 133	\N	22003	Annandale VA	US
470579	Ezekiel Chui	f	2 Cedar Ave #84	\N	2718	Easton MD	US
470580	Dutchmill Caterers	t	Bank Of China Tower	1 Garden Road	\N	Central Hong Kong	CN
470581	Lisha Centini	f	64 5th Ave #1153	\N	3251	Mc Lean VA	US
470582	Efforts	t	4601 Sheriff Road, Ne	\N	20001	Washington DC	US
470583	Quantitative Micro Software	t	4521 Campus Drive Number 336	\N	92602	Irvine CA	US
470584	Gladys Rim	f	322 New Horizon Blvd	\N	42256	Milwaukee WI	US
470585	Sabra Uyetake	f	98839 Hawthorne Blvd #6101	\N	2703	Columbia SC	US
470586	Natalie Fern	f	7140 University Ave	\N	99655	Rock Springs WY	US
470587	American Institute Of Cpa'S	t	220 Leigh Farm Road	\N	27701	Durham NC	US
470588	Devorah Chickering	f	31 Douglas Blvd #950	\N	2703	Clovis NM	US
470589	Ślusarski Alisha	f	3273 State St	\N	42256	Middlesex NJ	US
470590	Margaret P. Cox	t	907 6Th Street, Sw #901C	\N	20001	Washington DC	US
470591	Capitol College	t	11301 Springfield Road	\N	20707	Laurel MD	US
470592	Cyndy Goldammer	f	170 Wyoming Ave	\N	2703	Burnsville MN	US
470593	Tyra Shields	f	3 Fort Worth Ave	\N	99654	Philadelphia PA	US
470594	Turner Construction Company	t	3865 Wilson Blvd. Suite 300	\N	22201	Arlington VA	US
470595	E&G Dc Co-Op Owner, Llc	t	1350 Beverly Road Suite 200	\N	22101	Mclean VA	US
470596	Strayer University	t	1133 15Th Street, N.W.	\N	20001	Washington DC	US
470597	Computer Intelligence Assoc.	t	8840 Stanford Blvd Suite 1500	\N	21044	Columbia MD	US
470598	Natacha Kiler	t	621 Orleans Place Ne	\N	20001	Washington DC	US
470599	Follett Educational Services	t	1433 Internationale Parkway	\N	60517	Woodridge IL	US
470600	Mtw Distributors Inc	t	1235 Kenilworth Ave Ne Suite#8	\N	20001	Washington DC	US
470601	Center City Pcs	t	7 New York Ave Suite 300	\N	20001	Washington DC	US
470602	Merry C. Hudson	t	1216 Edgevale Road	\N	20901	Silver Spring MD	US
470603	Tonette Wenner	f	4545 Courthouse Rd	\N	99950	Westbury NY	US
470604	Wider Opportunity For Women	t	1001 Connecticut Ave Nw Suite 930	\N	20001	Washington DC	US
470605	Marc A. Rigrodsky	t	171 Edwards St	\N	4101	Portland ME	US
470606	Natalie Tolstoi	t	5225 Pooks Hill Rd # 1517 South	\N	20814	Bethesda MD	US
470607	Lavera Perin	f	678 3rd Ave	\N	33055	Miami FL	US
470608	W W Grainger Inc	t	100 Grainger Parkway	\N	60045	Lake Forest IL	US
470609	C&E Services, Inc. Of Washington	t	1224 W Street Se	\N	20001	Washington DC	US
470610	Prince Construction Company	t	1111 Good Hope Rd Se	\N	20001	Washington DC	US
470611	Gap Solutions Inc	t	11425 Isaac Newton Sq. South Suite 200	\N	20190	Reston VA	US
470612	Leftwich & Ludaway	t	1400 K Street Nw Suite 1000	\N	20001	Washington DC	US
470613	Soft Choice Corporation	t	314 W Superior Street Suite 301	\N	60602	Chicago IL	US
470614	Fox Systems, Inc.	t	6263 N. Scottsdale Road Suite 200	\N	85022	Scottsdale AZ	US
470615	Deeanna Juhas	f	14302 Pennsylvania Ave	\N	2718	Huntingdon Valley PA	US
470616	American Institutes For Research	t	1000 Thomas Jefferson St. Nw.	\N	20001	Washington DC	US
470617	Sasha Bruce Youthwork	t	741 8Th Street, Se	\N	20001	Washington DC	US
470618	Simona Morasca	f	3 Mcauley Dr	\N	614	Ashland OH	US
470619	Andrew Shields	t	339 Virginia Ave Se	\N	20001	Washington DC	US
470620	Anchor Construction Corporatio	t	2254 25Th Place N.E.	\N	20001	Washington DC	US
470621	Valentine Gillian	f	775 W 17th St	\N	99657	San Antonio TX	US
470622	Lt Joseph P Kennedy Institute	t	801 Buchanan Street, Ne	\N	20001	Washington DC	US
470623	Paul Junior High Pcs	t	5800 8Th Street Nw	\N	20001	Washington DC	US
470624	Viscom Interpreting, Inc	t	2417 South 26Th Road	\N	22201	Arlington VA	US
470625	Rozella Ostrosky	f	17 Morena Blvd	\N	2703	Camarillo CA	US
470626	Lenna Paprocki	f	639 Main St	\N	610	Anchorage AK	US
470627	Cimatron	t	3 Hagalim Blv.	\N	47625	Herzlia	IL
470628	Hawk Contractors	t	1015 Steven Reid Drive	\N	20639	Huntingtown MD	US
470629	Carahsoft Technology Corporation	t	12369 Sunrise Valley Drive Suite D-2	\N	20190	Reston VA	US
470630	Jina Briddick	f	38938 Park Blvd	\N	2135	Boston MA	US
470631	Computerdata Solutions, Llc	t	913 U Street, Nw	\N	20001	Washington DC	US
470632	Blair Malet	f	209 Decker Dr	\N	99654	Philadelphia PA	US
470633	National 4-H Council	t	7100 Connecticut Avenue	\N	20815	Chevy Chase MD	US
470634	Creative Options & Employment	t	1441 Mccormick Drive Suite #1020	\N	20772	Upper Marlboro MD	US
470635	Pathways To Housing Dc, Inc.	t	101 Q Street Ne Suite G	\N	20001	Washington DC	US
470636	Marie B Waiters	t	15780 Mountain Place	\N	20613	Brandywine MD	US
470637	Johnetta Abdallah	f	1088 Pinehurst St	\N	2703	Chapel Hill NC	US
470638	Gallaudet University	t	800 Florida Avenue, N.E.	\N	20001	Washington DC	US
470639	Rsc Electrical & Mechanical Co	t	6035 Dix Street Ne	\N	20001	Washington DC	US
470641	Shaw Main Street	t	1426 9Th Street, Nw	\N	20001	Washington DC	US
470642	Orion Systems Group, Llc	t	3900 Jermantown Road Suite 480	\N	22030	Fairfax VA	US
470643	CS&D	t	Garden House	Crowther Way 23	PO31 7PJ	Cowes	GB
470644	Campbell & Company Comm.	t	2401 Mt. Vernon Avenue Suite B	\N	22301	Alexandria VA	US
470645	Leota Dilliard	f	7 W Jackson Blvd	\N	99657	San Jose CA	US
470646	Jamal Vanausdal	f	53075 Sw 152nd Ter #615	\N	42256	Monroe Township NJ	US
470647	Canon Usa Inc	t	2110 Washington Boulevard	\N	22201	Arlington VA	US
470648	Orrick Herrington Sutcliffe Lp	t	666 Fifth Avenue	\N	10001	New York NY	US
470649	Kathleen Patrick	t	124 East Raymond Ave	\N	22301	Alexandria VA	US
470650	Margarita Calderon & Assoc.Inc	t	101 West End Avenue Apt. 23A	\N	10001	New York NY	US
470651	Josephine Darakjy	f	4 B Blue Ridge Blvd	\N	2703	Brighton MI	US
470652	Ridge Roofing Llc	t	710 Mississippi Avenue S.E.	\N	20001	Washington DC	US
470653	Ime Services	t	1201 Pennsylvania Avenue Nw Suite 300	\N	20001	Washington DC	US
470654	Marie E. Perkins	t	10224 Prince Place Unit T4	\N	20774	Largo MD	US
470655	Münzel Babette	f	6 S 33rd St	\N	614	Aston PA	US
470656	Wash Metro Area Transit Auth	t	600 5Th Street Nw	\N	20001	Washington DC	US
470657	Hart Intercivic, Inc.	t	15500 Wells Port Drive	\N	78701	Austin TX	US
470658	Amber Monarrez	f	14288 Foster Ave #4121	\N	2718	Jenkintown PA	US
470659	Corp./Wash. Latin School	t	4715 16Th Street, N.W.	\N	20001	Washington DC	US
470660	On Target Challenge	t	15312 Spencerville Court Suite 100	\N	20866	Burtonsville MD	US
470661	Toter Incorporated	t	841 Meacham Road	\N	28625	Statesville NC	US
470662	Eagle Management Llc	t	213 Kennedy Street, Nw	\N	20001	Washington DC	US
470663	History Matters Llc	t	1502 21St Street Nw	\N	20001	Washington DC	US
470664	Fatima Saylors	f	2 Lighthouse Ave	\N	2718	Hopkins MN	US
470665	Aventas Group	t	25 Maiden Lane	Floor No. 4	2	Dublin	IR
470666	Marlow Sports, Inc.	t	7613 Penn Belt Drive	\N	20747	Forestville MD	US
470667	East Coast Ems Associates	t	1612 A Street, S.E.	\N	20001	Washington DC	US
470668	Allene Iturbide	f	1 Central Ave	\N	99950	Stevens Point WI	US
470669	Kohler Equipment, Inc.	t	7021 Annapolis Road	\N	20784	Landover Hills MD	US
470670	Lai Gato	f	37 Alabama Ave	\N	2718	Evanston IL	US
470671	Oxford University Press, Inc	t	198 Madison Avenue	\N	10001	New York NY	US
470672	Kanisha Waycott	f	5 Tomahawk Dr	\N	3251	Los Angeles CA	US
470673	Sap Public Services, Inc	t	1300 Pennsylvania Ave, Ste 600 Ronald Reagan Bldg/Intl Trade	\N	20001	Washington DC	US
470674	Scotti And Gerl	t	216 South Jefferson Street	\N	24901	Lewisburg WV	US
470675	Dyan Oldroyd	f	7219 Woodfield Rd	\N	99644	Overland Park KS	US
470676	Craftmaster Hardware Co.	t	190 Veterans Drive	\N	7647	Northvale NJ	US
470677	Study Island	t	3400 Carlisle St Ste 345	\N	75028	Dallas TX	US
470678	Dc Bilingual Pcs	t	1420 Columbia Road Nw	\N	20001	Washington DC	US
470679	Pembroke West Associates Inc	t	4435 Wisconsin Ave Nw Suite 210	\N	20001	Washington DC	US
470680	American Legacy Foundation	t	1724 Massachusetts Ave, Nw	\N	20001	Washington DC	US
470681	Sanz School Inc	t	1720 Eye Street Nw Lower Level	\N	20001	Washington DC	US
470682	Two Rivers Pcs	t	1227 4Th Street, Ne	\N	20001	Washington DC	US
470683	P Flanigan And Sons Inc	t	2444 Lock Raven Road	\N	21128	Baltimore MD	US
470684	Spectrum Management, Llc	t	120 Hanover Sq.	\N	WA1 1DP	London	GB
470685	Charles Ryan Associates, Llc	t	300 Summers Street Suite 1100	\N	25301	Charleston WV	US
470686	American Library Association	t	50 East Huron Street	\N	60602	Chicago IL	US
470687	Wvsa School For Arts	t	1100 16Th St Nw	\N	20001	Washington DC	US
470688	Houghton Mifflin Co Inc	t	222 Berkeley Street	\N	2108	Boston MA	US
470689	Ammie Corrio	f	74874 Atlantic Ave	\N	2703	Columbus OH	US
470690	Booker T Washington Pcs	t	1346 Florida Ave., N.W.	\N	20001	Washington DC	US
470691	Federal City Recovery Svcs	t	920 Bellevue St Se Po Box 77281	\N	20001	Washington DC	US
470692	Midtown Personnel Inc	t	900 7Th Street, Nw Suite 725	\N	20001	Washington DC	US
470693	P.C.S. For Student Suppo.Srvs.	t	1003 K. St. Nw. Suite 405	\N	20001	Washington DC	US
470694	Osim International	t	106 Linden Road Sandown	2nd Floor	69045	Singapore	SG
470695	Central Parking System Va.	t	1225 Eye Street,Nw. Suite C-100	\N	20001	Washington DC	US
470696	Laser Art Inc	t	2209 Channing Street Ne Po Box 41083	\N	20001	Washington DC	US
470697	Metropolitan Office Products	t	910 Barnaby St Se # 201	\N	20001	Washington DC	US
470698	Montepio Geral	t	Jardim Das Rosas N. 32	\N	1675	Lisboa	PT
470699	Community Academy Pcs	t	1351 Nicholson Street Nw	\N	20001	Washington DC	US
470700	Friendship Pcs	t	120 Q Street, Ne	\N	20001	Washington DC	US
470701	Mindleaders, Inc.	t	5500 Glendon Court, Suite 200	\N	43016	Dublin OH	US
470702	Thewashington Times Llc	t	3600 Ny Ave Ne	\N	20001	Washington DC	US
470703	Intergraph Corporation	t	170 Graphics Drive	\N	35756	Madison AL	US
470704	Coalition For Juvenile Justice	t	1710 Rhode Island Ave Nw	\N	20001	Washington DC	US
470705	Perry School Community Services Center, Inc.	t	128 M. Street, Nw Suite 100	\N	20001	Washington DC	US
470706	Dominque Dickerson	f	69 Marquette Ave	\N	2718	Hayward CA	US
470707	Paralegal Inst Of Wash Dc	t	5101 Winconsin Ave. Nw Business Office	\N	20001	Washington DC	US
470708	Parkside Senior, Lp	t	730 15Th Street Nw 8Th Floor	\N	20001	Washington DC	US
470709	Celeste Korando	f	7 W Pinhook Rd	\N	3251	Lynbrook NY	US
470710	United Chemical Technologies	t	2731 Bartram Road	\N	19007	Bristol PA	US
470711	Knight Facilities Mgmt, Inc.	t	5360 Hampton Place	\N	48601	Saginaw MI	US
470712	Childrens National Medical Ctr	t	111 Michigan Ave Nw	\N	20001	Washington DC	US
470713	Delisa Crupi	f	47565 W Grand Ave	\N	42261	Newark NJ	US
470714	Bellevue University	t	1000 Galvin Road South	\N	68005	Bellevue NE	US
470715	Ethiopian Community Center Inc	t	7603 Georgia Avenue Nw Suite 100	\N	20001	Washington DC	US
470716	Arlene Klusman	f	3 Secor Rd	\N	42261	New Orleans LA	US
470717	The Presidio Corporation	t	7601 Ora Glen Drive Suite 100	\N	20770	Greenbelt MD	US
470718	Cofina	t	Estrada Da Saúde N. 58	\N	1756	Lisboa	PT
470719	Euphemia L. Haynes Pcs	t	3600 Georgia Avenue, Nw	\N	20001	Washington DC	US
470720	Jtf Business Systems	t	5568 General Washington Drive A 203	\N	22301	Alexandria VA	US
470721	Accelera Solutions Inc.	t	201 Miller Street	Level 15	2060	North Sydney	AU
470722	D.H. Lloyd & Assoc. Inc.	t	1625 K. Street, Nw Suite #400	\N	20001	Washington DC	US
470723	Parsons Brinckerhoff	t	1401 K. Street, Nw. Suite 701	\N	20001	Washington DC	US
470724	C2C Systems Inc	t	1 Federal Street Enterprise Center	\N	1040	Springfield MA	US
470725	Excel Tree Expert Co.Inc.	t	7549 Montevideo Road	\N	20794	Jessup MD	US
470726	Marilyn Friend, Inc.	t	26 Rosebay Lane	\N	27401	Greensboro NC	US
470727	Fort Myer Construction Corpora	t	2237 - 33Rd Street, N.E.	\N	20001	Washington DC	US
470728	Networking For Future, Inc.	t	1023 15Th St Nw Suite 500	\N	20001	Washington DC	US
470729	Barbara Chambers Children Ctr	t	1470 Irving St., Nw	\N	20001	Washington DC	US
470730	Ami Magunia	t	627 S. Dean Street	\N	21128	Baltimore MD	US
470731	Edward L. Jackson	t	12, Berkeley Gardens Blvd	\N	WX1 6LT	Liverpool	GB
470732	D C  Van Lines Moving	t	4611 Tanglewood Drive	\N	20781	Hyattsville MD	US
470733	Mvs, Inc.	t	1401 14Th Street Nw Ste# 200	\N	20001	Washington DC	US
470734	Howard University The Learning Academy	t	2400 6Th Street, Nw Suite 115	\N	20001	Washington DC	US
470735	Elsie Whitlow Stokes Pcs	t	199 Great North Road	\N	\N	Auckland	NZ
470736	Edna Miceli	f	555 Main St	\N	2718	Erie PA	US
470737	Marc Parc Parking	t	1233 20Th Street Nw Ste 104	\N	20001	Washington DC	US
470738	Clean Venture Incorporated	t	2031 Inverness Avenue	\N	21128	Baltimore MD	US
470739	Ost, Inc.	t	1155 15Th Street Nw Suite 600	\N	20001	Washington DC	US
470740	Business Strategy Consultants	t	9701 Apollo Drive Suite 445	\N	20774	Largo MD	US
470640	Obverse Corporation, Inc.	t	Geislweg 14	\N	5020	Salzburg	AT
\.


ALTER TABLE ONLY "Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("CID");

