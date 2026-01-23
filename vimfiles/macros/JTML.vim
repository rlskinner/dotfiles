"|"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"| JTML: HTML Mode for VIM by Jupp
"|_____________________________________________________________________________
"|
"| The purpose of this HTML mode is not to implement each and any tag, but to
"| supply you with commands for effectively writing web pages (this also means
"| that only part of all arguments are automatically inserted).
"|_____________________________________________________________________________

" Only works for AutoIndent switched on
set ai

" Don't use tabs (to much trouble with this)
set expandtab

" Don't limit text width
set textwidth=0

" ^W gets you out of a <bla>bla[]</bla> where [] ist the cursor position
map!  />a

" Create a new web page - validator.w3.org should give its OK
map! \new <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><HTML>  <HEAD>  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1"><META NAME="GENERATOR" CONTENT="VIM Vi IMproved 5.3"><TITLE>   xxxa</TITLE> xxxa</HEAD><BODY BGCOLOR="#FFFFFF">   xxxa</BODY> xxxa</HTML>6ka

" In case you wish to create a redirection page use this (waits zero seconds
" before beaming you to the VIM homepage) - Just to remind you of this URL :-)
map! \redir <META CONTENT="0;url=http://www.vim.org/" HTTP-EQUIV="refresh">46hi
map! \meta <META NAME="" CONTENT="">12hi

" Creating Headlines of different size
map! \h xa<Hpa><FONT FACE="Arial,Helvetica"></FONT></Hpa>11hi

" ISO-Latin-1
map! \& &amp;
map! \< &lt;
map! \> &gt;
map! ¡ &iexcl;
map! ¢ &cent;
map! £ &pound;
map! ¤ &curren;
map! ¥ &yen;
map! ¦ &brvbar;
map! § &sect;
map! ¨ &uml;
map! © &copy;
map! ª &ordf;
map! « &laquo;
map! ¬ &not;
map! ­ &shy;
map! ® &reg;
map! ¯ &macr;
map! ° &deg;
map! ± &plusmn;
map! ² &sup2;
map! ³ &sup3;
map! ´ &acute;
map! µ &micro;
map! ¶ &para;
map! · &middot;
map! ¸ &cedil;
map! ¹ &sup1;
map! º &ordm;
map! » &raquo;
map! ¼ &frac14;
map! ½ &frac12;
map! ¾ &frac34;
map! ¿ &iquest;

map! Á &Aacute;
map! \'A &Aacute;

