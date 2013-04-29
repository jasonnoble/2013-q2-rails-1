drop table if exists presidents;

create table presidents (
  id              integer not null,
  president       varchar(100) not null,
  wikipedia_entry varchar(100) not null,
  took_office     varchar(10) not null,
  left_office     varchar(10) not null,
  party           varchar(50) not null,
  portrait        varchar(30) not null,
  thumbnail       varchar(30) not null,
  home_state      varchar(30) not null,
  primary key (id)
);

copy presidents (id, president, wikipedia_entry, took_office, left_office, party, portrait, thumbnail, home_state) from stdin with csv;
44,Barack Obama,http://en.wikipedia.org/wiki/Barack_Obama,20/01/2009,Incumbent ,  Democratic   ,Barack_Obama.jpg,thmb_Barack_Obama.jpg,Illinois
43,George W. Bush,http://en.wikipedia.org/wiki/George_W._Bush,20/01/2001,20/01/2009,Republican ,George_W_Bush.jpg,thmb_George_W_Bush.jpg,Texas
42,Bill Clinton,http://en.wikipedia.org/wiki/Bill_Clinton,20/01/1993,20/01/2001,Democratic ,Clinton.jpg,thmb_Clinton.jpg,Arkansas
41,George H. W. Bush,http://en.wikipedia.org/wiki/George_H._W._Bush,20/01/1989,20/01/1993,Republican ,George_H_W_Bush.gif,thmb_George_H_W_Bush.gif,Texas
40,Ronald Reagan,http://en.wikipedia.org/wiki/Ronald_Reagan,20/01/1981,20/01/1989,Republican ,ReaganWH.jpg,thmb_ReaganWH.jpg,California
39,Jimmy Carter,http://en.wikipedia.org/wiki/Jimmy_Carter,20/01/1977,20/01/1981,Democratic ,James_E_Carter.gif,thmb_James_E_Carter.gif,Georgia
38,Gerald Ford,http://en.wikipedia.org/wiki/Gerald_Ford,9/8/1974,20/01/1977,Republican,Gerald_R_Ford.jpg,thmb_Gerald_R_Ford.jpg,Michigan
37,Richard Nixon,http://en.wikipedia.org/wiki/Richard_Nixon,20/1/1969,9/8/1974,Republican,RichardNixon.gif,thmb_RichardNixon.gif,California
36,Lyndon B. Johnson,http://en.wikipedia.org/wiki/Lyndon_B._Johnson,22/11/1963,20/1/1969,Democratic,Lyndon_B_Johnson.gif,thmb_Lyndon_B_Johnson.gif,Texas
35,John F. Kennedy,http://en.wikipedia.org/wiki/John_F._Kennedy,20/01/1961,22/11/1963,Democratic,John_F_Kennedy.jpg,thmb_John_F_Kennedy.jpg,Massachusetts
34,Dwight D. Eisenhower,http://en.wikipedia.org/wiki/Dwight_D._Eisenhower,20/01/1953,20/01/1961,Republican ,Dwight_D_Eisenhower.jpg,thmb_Dwight_D_Eisenhower.jpg,Texas
33,Harry S. Truman,http://en.wikipedia.org/wiki/Harry_S._Truman,12/4/1945,20/01/1953,Democratic,HarryTruman.jpg,thmb_HarryTruman.jpg,Missouri
32,Franklin D. Roosevelt,http://en.wikipedia.org/wiki/Franklin_D._Roosevelt,4/03/1933,12/4/1945,Democratic,FranklinDRoosevelt.gif,thmb_FranklinDRoosevelt.gif,New York
31,Herbert Hoover,http://en.wikipedia.org/wiki/Herbert_Hoover,4/03/1929,4/03/1933,Republican ,HerbertHover.gif,thmb_HerbertHover.gif,Iowa
30,Calvin Coolidge,http://en.wikipedia.org/wiki/Calvin_Coolidge,2/8/1923,4/03/1929,Republican ,CoolidgeWHPortrait.gif,thmb_CoolidgeWHPortrait.gif,Massachusetts
29,Warren G. Harding,http://en.wikipedia.org/wiki/Warren_G._Harding,4/03/1921,2/8/1923,Republican ,WarrenGHarding.gif,thmb_WarrenGHarding.gif,Ohio
28,Woodrow Wilson,http://en.wikipedia.org/wiki/Woodrow_Wilson,4/03/1913,4/03/1921,Democratic ,WoodrowWilson.gif,thmb_WoodrowWilson.gif,New Jersey
27,William Howard Taft,http://en.wikipedia.org/wiki/William_Howard_Taft,4/3/1909,4/03/1913,Republican ,WilliamHowardTaft.jpg,thmb_WilliamHowardTaft.jpg,Ohio
26,Theodore Roosevelt,http://en.wikipedia.org/wiki/Theodore_Roosevelt,14/9/1901,4/3/1909,Republican ,TheodoreRoosevelt.jpg,thmb_TheodoreRoosevelt.jpg,New York
25,William McKinley,http://en.wikipedia.org/wiki/William_McKinley,4/03/1897,14/9/1901,Republican ,WilliamMcKinley.gif,thmb_WilliamMcKinley.gif,Ohio
24,Grover Cleveland (2nd term),http://en.wikipedia.org/wiki/Grover_Cleveland,4/03/1893,4/03/1897,Democratic ,Grover_Cleveland.jpg,thmb_Grover_Cleveland.jpg,New York
23,Benjamin Harrison,http://en.wikipedia.org/wiki/Benjamin_Harrison,4/03/1889,4/03/1893,Republican ,BenjaminHarrison.gif,thmb_BenjaminHarrison.gif,Indiana
22,Grover Cleveland,http://en.wikipedia.org/wiki/Grover_Cleveland,4/03/1885,4/03/1889,Democratic ,Grover_Cleveland_2.jpg,thmb_Grover_Cleveland_2.jpg,New York
21,Chester A. Arthur,http://en.wikipedia.org/wiki/Chester_A._Arthur,19/09/1881,4/03/1885,Republican ,ChesterAArthur.gif,thmb_ChesterAArthur.gif,New York
20,James A. Garfield,http://en.wikipedia.org/wiki/James_A._Garfield,4/03/1881,19/09/1881,Republican ,James_Garfield.jpg,thmb_James_Garfield.jpg,Ohio
19,Rutherford B. Hayes,http://en.wikipedia.org/wiki/Rutherford_B._Hayes,4/03/1877,4/03/1881,Republican ,RutherfordBHayes.png,thmb_RutherfordBHayes.png,Ohio
18,Ulysses S. Grant,http://en.wikipedia.org/wiki/Ulysses_S._Grant,4/03/1869,4/03/1877,Republican ,UlyssesSGrant.gif,thmb_UlyssesSGrant.gif,Ohio
17,Andrew Johnson,http://en.wikipedia.org/wiki/Andrew_Johnson,15/04/1865,4/03/1869,Democratic/National Union,AndrewJohnson.gif,thmb_AndrewJohnson.gif,Tennessee
16,Abraham Lincoln,http://en.wikipedia.org/wiki/Abraham_Lincoln,4/03/1861,15/04/1865,Republican/National Union,AbrahamLincoln.jpg,thmb_AbrahamLincoln.jpg,Illinois
15,James Buchanan,http://en.wikipedia.org/wiki/James_Buchanan,4/03/1857,4/03/1861,Democratic ,JamesBuchanan.gif,thmb_JamesBuchanan.gif,Pennsylvania
14,Franklin Pierce,http://en.wikipedia.org/wiki/Franklin_Pierce,4/03/1853,4/03/1857,Democratic ,FranklinPierce.gif,thmb_FranklinPierce.gif,New Hampshire
13,Millard Fillmore,http://en.wikipedia.org/wiki/Millard_Fillmore,9/07/1850,4/03/1853,Whig,MillardFillmore.png,thmb_MillardFillmore.png,New York
12,Zachary Taylor,http://en.wikipedia.org/wiki/Zachary_Taylor,4/03/1849,9/07/1850,Whig,ZacharyTaylor.jpg,thmb_ZacharyTaylor.jpg,Louisiana
11,James K. Polk,http://en.wikipedia.org/wiki/James_K._Polk,4/03/1845,4/03/1849,Democratic ,JamesKPolk.gif,thmb_JamesKPolk.gif,Tennessee
10,John Tyler,http://en.wikipedia.org/wiki/John_Tyler,4/04/1841,4/03/1845,Whig,JohnTyler.jpg,thmb_JohnTyler.jpg,Virginia
9,William Henry Harrison,http://en.wikipedia.org/wiki/William_Henry_Harrison,4/03/1841,4/04/1841,Whig,WilliamHenryHarrison.gif,thmb_WilliamHenryHarrison.gif,Ohio
8,Martin Van Buren,http://en.wikipedia.org/wiki/Martin_Van_Buren,4/03/1837,4/03/1841,Democratic ,MartinVanBuren.gif,thmb_MartinVanBuren.gif,New York
7,Andrew Jackson,http://en.wikipedia.org/wiki/Andrew_Jackson,4/03/1829,4/03/1837,Democratic ,Andrew_jackson_head.gif,thmb_Andrew_jackson_head.gif,Tennessee
6,John Quincy Adams,http://en.wikipedia.org/wiki/John_Quincy_Adams,4/03/1825,4/03/1829,Democratic-Republican/National Republican ,JohnQuincyAdams.gif,thmb_JohnQuincyAdams.gif,Massachusetts
5,James Monroe,http://en.wikipedia.org/wiki/James_Monroe,4/03/1817,4/03/1825,Democratic-Republican ,JamesMonroe.gif,thmb_JamesMonroe.gif,Virginia
4,James Madison,http://en.wikipedia.org/wiki/James_Madison,4/03/1809,4/03/1817,Democratic-Republican ,JamesMadison.gif,thmb_JamesMadison.gif,Virginia
3,Thomas Jefferson,http://en.wikipedia.org/wiki/Thomas_Jefferson,4/03/1801,4/03/1809,Democratic-Republican ,Thomasjefferson.gif,thmb_Thomasjefferson.gif,Virginia
2,John Adams,http://en.wikipedia.org/wiki/John_Adams,4/03/1797,4/03/1801,Federalist ,JohnAdams.jpg,thmb_JohnAdams.jpg,Massachusetts
1,George Washington,http://en.wikipedia.org/wiki/George_Washington,30/04/1789,4/03/1797,Independent ,GeorgeWashington.jpg,thmb_GeorgeWashington.jpg,Virginia
\.