map! À &Agrave;
map! \`A &Agrave;

map! Â &Acirc;
map! \^A &Acirc;

map! Ã &Atilde;
map! \~A &Atilde;

map! Ä &Auml;
map! \:A &Auml;

map! Å &Aring;
map! \°A &Aring;

map! Æ &AElig;
map! \AE &AElig;

map! Ç &Ccedil;
map! \C, &Ccedil;

map! É &Eacute;
map! \'E &Eacute;

map! È &Egrave;
map! \`E &Egrave;

map! Ê &Ecirc;
map! \^E &Ecirc;

map! Ë &Euml;
map! \:E &Euml;

map! Í &Iacute;
map! \'I &Iacute;

map! Ì &Igrave;
map! \`I &Igrave;

map! Î &Icirc;
map! \^I &Icirc;

map! Ï &Iuml;
map! \:I &Iuml;

map! Ð &ETH;
map! \-D &ETH;
map! \D- &ETH;

map! Ñ &Ntilde;
map! \~N &Ntilde;

map! Ó &Oacute;
map! \'O &Oacute;

map! Ò &Ograve;
map! \`O &Ograve;

map! Ô &Ocirc;
map! \^O &Ocirc;

map! Õ &Otilde;
map! \~O &Otilde;

map! Ö &Ouml;
map! \:O &Ouml;

map! × &times;

map! Ø &Oslash
map! \/O &Oslash
map! \O/ &Oslash

map! Ú &Oacute;
map! \'U &Oacute;

map! Ù &Ugrave;
map! \`U &Ugrave;

map! Û &Ucirc;
map! \^U &Ucirc;

map! Ü &Uuml;
map! \:U &Uuml;

map! Ý &Yacute;
map! \'Y &Yacute;

map! Þ &THORN;

map! ß &szlig;
map! \sz &szlig;
map! \ss &szlig;

map! á &aacute;
map! \'a &aacute;

map! à &agrave;
map! \`a &agrave;

map! â &acirc;
map! \^a &acirc;

map! ã &atilde;
map! \~a &atilde;

map! ä &auml;
map! \:a &auml;

map! å &aring;
map! \°a &aring;

map! æ &aelig;
map! \ae &aelig;

map! ç &ccedil;
map! \c, &ccedil;

map! é &eacute;
map! \'e &eacute;

map! è &egrave;
map! \`e &egrave;

map! ê &ecirc;
map! \^e &ecirc;

map! ë &euml;
map! \:e &euml;

map! í &iacute;
map! \'i &iacute;

map! ì &igrave;
map! \`i &igrave;

map! î &icirc;
map! \^i &icirc;

map! ï &iuml;
map! \:i &iuml;

map! ð &eth;

map! ñ &ntilde;
map! \~n &ntilde;

map! ó &oacute;
map! \'o &oacute;

map! ò &ograve;
map! \`o &ograve;

map! ô &ocirc;
map! \^o &ocirc;

map! õ &otilde;
map! \~o &otilde;

map! ö &ouml;
map! \:o &ouml;

map! ÷ &divide;
map! \:- &divide;
map! \-: &divide;

map! ø &oslash;
map! \o/ &oslash;

map! ú &uacute;
map! \'u &uacute;

map! ù &ugrave;
map! \`u &ugrave;

map! û &ucirc;
map! \^u &ucirc;

map! ü &uuml;
map! \:u &uuml;

map! ý &yacute;
map! \'y &yacute;

map! þ &thorn;

map! ÿ &yuml;
map! \:y &yuml;
map! \ij &yuml;

" Non-breaking space
map! \. &nbsp;

" Comments and the like
map! \! <!--   xxxa-->-A
map! \inc <!--#include virtual="" -->4hi

" Linebreak
map! \ <BR>

" divs with alignment
map! \dd <DIV>   xxxa</DIV>-A
map! \dc <DIV ALIGN=CENTER>   xxxa</DIV>-A
map! \dr <DIV ALIGN=RIGHT>   xxxa</DIV>-A

" Paragraphs with alignment
map! \pp <P>   xxxa</P>-A
map! \pc <P ALIGN=CENTER>   xxxa</P>-A
map! \pr <P ALIGN=RIGHT>   xxxa</P>-A

" Table
map! \tab <P><TABLE BORDER="1" CELLPADDING="5">  <TR>   xxxa</TR> xxxa</TABLE><P>---A
map! \cap <CAPTION>   xxxa</CAPTION>ka
map! \tr  <TR>   xxxa</TR>-A
map! \th  <TH>   xxxa</TH>-A
map! \td  <TD>   xxxa</TD>-A

" Description
map! \dl <DL>  <DT>  <STRONG></STRONG> xxxa</DT><DD>   xxxa</DD> xxxa</DL>5k7la
map! \dt <DT>  <STRONG></STRONG> xxxa</DT><DD>   xxxa</DD>4k5la

" Lists
map! \ol <OL>  <LI>   xxxa</LI> xxxa</OL>kka
map! \ul <UL>  <LI>   xxxa</LI> xxxa</UL>kka
map! \# +o<LI>   xxxa</LI>ka
map! \li -O<LI>   xxxa</LI>ka

" Preformatted text
map! \txt 0C<PRE></PRE>-A

" Qutation Block
:map! \" <BLOCKQUOTE>   xxxa</BLOCKQUOTE>-A

" Ruler
map! \-- <HR NOSHADE>
map! \-5 <P ALIGN="CENTER">  <HR NOSHADE WIDTH="50%"> xxxa</P>

" Link Line
"  o default
"  o prepend "ftp://"
"  o prepend "http://"
map! \lld ^d$a<A HREF="">pa</A>0/"a
map! \llf ^d$a<A HREF="ftp://">pa</A>0/"ni
map! \llh ^d$a<A HREF="http://">pa</A>0/"ni

" Link This - that is: Link text is (part of) URL
map! \ltd ^d$a<A HREF="pa">pa</A>0/"a
map! \ltf ^d$a<A HREF="ftp://pa">pa</A>
map! \lth ^d$a<A HREF="http://pa">pa</A>

"A name Line
map! \nl ^d$a<A NAME="">pa</A>0/"a

" Emphasis and strong emphasis - usenet style
map! \_ <EM></EM>4hi
map! \* <STRONG></STRONG>8hi

" Underline and strikethrough - use with care!
map! \U <U></U>3hi
map! \S <S></S>3hi

" Typewriter font
map! \tt <TT></TT>4hi

" Big and Small
map! \big <BIG></BIG>5hi
map! \small <SMALL></SMALL>7hi

" Subscript and superscript
map! \sub <SUB></SUB>5hi
map! \sup <SUP></SUP>5hi

" font size and face
"  o Arial
"  o Generic
"  o any Face
"  o any Size
"  o sYmbol
map! \fa <FONT FACE="Arial,Helvetica"></FONT>6hi
map! \fc <FONT COLOR=""></FONT>8hi
map! \fg <FONT =""></FONT>10hi
map! \ff <FONT FACE=""></FONT>8hi
map! \fs <FONT SIZE=""></FONT>8hi
map! \fy <FONT FACE="Symbol"></FONT>6hi

" Images
map! \im <IMG SRC="" ALT="[]">10hi

" Forms
map! \for <FORM ACTION="http://" METHOD="POST">   xxxa</FORM>kk15li
map! \inp <INPUT TYPE="" NAME="" VALUE="">18hi
map! \tex <TEXTAREA NAME="" ROWS="" COLS="">   xxxa</TEXTAREA>kk5la
map! \sel <SELECT NAME="" SIZE="">   xxxa</SELECT>kk5la
map! \opt <OPTION VALUE="">hi

" Java- and VBScript
map! \js <SCRIPT LANGUAGE="JavaScript">  <!--   xxxa//--> xxxa</SCRIPT>--A
map! \vb <SCRIPT LANGUAGE="VBscript">  <!--  close xxxa--> xxxa</SCRIPT>

"|"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"| What follows SHOULD be done using menus (too much to select from...)
"|_____________________________________________________________________________

" Colors

" HTML 3.2
imenu color.HTML\ 3\.2.aqua			#00FFFF
imenu color.HTML\ 3\.2.black			#000000
imenu color.HTML\ 3\.2.blue			#0000FF
imenu color.HTML\ 3\.2.fuchsia			#FF00FF
imenu color.HTML\ 3\.2.gray			#808080
imenu color.HTML\ 3\.2.green			#008000
imenu color.HTML\ 3\.2.lime			#00FF00
imenu color.HTML\ 3\.2.maroon			#800000
imenu color.HTML\ 3\.2.navy			#000080
imenu color.HTML\ 3\.2.olive			#808000
imenu color.HTML\ 3\.2.purple			#800080
imenu color.HTML\ 3\.2.red			#FF0000
imenu color.HTML\ 3\.2.silver			#C0C0C0
imenu color.HTML\ 3\.2.teal			#008080
imenu color.HTML\ 3\.2.white			#FFFFFF
imenu color.HTML\ 3\.2.yellow			#FFFF00

" A
imenu color.A.aliceblue				#F0F8FF
imenu color.A.antiquewhite			#FAEBD7
imenu color.A.aqua				#00FFFF
imenu color.A.aquamarine			#7FFFD4
imenu color.A.azure				#F0FFFF

" B
imenu color.B.beige				#F5F5DC
imenu color.B.bisque				#FFE4C4
imenu color.B.black				#000000
imenu color.B.blanchedalmond			#FFEBCD
imenu color.B.blue				#0000FF
imenu color.B.blueviolet			#8A2BE2
imenu color.B.brown				#A52A2A
imenu color.B.burlywood				#DEB887

" C
imenu color.C.cadetblue				#5F9EA0
imenu color.C.chartreuse			#7FFF00
imenu color.C.chocolate				#D2691E
imenu color.C.coral				#FF7F50
imenu color.C.cornflowerblue			#6495ED
imenu color.C.cornsilk				#FFF8DC
imenu color.C.crimson				#DC143C
imenu color.C.cyan				#00FFFF

" D
imenu color.D.darkblue				#00008B
imenu color.D.darkcyan				#008B8B
imenu color.D.darkgoldenrod			#B8860B
imenu color.D.darkgray				#A9A9A9
imenu color.D.darkgreen				#006400
imenu color.D.darkkhaki				#BDB76B
imenu color.D.darkmagenta			#8B008B
imenu color.D.darkolivegreen			#556B2F
imenu color.D.darkorange			#FF8C00
imenu color.D.darkorchide			#9932CC
imenu color.D.darkred				#8B0000
imenu color.D.darksalmon			#E9967A
imenu color.D.darkseagreen			#8FBC8F
imenu color.D.darkslateblue			#483D8B
imenu color.D.darkslategray			#2F4F4F
imenu color.D.darkturquoise			#00CED1
imenu color.D.darkviolet			#9400D3
imenu color.D.deeppink				#FF1493
imenu color.D.deepskyblue			#00BFFF
imenu color.D.dimgray				#696969
imenu color.D.dodgerblue			#1E90FF

" F
imenu color.F.firebrick				#B22222
imenu color.F.floralwhite			#FFFAF0
imenu color.F.forestgreen			#228B22
imenu color.F.fuchsia				#FF00FF

" G
imenu color.G.gainsboro				#DCDCDC
imenu color.G.ghostwhite			#F8F8FF
imenu color.G.gold				#FFD700
imenu color.G.goldenrod				#DAA520
imenu color.G.gray				#808080
imenu color.G.green				#008000
imenu color.G.greenyellow			#ADFF2F

" H
imenu color.H.honeydew				#F0FFF0
imenu color.H.hotpink				#FF69B4

" I
imenu color.I.indianred				#CD5C5C
imenu color.I.indigo				#4B0082
imenu color.I.ivory				#FFFFF0

" K
imenu color.K.khaki				#F0E68C

" L
imenu color.L.lavender				#E6E6FA
imenu color.L.lavenderblush			#FFF0F5
imenu color.L.lawngreen				#7CFC00
imenu color.L.lemonchiffon			#FFFACD
imenu color.L.lightblue				#ADD8E6
imenu color.L.lightcoral			#F08080
imenu color.L.lightcyan				#E0FFFF
imenu color.L.lightgoldenrodyellow		#FAFAD2
imenu color.L.lightgreen			#90EE90
imenu color.L.lightgray				#D3D3D3
imenu color.L.lightpink				#FFB6C1
imenu color.L.lightsalmon			#FFA07A
imenu color.L.lightseagreen			#20B2AA
imenu color.L.lightskyblue			#87CEFA
imenu color.L.lightslategray			#778899
imenu color.L.lightsteelblue			#B0C4DE
imenu color.L.lightyellow			#FFFFE0
imenu color.L.lime				#00FF00
imenu color.L.limegreen				#32CD32
imenu color.L.linen				#FAF0E6

" M
imenu color.M.magenta				#FF00FF
imenu color.M.maroon				#800000
imenu color.M.mediumaquamarine			#66CDAA
imenu color.M.mediumblue			#0000CD
imenu color.M.mediumorchid			#BA55D3
imenu color.M.mediumpurple			#9370DB
imenu color.M.mediumseagreen			#3CB371
imenu color.M.mediumslateblue			#7B68EE
imenu color.M.mediumspringgreen			#00FA9A
imenu color.M.mediumturquoise			#48D1CC
imenu color.M.mediumvioletred			#C71585
imenu color.M.midnightblue			#191970
imenu color.M.mintcream				#F5FFFA
imenu color.M.mistyrose				#FFE4E1
imenu color.M.moccasin				#FFE4B5

" N
imenu color.N.navajowhite			#FFDEAD
imenu color.N.navy				#000080

" O
imenu color.O.oldlace				#FDF5E6
imenu color.O.olive				#808000
imenu color.O.olivedrab				#6B8E23
imenu color.O.orange				#FFA500
imenu color.O.orangered				#FF4500
imenu color.O.orchid				#DA70D6

" P
imenu color.P.palegoldenrod			#EEE8AA
imenu color.P.palegreen				#98FB98
imenu color.P.paleturquoise			#AFEEEE
imenu color.P.palevioletred			#DB7093
imenu color.P.papayawhip			#FFEFD5
imenu color.P.peachpuff				#FFDAB9
imenu color.P.peru				#CD853F
imenu color.P.pink				#FFC0CB
imenu color.P.plum				#DDA0DD
imenu color.P.powderblue			#B0E0E6
imenu color.P.purple				#800080

" R
imenu color.R.red				#FF0000
imenu color.R.rosybrown				#BC8F8F
imenu color.R.royalblue				#4169E1

" S
imenu color.S.saddlebrown			#8B4513
imenu color.S.salmon				#FA8072
imenu color.S.sandybrown			#F4A460
imenu color.S.seagreen				#2E8B57
imenu color.S.seashell				#FFF5EE
imenu color.S.sienna				#A0522D
imenu color.S.silver				#C0C0C0
imenu color.S.skyblue				#87CEEB
imenu color.S.slateblue				#6A5ACD
imenu color.S.slategray				#708090
imenu color.S.snow				#FFFAFA
imenu color.S.springgreen			#00FF7F
imenu color.S.steelblue				#4682B4

" T
imenu color.T.tan				#D2B48C
imenu color.T.teal				#008080
imenu color.T.thistle				#D8BFD8
imenu color.T.tomato				#FF6347
imenu color.T.turquoise				#40E0D0

" V
imenu color.V.violet				#EE82EE

" W
imenu color.W.wheat				#F5DEB3
imenu color.W.white				#FFFFFF
imenu color.W.whitesmoke			#F5F5F5

" Y
imenu color.Y.yellow				#FFFF00
imenu color.Y.yellowgreen			#9ACD32

" Symbols

" arrows, - style
imenu symbol.arrow.-\ up			<FONT FACE="Symbol">&shy;a</FONT>
imenu symbol.arrow.-\ down			<FONT FACE="Symbol">&macr;a</FONT>
imenu symbol.arrow.-\ left			<FONT FACE="Symbol">&not;a</FONT>
imenu symbol.arrow.-\ right			<FONT FACE="Symbol">&reg;a</FONT>
imenu symbol.arrow.-\ leftright			<FONT FACE="Symbol">&laquo;a</FONT>
imenu symbol.arrow.\ 				a
imenu symbol.arrow.=\ up			<FONT FACE="Symbol">&Yacute;a</FONT>
imenu symbol.arrow.=\ down			<FONT FACE="Symbol">&szlig;a</FONT>
imenu symbol.arrow.=\ left			<FONT FACE="Symbol">&Uuml;a</FONT>
imenu symbol.arrow.=\ right			<FONT FACE="Symbol">&THORN;a</FONT>
imenu symbol.arrow.=\ leftright			<FONT FACE="Symbol">&Ucirc;a</FONT>

" derivatives
imenu symbol.derivatives.first			<FONT FACE="Symbol">&cent;a</FONT>
imenu symbol.derivatives.second			<FONT FACE="Symbol">&sup2;a</FONT>
imenu symbol.derivatives.\ 			a
imenu symbol.derivatives.partial		<FONT FACE="Symbol">&para;a</FONT>
imenu symbol.derivatives.nabla			<FONT FACE="Symbol">&Ntilde;a</FONT>

" geometry
imenu symbol.geometry.congruent			<FONT FACE="Symbol">@</FONT>
imenu symbol.geometry.perpendicular		<FONT FACE="Symbol">^</FONT>
imenu symbol.geometry.angle			<FONT FACE="Symbol">&ETH;a</FONT>
imenu symbol.geometry.angle,\ left\ (<)		<FONT FACE="Symbol">&ntilde;a</FONT>
imenu symbol.geometry.angle,\ right\ (>)	<FONT FACE="Symbol">&aacute;a</FONT>

" Lowercase Greek
imenu symbol.greek.lowercase.alpha		<FONT FACE="Symbol">a</FONT>
imenu symbol.greek.lowercase.beta		<FONT FACE="Symbol">b</FONT>
imenu symbol.greek.lowercase.gamma		<FONT FACE="Symbol">g</FONT>
imenu symbol.greek.lowercase.delta		<FONT FACE="Symbol">d</FONT>
imenu symbol.greek.lowercase.epsilon		<FONT FACE="Symbol">e</FONT>
imenu symbol.greek.lowercase.varepsilon		<FONT FACE="Symbol">e</FONT>
imenu symbol.greek.lowercase.zeta		<FONT FACE="Symbol">z</FONT>
imenu symbol.greek.lowercase.eta		<FONT FACE="Symbol">h</FONT>
imenu symbol.greek.lowercase.theta		<FONT FACE="Symbol">q</FONT>
imenu symbol.greek.lowercase.vartheta		<FONT FACE="Symbol">J</FONT>
imenu symbol.greek.lowercase.iota		<FONT FACE="Symbol">i</FONT>
imenu symbol.greek.lowercase.kappa		<FONT FACE="Symbol">k</FONT>
imenu symbol.greek.lowercase.lambda		<FONT FACE="Symbol">l</FONT>
imenu symbol.greek.lowercase.mu			<FONT FACE="Symbol">m</FONT>
imenu symbol.greek.lowercase.nu			<FONT FACE="Symbol">n</FONT>
imenu symbol.greek.lowercase.xi			<FONT FACE="Symbol">x</FONT>
imenu symbol.greek.lowercase.pi			<FONT FACE="Symbol">p</FONT>
imenu symbol.greek.lowercase.varpi		<FONT FACE="Symbol">v</FONT>
imenu symbol.greek.lowercase.rho		<FONT FACE="Symbol">r</FONT>
imenu symbol.greek.lowercase.varrho		<FONT FACE="Symbol">r</FONT>
imenu symbol.greek.lowercase.sigma		<FONT FACE="Symbol">s</FONT>
imenu symbol.greek.lowercase.varsigma		<FONT FACE="Symbol">V</FONT>
imenu symbol.greek.lowercase.tau		<FONT FACE="Symbol">t</FONT>
imenu symbol.greek.lowercase.upsilon		<FONT FACE="Symbol">u</FONT>
imenu symbol.greek.lowercase.phi		<FONT FACE="Symbol">f</FONT>
imenu symbol.greek.lowercase.varphi		<FONT FACE="Symbol">j</FONT>
imenu symbol.greek.lowercase.chi		<FONT FACE="Symbol">c</FONT>
imenu symbol.greek.lowercase.psi		<FONT FACE="Symbol">y</FONT>
imenu symbol.greek.lowercase.omega		<FONT FACE="Symbol">w</FONT>

" Uppercase Greek
imenu symbol.greek.uppercase.Gamma		<FONT FACE="Symbol">G</FONT>
imenu symbol.greek.uppercase.Delta		<FONT FACE="Symbol">D</FONT>
imenu symbol.greek.uppercase.Theta		<FONT FACE="Symbol">Q</FONT>
imenu symbol.greek.uppercase.Lambda		<FONT FACE="Symbol">L</FONT>
imenu symbol.greek.uppercase.Xi			<FONT FACE="Symbol">X</FONT>
imenu symbol.greek.uppercase.Pi			<FONT FACE="Symbol">P</FONT>
imenu symbol.greek.uppercase.Sigma		<FONT FACE="Symbol">S</FONT>
imenu symbol.greek.uppercase.Upsilon		<FONT FACE="Symbol">&iexcl;a</FONT>
imenu symbol.greek.uppercase.Phi		<FONT FACE="Symbol">F</FONT>
imenu symbol.greek.uppercase.Psi		<FONT FACE="Symbol">Y</FONT>
imenu symbol.greek.uppercase.Omega		<FONT FACE="Symbol">W</FONT>

" Some logic

imenu symbol.logic.and.vee			<FONT FACE="Symbol">&Ugrave;a</FONT>
imenu symbol.logic.and.&&			&amp;a
imenu symbol.logic.or.wedge			<FONT FACE="Symbol">&Uacute;a</FONT>
imenu symbol.logic.or.¦				&brvbar;a
imenu symbol.logic.not\ (¬)			&not;a
imenu symbol.logic.\ 				a
imenu symbol.logic.exists			<FONT FACE="Symbol">$</FONT>
imenu symbol.logic.forall			<FONT FACE="Symbol">"</FONT>
imenu symbol.logic.therefore			<FONT FACE="Symbol">\</FONT>

" <=, !=, >=, approximately =, proportional to, equivalence
imenu symbol.num\.\ relations.<			&lt;a
imenu symbol.num\.\ relations.<=		<FONT FACE="Symbol">&pound;a</FONT>
imenu symbol.num\.\ relations.<>		<FONT FACE="Symbol">&sup1;a</FONT>
imenu symbol.num\.\ relations.>=		<FONT FACE="Symbol">&sup3;a</FONT>
imenu symbol.num\.\ relations.>			&gt;a
imenu symbol.num\.\ relations.approximately\ =	<FONT FACE="Symbol">&raquo;a</FONT>
imenu symbol.num\.\ relations.equivlent\ to	<FONT FACE="Symbol">&ordm;a</FONT>
imenu symbol.num\.\ relations.proportional\ to	<FONT FACE="Symbol">&micro;a</FONT>

" (c), (R), and (TM)
imenu symbol.reserved\ rights.(c)		&copy;tcl
imenu symbol.reserved\ rights.(R)		&reg;tcl
imenu symbol.reserved\ rights.(TM)		<FONT FACE="Symbol">&auml;a</FONT>

" sectioning
imenu symbol.sectioning.°\ &&deg;		&deg;a
imenu symbol.sectioning.º\ &&ordm;		&ordm;a
imenu symbol.sectioning.ª\ &&ordf;		&ordf;a
imenu symbol.sectioning.¶\ &&para;		&para;a
imenu symbol.sectioning.§\ &&sect;		&sect;a

" (no) element of
imenu symbol.set.element.ni			<FONT FACE="Symbol">'</FONT>
imenu symbol.set.element.in			<FONT FACE="Symbol">&Icirc;a</FONT>
imenu symbol.set.element.not\ in		<FONT FACE="Symbol">&Iuml;a</FONT>

" member of both sets or of at least one set
imenu symbol.set.operation.intersection		<FONT FACE="Symbol">&Ccedil;a</FONT>
imenu symbol.set.operation.union		<FONT FACE="Symbol">&Egrave;a</FONT>

" (no) subset
imenu symbol.set.subset.no\ subset		<FONT FACE="Symbol">&Euml;a</FONT>
imenu symbol.set.subset.true\ subset		<FONT FACE="Symbol">&Igrave;a</FONT>
imenu symbol.set.subset.subset\ or\ equal	<FONT FACE="Symbol">&Iacute;a</FONT>

" superset
imenu symbol.set.superset.true\ superset	<FONT FACE="Symbol">&Eacute;a</FONT>
imenu symbol.set.superset.superset\ or\ equal	<FONT FACE="Symbol">&Ecirc;a</FONT>

" special characters
imenu symbol.special\ character.aleph		<FONT FACE="Symbol">&Agrave;a</FONT>
imenu symbol.special\ character.Im		<FONT FACE="Symbol">&Aacute;a</FONT>
imenu symbol.special\ character.Re		<FONT FACE="Symbol">&Acirc;a</FONT>
imenu symbol.special\ character.wp		<FONT FACE="Symbol">&Atilde;a</FONT>

" suits
imenu symbol.suit.clubsuit			<FONT FACE="Symbol">&sect;a</FONT>
imenu symbol.suit.diamondsuit			<FONT FACE="Symbol">&uml;a</FONT>
imenu symbol.suit.heartsuit			<FONT FACE="Symbol">&copy;a</FONT>
imenu symbol.suit.spadesuit			<FONT FACE="Symbol">&ordf;a</FONT>


" Sum, Prod, and the like
imenu symbol.sum,\ product,\ etc\..mean		<FONT FACE="Symbol">&AElig;a</FONT>
imenu symbol.sum,\ product,\ etc\..prod		<FONT FACE="Symbol">&Otilde;a</FONT>
imenu symbol.sum,\ product,\ etc\..sum		<FONT FACE="Symbol">&aring;a</FONT>
imenu symbol.sum,\ product,\ etc\..\ 		a
imenu symbol.sum,\ product,\ etc\..otimes	<FONT FACE="Symbol">&Auml;a</FONT>
imenu symbol.sum,\ product,\ etc\..oplus	<FONT FACE="Symbol">&Aring;a</FONT>

imenu symbol.misc.operations.bullet		<FONT FACE="Symbol">&middot;a</FONT>
imenu symbol.misc.operations.·\ &&middot;	&middot;a
imenu symbol.misc.operations.×\ (times)		&times;a
imenu symbol.misc.operations.÷\ (divide)	&divide;a
imenu symbol.misc.operations.\ 			a
imenu symbol.misc.operations.square\ root	<FONT FACE="Symbol">&Ouml;a</FONT>
imenu symbol.misc.operations.±\ (plusminus)	&plusmn;a

" Misc
imenu symbol.misc.symbols.math.infinity		<FONT FACE="Symbol">&yen;a</FONT>
imenu symbol.misc.symbols.math.\.\.\.		<FONT FACE="Symbol">&frac14;a</FONT>
imenu symbol.misc.symbols.math.q\.e\.d\.	<FONT FACE="Symbol">&agrave;a</FONT>
imenu symbol.misc.symbols.math.function\ f	<FONT FACE="Symbol">&brvbar;a</FONT>

" Accents
imenu symbol.misc.symbols.accents.¨\ &&uml;	&uml;a
imenu symbol.misc.symbols.accents.¯\ &&macr;	&macr;a
imenu symbol.misc.symbols.accents.´\ &&acute;	&acute;a
imenu symbol.misc.symbols.accents.¸\ &&cedil;	&cedil;a
imenu symbol.misc.symbols.carriage\ return	<FONT FACE="Symbol">&iquest;a</FONT>

" A,a
imenu ISO\ Latin\ 1.A,a.Á\ &&Aacute;		&Aacute;a
imenu ISO\ Latin\ 1.A,a.À\ &&Agrave;		&Agrave;a
imenu ISO\ Latin\ 1.A,a.Â\ &&Acirc;		&Acirc;a
imenu ISO\ Latin\ 1.A,a.Ã\ &&Atilde;		&Atilde;a
imenu ISO\ Latin\ 1.A,a.Ä\ &&Auml;		&Auml;a
imenu ISO\ Latin\ 1.A,a.Å\ &&Aring;		&Aring;a
imenu ISO\ Latin\ 1.A,a.Æ\ &&AElig;		&AElig;a
imenu ISO\ Latin\ 1.A,a.\			a
imenu ISO\ Latin\ 1.A,a.á\ &&aacute;		&aacute;a
imenu ISO\ Latin\ 1.A,a.à\ &&agrave;		&agrave;a
imenu ISO\ Latin\ 1.A,a.â\ &&acirc;		&acirc;a
imenu ISO\ Latin\ 1.A,a.ã\ &&atilde;		&atilde;a
imenu ISO\ Latin\ 1.A,a.ä\ &&auml;		&auml;a
imenu ISO\ Latin\ 1.A,a.å\ &&aring;		&aring;a
imenu ISO\ Latin\ 1.A,a.æ\ &&aelig;		&aelig;a

" C,c
imenu ISO\ Latin\ 1.C,c.Ç\ &&Ccedil;		&Ccedil;a
imenu ISO\ Latin\ 1.C,c.ç\ &&ccedil;		&ccedil;a

" E,e
imenu ISO\ Latin\ 1.E,e.É\ &&Eacute;		&Eacute;a
imenu ISO\ Latin\ 1.E,e.È\ &&Egrave;		&Egrave;a
imenu ISO\ Latin\ 1.E,e.Ê\ &&Ecirc;		&Ecirc;a
imenu ISO\ Latin\ 1.E,e.Ë\ &&Euml;		&Euml;a
imenu ISO\ Latin\ 1.E,e.\			a
imenu ISO\ Latin\ 1.E,e.é\ &&eacute;		&eacute;a
imenu ISO\ Latin\ 1.E,e.è\ &&egrave;		&egrave;a
imenu ISO\ Latin\ 1.E,e.ê\ &&ecirc;		&ecirc;a
imenu ISO\ Latin\ 1.E,e.ë\ &&euml;		&euml;a

" I,i
imenu ISO\ Latin\ 1.I,i.Í\ &&Iacute;		&Iacute;a
imenu ISO\ Latin\ 1.I,i.Ì\ &&Igrave;		&Igrave;a
imenu ISO\ Latin\ 1.I,i.Î\ &&Icirc;		&Icirc;a
imenu ISO\ Latin\ 1.I,i.Ï\ &&Iuml;		&Iuml;a
imenu ISO\ Latin\ 1.I,i.\			a
imenu ISO\ Latin\ 1.I,i.í\ &&iacute;		&iacute;a
imenu ISO\ Latin\ 1.I,i.ì\ &&igrave;		&igrave;a
imenu ISO\ Latin\ 1.I,i.î\ &&icirc;		&icirc;a
imenu ISO\ Latin\ 1.I,i.ï\ &&iuml;		&iuml;a

" N,n
imenu ISO\ Latin\ 1.N,n.Ñ\ &&Ntilde;		&Ntilde;a
imenu ISO\ Latin\ 1.N,n.ñ\ &&ntilde;		&ntilde;a

" O,o
imenu ISO\ Latin\ 1.O,o.Ó\ &&Oacute;		&Oacute;a
imenu ISO\ Latin\ 1.O,o.Ò\ &&Ograve;		&Ograve;a
imenu ISO\ Latin\ 1.O,o.Ô\ &&Ocirc;		&Ocirc;a
imenu ISO\ Latin\ 1.O,o.Õ\ &&Otilde;		&Otilde;a
imenu ISO\ Latin\ 1.O,o.Ö\ &&Ouml;		&Ouml;a
imenu ISO\ Latin\ 1.O,o.Ø\ &&Oslash		&Oslash
imenu ISO\ Latin\ 1.O,o.\			a
imenu ISO\ Latin\ 1.O,o.ó\ &&oacute;		&oacute;a
imenu ISO\ Latin\ 1.O,o.ò\ &&ograve;		&ograve;a
imenu ISO\ Latin\ 1.O,o.ô\ &&ocirc;		&ocirc;a
imenu ISO\ Latin\ 1.O,o.õ\ &&otilde;		&otilde;a
imenu ISO\ Latin\ 1.O,o.ö\ &&ouml;		&ouml;a
imenu ISO\ Latin\ 1.O,o.ø\ &&oslash;		&oslash;a

" U,u
imenu ISO\ Latin\ 1.U,u.Ú\ &&Uacute;		&Uacute;a
imenu ISO\ Latin\ 1.U,u.Ù\ &&Ugrave;		&Ugrave;a
imenu ISO\ Latin\ 1.U,u.Û\ &&Ucirc;		&Ucirc;a
imenu ISO\ Latin\ 1.U,u.Ü\ &&Uuml;		&Uuml;a
imenu ISO\ Latin\ 1.U,u.\			a
imenu ISO\ Latin\ 1.U,u.ú\ &&uacute;		&uacute;a
imenu ISO\ Latin\ 1.U,u.ù\ &&ugrave;		&ugrave;a
imenu ISO\ Latin\ 1.U,u.û\ &&ucirc;		&ucirc;a
imenu ISO\ Latin\ 1.U,u.ü\ &&uuml;		&uuml;a

" Y,y
imenu ISO\ Latin\ 1.Y,y.Ý\ &&Yacute;		&Yacute;a
imenu ISO\ Latin\ 1.Y,y.ý\ &&yacute;		&yacute;a
imenu ISO\ Latin\ 1.Y,y.ÿ\ &&yuml;		&yuml;a

" exponents and fractions
imenu ISO\ Latin\ 1.exp,\ fract.¹\ &&sup1;	&sup1;a
imenu ISO\ Latin\ 1.exp,\ fract.²\ &&sup2;	&sup2;a
imenu ISO\ Latin\ 1.exp,\ fract.³\ &&sup3;	&sup3;a
imenu ISO\ Latin\ 1.exp,\ fract.\		a
imenu ISO\ Latin\ 1.exp,\ fract.¼\ &&frac14;	&frac14;a
imenu ISO\ Latin\ 1.exp,\ fract.½\ &&frac12;	&frac12;a
imenu ISO\ Latin\ 1.exp,\ fract.¾\ &&frac34;	&frac34;a

" icelandic
imenu ISO\ Latin\ 1.icelandic.Ð\ &&ETH;		&ETH;a
imenu ISO\ Latin\ 1.icelandic.Þ\ &&THORN;	&THORN;a
imenu ISO\ Latin\ 1.icelandic.\ 		a
imenu ISO\ Latin\ 1.icelandic.ð\ &&eth;		&eth;a
imenu ISO\ Latin\ 1.icelandic.þ\ &&thorn;	&thorn;a

" marks
imenu ISO\ Latin\ 1.marks.¡\ &&iexcl;		&iexcl;a
imenu ISO\ Latin\ 1.marks.¿\ &&iquest;		&iquest;a
imenu ISO\ Latin\ 1.marks.«\ &&laquo;		&laquo;a
imenu ISO\ Latin\ 1.marks.»\ &&raquo;		&raquo;a

" monetary symbols
imenu ISO\ Latin\ 1.money.¢\ &&cent;		&cent;a
imenu ISO\ Latin\ 1.money.£\ &&pound;		&pound;a
imenu ISO\ Latin\ 1.money.¤\ &&curren;		&curren;a
imenu ISO\ Latin\ 1.money.¥\ &&yen;		&yen;a

" micro and sz-ligature (aka 'sharp s')
imenu ISO\ Latin\ 1.µ\ &&micro;			&micro;a
imenu ISO\ Latin\ 1.ß\ &&szlig;			&szlig;a
