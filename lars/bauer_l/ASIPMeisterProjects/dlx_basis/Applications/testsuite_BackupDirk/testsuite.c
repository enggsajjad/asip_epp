#ifndef COSY
	#include <stdio.h>
	#include <stdlib.h>
#endif

#define OPTIMIZE
#define COSY
#define USE_DA_EXAMPLE
#define USE_RANDOM


/* Forecast- und Spezialbefehle einbinden */
#include "basics.h"
#include "forecasts.h"



#define MSORT_MAX 5000
#define N    16

typedef char Pixel;
typedef Pixel Image[8][8];
typedef Pixel Kernel[8][8];
typedef struct
{
	unsigned long P[16 + 2];
	unsigned long S[4][256];
} BLOWFISH_CTX;


Image Input={
	{255, 255, 255, 255, 255, 255,   0,   0},
	{255, 255, 255, 255, 255,   0,   0,   0},
	{255, 255, 255, 255,   0,   0,   0, 255},
	{255, 255, 255,   0,   0,   0, 255, 255},
	{255, 255,   0,   0,   0, 255, 255, 255},
	{255,   0,   0,   0, 255, 255, 255, 255},
	{  0,   0,   0, 255, 255, 255, 255, 255},
	{  0,   0, 255, 255, 255, 255, 255, 255}
};

Image Output;

Kernel COS1={
	{ 125,  122,    115,    103,    88,     69,     47,     24  },
	{ 125,  103,    47,     -24,    -88,    -122,   -115,   -69  },
	{ 125,  69,     -47,    -122,   -88,    24,     115,    103  },
	{ 125,  24,     -115,   -69,    88,     103,    -47,    -122  },
	{ 125,  -24,    -115,   69,     88,     -103,   -47,    122  },
	{ 125,  -69,    -47,    122,    -88,    -24,    115,    -103  },
	{ 125,  -103,   47,     24,     -88,    122,    -115,   69  },
	{ 125,  -122,   115,    -103,   88,     -69,    47,     -24  }
};

Kernel COS2={
	{125, 125,  125,  125,  125,  125,  125,  125},
	{122, 103,  69,   24,   -24,  -69,  -103, -122},
	{115, 47,   -47,  -115, -115, -47,  47,   115},
	{103, -24,  -122, -69,  69,   122,  24,   -103},
	{88,  -88,  -88,  88,   88,   -88,  -88,  88},
	{69,  -122, 24,   103,  -103, -24,  122,  -69},
	{47,  -115, 115,  -47,  -47,  115,  -115, 47},
	{24,  -69,  103,  -122, 122,  -103, 69,   -24}
};


#ifdef COSY
	asm unsigned long MAD(unsigned long a, unsigned long b, unsigned long c)
	{
		@[ .barrier ]
		nop
		nop
		nop
		mad  @{}, @{a}, @{b}, @{c}
		nop
		nop
		nop
	}
#else
	static unsigned long MAD(unsigned long a, unsigned long b, unsigned long c)
	{
		return a + (b * c);
	}
#endif


char inputString1[] = "word0000word0001word0002word0003word0004word0005word0006word0007word0008word0009word0010word0011word0012word0013word0014word0015word0016word0017word0018word0019word0020word0021word0022word0023word0024word0025word0026word0027word0028word0029word0030word0031word0032word0033word0034word0035word0036word0037word0038word0039word0040word0041word0042word0043word0044word0045word0046word0047word0048word0049word0050word0051word0052word0053word0054word0055word0056word0057word0058word0059word0060word0061word0062word0063word0064word0065word0066word0067word0068word0069word0070word0071word0072word0073word0074word0075word0076word0077word0078word0079word0080word0081word0082word0083word0084word0085word0086word0087word0088word0089word0090word0091word0092word0093word0094word0095word0096word0097word0098word0099word0100word0101word0102word0103word0104word0105word0106word0107word0108word0109word0110word0111word0112word0113word0114word0115word0116word0117word0118word0119word0120word0121word0122word0123word0124word0125word0126word0127word0128word0129word0130word0131word0132word0133word0134word0135word0136word0137word0138word0139word0140word0141word0142word0143word0144word0145word0146word0147word0148word0149word0150word0151word0152word0153word0154word0155word0156word0157word0158word0159word0160word0161word0162word0163word0164word0165word0166word0167word0168word0169word0170word0171word0172word0173word0174word0175word0176word0177word0178word0179word0180word0181word0182word0183word0184word0185word0186word0187word0188word0189word0190word0191word0192word0193word0194word0195word0196word0197word0198word0199word0200word0201word0202word0203word0204word0205word0206word0207word0208word0209word0210word0211word0212word0213word0214word0215word0216word0217word0218word0219word0220word0221word0222word0223word0224word0225word0226word0227word0228word0229word0230word0231word0232word0233word0234word0235word0236word0237word0238word0239word0240word0241word0242word0243word0244word0245word0246word0247word0248word0249word0250word0251word0252word0253word0254word0255word0256word0257word0258word0259word0260word0261word0262word0263word0264word0265word0266word0267word0268word0269word0270word0271word0272word0273word0274word0275word0276word0277word0278word0279word0280word0281word0282word0283word0284word0285word0286word0287word0288word0289word0290word0291word0292word0293word0294word0295word0296word0297word0298word0299word0300word0301word0302word0303word0304word0305word0306word0307word0308word0309word0310word0311word0312word0313word0314word0315word0316word0317word0318word0319word0320word0321word0322word0323word0324word0325word0326word0327word0328word0329word0330word0331word0332word0333word0334word0335word0336word0337word0338word0339word0340word0341word0342word0343word0344word0345word0346word0347word0348word0349word0350word0351word0352word0353word0354word0355word0356word0357word0358word0359word0360word0361word0362word0363word0364word0365word0366word0367word0368word0369word0370word0371word0372word0373word0374word0375word0376word0377word0378word0379word0380word0381word0382word0383word0384word0385word0386word0387word0388word0389word0390word0391word0392word0393word0394word0395word0396word0397word0398word0399word0400word0401word0402word0403word0404word0405word0406word0407word0408word0409word0410word0411word0412word0413word0414word0415word0416word0417word0418word0419word0420word0421word0422word0423word0424word0425word0426word0427word0428word0429word0430word0431word0432word0433word0434word0435word0436word0437word0438word0439word0440word0441word0442word0443word0444word0445word0446word0447word0448word0449word0450word0451word0452word0453word0454word0455word0456word0457word0458word0459word0460word0461word0462word0463word0464word0465word0466word0467word0468word0469word0470word0471word0472word0473word0474word0475word0476word0477word0478word0479word0480word0481word0482word0483word0484word0485word0486word0487word0488word0489word0490word0491word0492word0493word0494word0495word0496word0497word0498word0499word0500word0501word0502word0503word0504word0505word0506word0507word0508word0509word0510word0511word0512word0513word0514word0515word0516word0517word0518word0519word0520word0521word0522word0523word0524word0525word0526word0527word0528word0529word0530word0531word0532word0533word0534word0535word0536word0537word0538word0539word0540word0541word0542word0543word0544word0545word0546word0547word0548word0549word0550word0551word0552word0553word0554word0555word0556word0557word0558word0559word0560word0561word0562word0563word0564word0565word0566word0567word0568word0569word0570word0571word0572word0573word0574word0575word0576word0577word0578word0579word0580word0581word0582word0583word0584word0585word0586word0587word0588word0589word0590word0591word0592word0593word0594word0595word0596word0597word0598word0599word0600word0601word0602word0603word0604word0605word0606word0607word0608word0609word0610word0611word0612word0613word0614word0615word0616word0617word0618word0619word0620word0621word0622word0623word0624word0625word0626word0627word0628word0629word0630word0631word0632word0633word0634word0635word0636word0637word0638word0639word0640word0641word0642word0643word0644word0645word0646word0647word0648word0649word0650word0651word0652word0653word0654word0655word0656word0657word0658word0659word0660word0661word0662word0663word0664word0665word0666word0667word0668word0669word0670word0671word0672word0673word0674word0675word0676word0677word0678word0679word0680word0681word0682word0683word0684word0685word0686word0687word0688word0689word0690word0691word0692word0693word0694word0695word0696word0697word0698word0699word0700word0701word0702word0703word0704word0705word0706word0707word0708word0709word0710word0711word0712word0713word0714word0715word0716word0717word0718word0719word0720word0721word0722word0723word0724word0725word0726word0727word0728word0729word0730word0731word0732word0733word0734word0735word0736word0737word0738word0739word0740word0741word0742word0743word0744word0745word0746word0747word0748word0749word0750word0751word0752word0753word0754word0755word0756word0757word0758word0759word0760word0761word0762word0763word0764word0765word0766word0767word0768word0769word0770word0771word0772word0773word0774word0775word0776word0777word0778word0779word0780word0781word0782word0783word0784word0785word0786word0787word0788word0789word0790word0791word0792word0793word0794word0795word0796word0797word0798word0799word0800word0801word0802word0803word0804word0805word0806word0807word0808word0809word0810word0811word0812word0813word0814word0815word0816word0817word0818word0819word0820word0821word0822word0823word0824word0825word0826word0827word0828word0829word0830word0831word0832word0833word0834word0835word0836word0837word0838word0839word0840word0841word0842word0843word0844word0845word0846word0847word0848word0849word0850word0851word0852word0853word0854word0855word0856word0857word0858word0859word0860word0861word0862word0863word0864word0865word0866word0867word0868word0869word0870word0871word0872word0873word0874word0875word0876word0877word0878word0879word0880word0881word0882word0883word0884word0885word0886word0887word0888word0889word0890word0891word0892word0893word0894word0895word0896word0897word0898word0899word0900word0901word0902word0903word0904word0905word0906word0907word0908word0909word0910word0911word0912word0913word0914word0915word0916word0917word0918word0919word0920word0921word0922word0923word0924word0925word0926word0927word0928word0929word0930word0931word0932word0933word0934word0935word0936word0937word0938word0939word0940word0941word0942word0943word0944word0945word0946word0947word0948word0949word0950word0951word0952word0953word0954word0955word0956word0957word0958word0959word0960word0961word0962word0963word0964word0965word0966word0967word0968word0969word0970word0971word0972word0973word0974word0975word0976word0977word0978word0979word0980word0981word0982word0983word0984word0985word0986word0987word0988word0989word0990word0991word0992word0993word0994word0995word0996word0997word0998word0999++ende\0";
char inputString2[] = "Der See macht eine Bucht ins Land, eine H�tte ist unweit dem Ufer, Fischerknabe f�hrt sich in einem Kahn. �ber den See hinweg sieht man die gr�nen Matten, D�rfer und H�fe von Schwyz im hellen Sonnenschein liegen. Zur Linken des Zuschauers zeigen sich die Spitzen des Haken, mit Wolken umgeben; zur Rechten im fernen Hintergrund sieht man die Eisgebirge. Noch ehe der Vorhang aufgeht, h�rt man den Kuhreihen und das harmonische Gel�ut der Herdenglocken, welches sich auch bei er�ffneter Szene noch eine Zeitlang fortsetzt. Fischerknabe singt im Kahn: Melodie des Kuhreihens Es l�chelt der See, er ladet zum Bade, Der Knabe schlief ein am gr�nen Gestade, Da h�rt er ein Klingen, Wie Fl�ten so s�ss, Wie Stimmen der Engel Im Paradies. Und wie er erwachet in seliger Lust, Da sp�len die Wasser ihn um die Brust, Und es ruft aus den Tiefen: Lieb Knabe, bist mein! Ich locke den Sch�fer, Ich zieh ihn herein. Hirte auf dem Berge: Variation des Kuhreihens Ihr Matten lebt wohl, Ihr sonnigen Weiden! Der Senn muss scheiden, Der Sommer ist hin. Wir fahren zu Berg, wir kommen wieder, Wenn der Kuckuck ruft, wenn erwachen die Lieder, Wenn mit Blumen die Erde sich kleidet neu, Wenn die Br�nnlein fliessen im lieblichen Mai Ihr Matten lebt wohl, Ihr sonnigen Weiden! Der Senne muss scheiden, Der Sommer ist hin. Alpenj�ger erscheint gegen�ber auf der H�he des Felsen: Zweite Variation Es donnern die H�hen, es zittert der Steg, Nicht grauet dem Sch�tzen auf schwindlichtem Weg, Er schreitet verwegen Auf Feldern von Eis, Da pranget kein Fr�hling, Da gr�net kein Reis; Und unter den F�ssen ein neblichtes Meer, Erkennt er die St�dte der Menschen nicht mehr, Durch den Riss nur der Wolken Erblickt er die Welt, Tief unter den Wassern Das gr�nende Feld. Die Landschaft ver�ndert sich, man h�rt ein dumpfes Krachen von den Bergen, Schatten von Wolken laufen �ber die Gegend. Ruodi der Fischer kommt aus der H�tte, Werni der J�ger steigt vom Felsen, Kuoni der Hirte kommt, mit dem Melknapf auf der Schulter. Seppi, sein Handbube, folgt ihm. Ruodi: Mach hurtig Jenni. Zieh die Naue ein. Der graue Talvogt kommt, dumpf br�llt der Firn, Der Mythenstein zieht seine Haube an, Und kalt her bl�st es aus dem Wetterloch, Der Sturm, ich mein, wird dasein, eh wir's denken. Kuoni: 's kommt Regen, F�hrmann. Meine Schafe fressen Mit Begierde Gras, und W�chter scharrt die Erde. Werni: Die Fische springen, und das Wasserhuhn Taucht unter. Ein Gewitter ist im Anzug. Kuoni zum Buben: Lug Seppi, ob das Vieh sich nicht verlaufen. Seppi: Die braune Liesel kenn ich am Gel�ut. Kuoni: So fehlt uns keine mehr, die geht am weitsten. Ruodi: Ihr habt ein sch�n Gel�ute, Meister Hirt. Werni: Und schmuckes Vieh - Ist's Euer eigenes, Landsmann? Kuoni: Bin nit so reich - 's ist meines gn�digen Herrn, Des Attingh�users, und mir zugez�hlt. Ruodi: Wie sch�n der Kuh das Band zu Halse steht! Kuoni: Das weiss sie auch, dass sie den Reihen f�hrt, Und n�hm ich ihr's, sie h�rte auf zu fressen. Ruodi: Ihr seid nicht klug! Ein unvern�nft'ges Vieh - Werni: Ist bald gesagt. Das Tier hat auch Vernunft, Das wissen wir, die wir die Gemsen jagen, Die stellen klug, wo sie zur Weide gehn, 'ne Vorhut aus, die spitzt das Ohr und warnet Mit heller Pfeife, wenn der J�ger naht. Ruodi zum Hirten: Treibt Ihr jetzt heim? Kuoni: Die Alp ist abgeweidet. Werni: Gl�cksel'ge Heimkehr, Senn! Kuoni: Die w�nsch ich Euch, Von Eurer Fahrt kehrt sich's nicht immer wieder. Ruodi: Dort kommt ein Mann in voller Hast gelaufen. Werni: Ich kenn ihn, 's ist der Baumgart von Alzellen. Konrad Baumgarten atemlos hereinst�rzend. Baumgarten: Um Gottes willen, F�hrmann, Euren Kahn! Ruodi: Nun, nun, was gibt's so eilig? Baumgarten: Bindet los! Ihr rettet mich vom Tode! Setzt mich �ber! Kuoni: Landsmann, was hat Ihr? Werni: Wer verfolgt Euch denn? Baumgarten zum Fischer: Eilt, eilt, sie sind mir dicht schon an den Fersen! De Landvogts Reiter kommen hinter mir, Ich bin ein Mann des Tods, wenn sie mich greifen. Ruodi: Warum verfolgen Euch die Reisigen? Baumgarten: Erst rettet mich, und dann steh ich Euch Rede. Werni: Ihr seid mit Blut befleckt, was hat's gegeben? Baumgarten: Des Kaisers Burgvogt, der auf dem Rossberg sass - Kuoni: Der Wolfenschiessen! L�sst Euch der verfolgen? Baumgarten: Der schadet nicht mehr, ich hab ihn erschlagen. Alle fahren zur�ck: Gott sei Euch gn�dig! Was habt Ihr getan? Baumgarten: Was jeder freie Mann an meinem Platz! Mein gutes Hausrecht hab ich ausge�bt Am Sch�nder meiner Ehr und meines Weibes. Kuoni: Hat Euch der Burgvogt an der Ehr gesch�digt? Baumgarten: Dass er sein b�s Gel�sten nicht vollbracht, Hat Gott und meine gute Axt verh�tet. Werni: Ihr habt ihm mit der Axt den Kopf zerspalten? Kuoni: O lasst uns alles h�ren. Ihr habt Zeit, Bis er den Kahn vom Ufer losgebunden. Baumgarten: Ich hatte Holz gef�llt im Wald, da kommt Mein Weib gelaufen in der Angst des Todes. Der Burgvogt liegt in meinem Haus, er hab Ihr anbefohlen, ihm ein Bad zu r�sten. Drauf hab er Ungeb�hrliches von ihr Verlangt, sie sei entsprungen, mich zu suchen. Da lief ich frisch hinzu, so wie ich war, Und mit der Axt hab ich ihm 's Bad gesegnet. Werni: Ihr tatet wohl, kein Mensch kann Euch drum schelten. Kuoni: Der W�terich! Der hat nun seinen Lohn! Hat's lang verdient ums Volk von Unterwalden. Baumgarten: Die Tat ward ruchbar, mir wird nachgesetzt - Indem wir sprechen - Gott - verrinnt die Zeit - Es f�ngt an zu donnern. Kuoni: Frisch F�hrmann - Schaff den Biedermann hin�ber. Ruodi: Geht nicht. Ein schweres Ungewitter ist Im Anzug. Ihr m�sst warten. Baumgarten: Heil'ger Gott! Ich kann nicht warten. Jeder Aufschub t�tet - Kuoni zum Fischer: Greif an mit Gott, dem N�chsten muss man helfen, Es kann uns allen Gleiches ja begegnen. Brausen und Donnern. Ruodi: Der F�hn ist los, ihr seht wie hoch der See geht, Ich kann nicht steuern gegen Sturm und Wellen. Baumgarten umfasst seine Knie: So helf Euch Gott, wie Ihr Euch mein erbarmet - Werni: Es geht ums Leben, sei barmherzig, F�hrmann. Kuoni: s'ist ein Hausvater, und hat Weib und Kinder! Wiederholte Donnerschl�ge. Ruodi: Was? Ich hab auch ein Leben zu verlieren, Hab Weib und Kind daheim, wie er - Seht hin Wie's brandet, wie es wogt und Wirbel zieht, Und alle Wasser aufr�hrt in der Tiefe. - Ich wollte gern den Biedermann erretten, Doch es ist rein unm�glich, ihr seht selbst. Baumgarten noch auf den Knien: So muss ich fallen in des Feindes Hand, Das nahe Rettungsufer im Gesichte! - Dort liegt's! Ich kann's erreichen mit den Augen Hin�berdringen kann der Stimme Schall, Da ist der Kahn, der mich hin�bertr�ge, Und muss hier liegen, h�lflos, und verzagen! Kuoni: Seht wer da kommt! Werni: Es ist der Tell aus B�rglen! Tell mit der Armbrust. Tell: Wer ist der Mann, der hier um H�lfe fleht? Kuoni: 's ist ein Alzeller Mann, er hat sein Ehr Verteidigt, und den Wolfenschiess erschlagen, Des K�nigs Burgvogt, der auf Rossberg sass - Des Landvogts Reiter sind ihm auf den Fersen. Er fleht den Schiffer um die Ueberfahrt, Der f�rcht't sich vor dem Sturm und will nicht fahren. Ruodi: Da ist der Tell, er f�hrt das Ruder auch, Der soll mir's zeugen, ob die Fahrt zu wagen. Tell: Wo's not tut, F�hrmann, l�sst sich alles wagen. Heftige Donnerschl�ge, der See rauscht auf. Ruodi:  Ich soll mich in den H�llenrachen st�rzen? Das t�te keiner, der bei Sinnen ist. Tell: Der brave Mann denkt an sich selbst zuletzt, Vertrau' auf Gott und rette den Bedr�ngten. Ruodi: Vom sicheren Port l�sst sich's gem�chlich raten, Da ist der Kahn und dort der See! Versucht's! Tell: Der See kann sich, der Landvogt nicht erbarmen, Versuch es F�hrmann! Hirten und J�ger: Rett ihn! Rett ihn! Rett ihn! Ruodi: Und w�r's mein Bruder und mein leiblich Kind, Es kann nicht sein, s'ist heut Simons und Jud�, Da rast der See und will sein Opfer haben. Tell: Mit eitler Rede wird hier nichts geschafft, Die Stunde dringt, dem Mann muss H�lfe werden. Sprich, F�hrmann, willst du fahren? Ruodi: Nein, nicht ich! Tell: In Gottes Namen denn! Gib her den Kahn, Ich will's mit meiner schwachen Kraft versuchen. Kuoni: Ha, wackrer Tell! Werni: Das gleicht dem Waidgesellen! Baumgarten: Mein Retter seid Ihr und mein Engel, Tell! Tell: Wohl aus des Vogts Gewalt errett ich Euch, Aus Sturmesn�ten muss ein andrer helfen. Doch besser ist's, Ihr fallt in Gottes Hand, Als in der Menschen! Zu dem Hirten: Landsmann, tr�stet Ihr Mein Weib, wenn mir was Menschliches begegnet, Ich hab getan, was ich nicht lassen konnte. Er springt in den Kahn. Kuoni zum Fischer: Ihr seid ein Meister Steuermann. Was sich Der Tell getraut, das konntet Ihr nicht wagen? Ruodi: Wohl bessre M�nner tun's dem Tell nicht nach, Es gibt nicht zwei, wie der ist, im Gebirge. Werni ist auf den Fels gestiegen: Er st�sst schon ab. Gott helf dir, braver Schwimmer! Sieh, wie das Schifflein auf den Wellen schwankt! Kuoni am Ufer: Die Flut geht dr�ber weg - Ich seh's nicht mehr. Doch halt, da ist es wieder! Kr�ftiglich Arbeitet sich der Wackre durch die Brandung. Seppi: Des Landvogts Reiter kommen angesprengt. Kuoni: Weiss Gott, sie sind's! das war H�lf in der Not. Ein Trupp Landenbergischer Reiter. Erster Reiter: Den M�rder gebt heraus, den ihr verborgen. Zweiter: Des Wegs kam er, umsonst verhehlt ihr ihn. Kuoni und Ruodi: Wen meint ihr, Reiter? Erster Reiter entdeckt den Nachen: Ha, was seh ich! Teufel! Werni oben: Ist's der im Nachen, den ihr sucht? - Reit zu! Wen ihr frisch beilegt, holt ihr ihn noch ein. Zweiter: Verw�nscht! Er ist entwischt. Erster zum Hirten und Fischer: Ihr habt ihm fortgeholfen, Ihr sollt uns b�ssen - Fallt in ihre Herde! Die H�tte reisset ein, brennt und schlagt nieder! Eilen fort. Seppi st�rzt nach: O meine L�mmer! Kuoni folgt: Weh mir! Meine Herde! Ruodi ringt die H�nde: Gerechtigkeit des Himmels, Wann wird der Retter kommen diesem Lande? Folgt ihnen.\0\0\0\0\0";
char inputString3[] = "Das Reh springt hoch, das Reh springt weit. Warum auch nicht - es hat ja Zeit!\0";

#define inputLength1 sizeof(inputString1)
#define inputLength2 sizeof(inputString2)
#define inputLength3 sizeof(inputString3)

long dummy1;  // Workaround, um den Compiler zu forcen, das Array an Word-Adressen zu alignen.
char encryptedString1[inputLength1];
long dummy2;
char encryptedString2[inputLength2];
long dummy3;
char encryptedString3[inputLength3];
long dummy4;
char decryptedString1[inputLength1];
long dummy5;
char decryptedString2[inputLength2];
long dummy6;
char decryptedString3[inputLength3];

BLOWFISH_CTX ctx;

char msort_array1[inputLength1];
char msort_array2[inputLength2];
char msort_array3[inputLength3];

static const unsigned long ORIG_P[16 + 2] = {
        0x243F6A88L, 0x85A308D3L, 0x13198A2EL, 0x03707344L,
        0xA4093822L, 0x299F31D0L, 0x082EFA98L, 0xEC4E6C89L,
        0x452821E6L, 0x38D01377L, 0xBE5466CFL, 0x34E90C6CL,
        0xC0AC29B7L, 0xC97C50DDL, 0x3F84D5B5L, 0xB5470917L,
        0x9216D5D9L, 0x8979FB1BL
};

static const unsigned long ORIG_S[4][256] = {
    {   0xD1310BA6L, 0x98DFB5ACL, 0x2FFD72DBL, 0xD01ADFB7L,
        0xB8E1AFEDL, 0x6A267E96L, 0xBA7C9045L, 0xF12C7F99L,
        0x24A19947L, 0xB3916CF7L, 0x0801F2E2L, 0x858EFC16L,
        0x636920D8L, 0x71574E69L, 0xA458FEA3L, 0xF4933D7EL,
        0x0D95748FL, 0x728EB658L, 0x718BCD58L, 0x82154AEEL,
        0x7B54A41DL, 0xC25A59B5L, 0x9C30D539L, 0x2AF26013L,
        0xC5D1B023L, 0x286085F0L, 0xCA417918L, 0xB8DB38EFL,
        0x8E79DCB0L, 0x603A180EL, 0x6C9E0E8BL, 0xB01E8A3EL,
        0xD71577C1L, 0xBD314B27L, 0x78AF2FDAL, 0x55605C60L,
        0xE65525F3L, 0xAA55AB94L, 0x57489862L, 0x63E81440L,
        0x55CA396AL, 0x2AAB10B6L, 0xB4CC5C34L, 0x1141E8CEL,
        0xA15486AFL, 0x7C72E993L, 0xB3EE1411L, 0x636FBC2AL,
        0x2BA9C55DL, 0x741831F6L, 0xCE5C3E16L, 0x9B87931EL,
        0xAFD6BA33L, 0x6C24CF5CL, 0x7A325381L, 0x28958677L,
        0x3B8F4898L, 0x6B4BB9AFL, 0xC4BFE81BL, 0x66282193L,
        0x61D809CCL, 0xFB21A991L, 0x487CAC60L, 0x5DEC8032L,
        0xEF845D5DL, 0xE98575B1L, 0xDC262302L, 0xEB651B88L,
        0x23893E81L, 0xD396ACC5L, 0x0F6D6FF3L, 0x83F44239L,
        0x2E0B4482L, 0xA4842004L, 0x69C8F04AL, 0x9E1F9B5EL,
        0x21C66842L, 0xF6E96C9AL, 0x670C9C61L, 0xABD388F0L,
        0x6A51A0D2L, 0xD8542F68L, 0x960FA728L, 0xAB5133A3L,
        0x6EEF0B6CL, 0x137A3BE4L, 0xBA3BF050L, 0x7EFB2A98L,
        0xA1F1651DL, 0x39AF0176L, 0x66CA593EL, 0x82430E88L,
        0x8CEE8619L, 0x456F9FB4L, 0x7D84A5C3L, 0x3B8B5EBEL,
        0xE06F75D8L, 0x85C12073L, 0x401A449FL, 0x56C16AA6L,
        0x4ED3AA62L, 0x363F7706L, 0x1BFEDF72L, 0x429B023DL,
        0x37D0D724L, 0xD00A1248L, 0xDB0FEAD3L, 0x49F1C09BL,
        0x075372C9L, 0x80991B7BL, 0x25D479D8L, 0xF6E8DEF7L,
        0xE3FE501AL, 0xB6794C3BL, 0x976CE0BDL, 0x04C006BAL,
        0xC1A94FB6L, 0x409F60C4L, 0x5E5C9EC2L, 0x196A2463L,
        0x68FB6FAFL, 0x3E6C53B5L, 0x1339B2EBL, 0x3B52EC6FL,
        0x6DFC511FL, 0x9B30952CL, 0xCC814544L, 0xAF5EBD09L,
        0xBEE3D004L, 0xDE334AFDL, 0x660F2807L, 0x192E4BB3L,
        0xC0CBA857L, 0x45C8740FL, 0xD20B5F39L, 0xB9D3FBDBL,
        0x5579C0BDL, 0x1A60320AL, 0xD6A100C6L, 0x402C7279L,
        0x679F25FEL, 0xFB1FA3CCL, 0x8EA5E9F8L, 0xDB3222F8L,
        0x3C7516DFL, 0xFD616B15L, 0x2F501EC8L, 0xAD0552ABL,
        0x323DB5FAL, 0xFD238760L, 0x53317B48L, 0x3E00DF82L,
        0x9E5C57BBL, 0xCA6F8CA0L, 0x1A87562EL, 0xDF1769DBL,
        0xD542A8F6L, 0x287EFFC3L, 0xAC6732C6L, 0x8C4F5573L,
        0x695B27B0L, 0xBBCA58C8L, 0xE1FFA35DL, 0xB8F011A0L,
        0x10FA3D98L, 0xFD2183B8L, 0x4AFCB56CL, 0x2DD1D35BL,
        0x9A53E479L, 0xB6F84565L, 0xD28E49BCL, 0x4BFB9790L,
        0xE1DDF2DAL, 0xA4CB7E33L, 0x62FB1341L, 0xCEE4C6E8L,
        0xEF20CADAL, 0x36774C01L, 0xD07E9EFEL, 0x2BF11FB4L,
        0x95DBDA4DL, 0xAE909198L, 0xEAAD8E71L, 0x6B93D5A0L,
        0xD08ED1D0L, 0xAFC725E0L, 0x8E3C5B2FL, 0x8E7594B7L,
        0x8FF6E2FBL, 0xF2122B64L, 0x8888B812L, 0x900DF01CL,
        0x4FAD5EA0L, 0x688FC31CL, 0xD1CFF191L, 0xB3A8C1ADL,
        0x2F2F2218L, 0xBE0E1777L, 0xEA752DFEL, 0x8B021FA1L,
        0xE5A0CC0FL, 0xB56F74E8L, 0x18ACF3D6L, 0xCE89E299L,
        0xB4A84FE0L, 0xFD13E0B7L, 0x7CC43B81L, 0xD2ADA8D9L,
        0x165FA266L, 0x80957705L, 0x93CC7314L, 0x211A1477L,
        0xE6AD2065L, 0x77B5FA86L, 0xC75442F5L, 0xFB9D35CFL,
        0xEBCDAF0CL, 0x7B3E89A0L, 0xD6411BD3L, 0xAE1E7E49L,
        0x00250E2DL, 0x2071B35EL, 0x226800BBL, 0x57B8E0AFL,
        0x2464369BL, 0xF009B91EL, 0x5563911DL, 0x59DFA6AAL,
        0x78C14389L, 0xD95A537FL, 0x207D5BA2L, 0x02E5B9C5L,
        0x83260376L, 0x6295CFA9L, 0x11C81968L, 0x4E734A41L,
        0xB3472DCAL, 0x7B14A94AL, 0x1B510052L, 0x9A532915L,
        0xD60F573FL, 0xBC9BC6E4L, 0x2B60A476L, 0x81E67400L,
        0x08BA6FB5L, 0x571BE91FL, 0xF296EC6BL, 0x2A0DD915L,
        0xB6636521L, 0xE7B9F9B6L, 0xFF34052EL, 0xC5855664L,
        0x53B02D5DL, 0xA99F8FA1L, 0x08BA4799L, 0x6E85076AL   },
    {   0x4B7A70E9L, 0xB5B32944L, 0xDB75092EL, 0xC4192623L,
        0xAD6EA6B0L, 0x49A7DF7DL, 0x9CEE60B8L, 0x8FEDB266L,
        0xECAA8C71L, 0x699A17FFL, 0x5664526CL, 0xC2B19EE1L,
        0x193602A5L, 0x75094C29L, 0xA0591340L, 0xE4183A3EL,
        0x3F54989AL, 0x5B429D65L, 0x6B8FE4D6L, 0x99F73FD6L,
        0xA1D29C07L, 0xEFE830F5L, 0x4D2D38E6L, 0xF0255DC1L,
        0x4CDD2086L, 0x8470EB26L, 0x6382E9C6L, 0x021ECC5EL,
        0x09686B3FL, 0x3EBAEFC9L, 0x3C971814L, 0x6B6A70A1L,
        0x687F3584L, 0x52A0E286L, 0xB79C5305L, 0xAA500737L,
        0x3E07841CL, 0x7FDEAE5CL, 0x8E7D44ECL, 0x5716F2B8L,
        0xB03ADA37L, 0xF0500C0DL, 0xF01C1F04L, 0x0200B3FFL,
        0xAE0CF51AL, 0x3CB574B2L, 0x25837A58L, 0xDC0921BDL,
        0xD19113F9L, 0x7CA92FF6L, 0x94324773L, 0x22F54701L,
        0x3AE5E581L, 0x37C2DADCL, 0xC8B57634L, 0x9AF3DDA7L,
        0xA9446146L, 0x0FD0030EL, 0xECC8C73EL, 0xA4751E41L,
        0xE238CD99L, 0x3BEA0E2FL, 0x3280BBA1L, 0x183EB331L,
        0x4E548B38L, 0x4F6DB908L, 0x6F420D03L, 0xF60A04BFL,
        0x2CB81290L, 0x24977C79L, 0x5679B072L, 0xBCAF89AFL,
        0xDE9A771FL, 0xD9930810L, 0xB38BAE12L, 0xDCCF3F2EL,
        0x5512721FL, 0x2E6B7124L, 0x501ADDE6L, 0x9F84CD87L,
        0x7A584718L, 0x7408DA17L, 0xBC9F9ABCL, 0xE94B7D8CL,
        0xEC7AEC3AL, 0xDB851DFAL, 0x63094366L, 0xC464C3D2L,
        0xEF1C1847L, 0x3215D908L, 0xDD433B37L, 0x24C2BA16L,
        0x12A14D43L, 0x2A65C451L, 0x50940002L, 0x133AE4DDL,
        0x71DFF89EL, 0x10314E55L, 0x81AC77D6L, 0x5F11199BL,
        0x043556F1L, 0xD7A3C76BL, 0x3C11183BL, 0x5924A509L,
        0xF28FE6EDL, 0x97F1FBFAL, 0x9EBABF2CL, 0x1E153C6EL,
        0x86E34570L, 0xEAE96FB1L, 0x860E5E0AL, 0x5A3E2AB3L,
        0x771FE71CL, 0x4E3D06FAL, 0x2965DCB9L, 0x99E71D0FL,
        0x803E89D6L, 0x5266C825L, 0x2E4CC978L, 0x9C10B36AL,
        0xC6150EBAL, 0x94E2EA78L, 0xA5FC3C53L, 0x1E0A2DF4L,
        0xF2F74EA7L, 0x361D2B3DL, 0x1939260FL, 0x19C27960L,
        0x5223A708L, 0xF71312B6L, 0xEBADFE6EL, 0xEAC31F66L,
        0xE3BC4595L, 0xA67BC883L, 0xB17F37D1L, 0x018CFF28L,
        0xC332DDEFL, 0xBE6C5AA5L, 0x65582185L, 0x68AB9802L,
        0xEECEA50FL, 0xDB2F953BL, 0x2AEF7DADL, 0x5B6E2F84L,
        0x1521B628L, 0x29076170L, 0xECDD4775L, 0x619F1510L,
        0x13CCA830L, 0xEB61BD96L, 0x0334FE1EL, 0xAA0363CFL,
        0xB5735C90L, 0x4C70A239L, 0xD59E9E0BL, 0xCBAADE14L,
        0xEECC86BCL, 0x60622CA7L, 0x9CAB5CABL, 0xB2F3846EL,
        0x648B1EAFL, 0x19BDF0CAL, 0xA02369B9L, 0x655ABB50L,
        0x40685A32L, 0x3C2AB4B3L, 0x319EE9D5L, 0xC021B8F7L,
        0x9B540B19L, 0x875FA099L, 0x95F7997EL, 0x623D7DA8L,
        0xF837889AL, 0x97E32D77L, 0x11ED935FL, 0x16681281L,
        0x0E358829L, 0xC7E61FD6L, 0x96DEDFA1L, 0x7858BA99L,
        0x57F584A5L, 0x1B227263L, 0x9B83C3FFL, 0x1AC24696L,
        0xCDB30AEBL, 0x532E3054L, 0x8FD948E4L, 0x6DBC3128L,
        0x58EBF2EFL, 0x34C6FFEAL, 0xFE28ED61L, 0xEE7C3C73L,
        0x5D4A14D9L, 0xE864B7E3L, 0x42105D14L, 0x203E13E0L,
        0x45EEE2B6L, 0xA3AAABEAL, 0xDB6C4F15L, 0xFACB4FD0L,
        0xC742F442L, 0xEF6ABBB5L, 0x654F3B1DL, 0x41CD2105L,
        0xD81E799EL, 0x86854DC7L, 0xE44B476AL, 0x3D816250L,
        0xCF62A1F2L, 0x5B8D2646L, 0xFC8883A0L, 0xC1C7B6A3L,
        0x7F1524C3L, 0x69CB7492L, 0x47848A0BL, 0x5692B285L,
        0x095BBF00L, 0xAD19489DL, 0x1462B174L, 0x23820E00L,
        0x58428D2AL, 0x0C55F5EAL, 0x1DADF43EL, 0x233F7061L,
        0x3372F092L, 0x8D937E41L, 0xD65FECF1L, 0x6C223BDBL,
        0x7CDE3759L, 0xCBEE7460L, 0x4085F2A7L, 0xCE77326EL,
        0xA6078084L, 0x19F8509EL, 0xE8EFD855L, 0x61D99735L,
        0xA969A7AAL, 0xC50C06C2L, 0x5A04ABFCL, 0x800BCADCL,
        0x9E447A2EL, 0xC3453484L, 0xFDD56705L, 0x0E1E9EC9L,
        0xDB73DBD3L, 0x105588CDL, 0x675FDA79L, 0xE3674340L,
        0xC5C43465L, 0x713E38D8L, 0x3D28F89EL, 0xF16DFF20L,
        0x153E21E7L, 0x8FB03D4AL, 0xE6E39F2BL, 0xDB83ADF7L   },
    {   0xE93D5A68L, 0x948140F7L, 0xF64C261CL, 0x94692934L,
        0x411520F7L, 0x7602D4F7L, 0xBCF46B2EL, 0xD4A20068L,
        0xD4082471L, 0x3320F46AL, 0x43B7D4B7L, 0x500061AFL,
        0x1E39F62EL, 0x97244546L, 0x14214F74L, 0xBF8B8840L,
        0x4D95FC1DL, 0x96B591AFL, 0x70F4DDD3L, 0x66A02F45L,
        0xBFBC09ECL, 0x03BD9785L, 0x7FAC6DD0L, 0x31CB8504L,
        0x96EB27B3L, 0x55FD3941L, 0xDA2547E6L, 0xABCA0A9AL,
        0x28507825L, 0x530429F4L, 0x0A2C86DAL, 0xE9B66DFBL,
        0x68DC1462L, 0xD7486900L, 0x680EC0A4L, 0x27A18DEEL,
        0x4F3FFEA2L, 0xE887AD8CL, 0xB58CE006L, 0x7AF4D6B6L,
        0xAACE1E7CL, 0xD3375FECL, 0xCE78A399L, 0x406B2A42L,
        0x20FE9E35L, 0xD9F385B9L, 0xEE39D7ABL, 0x3B124E8BL,
        0x1DC9FAF7L, 0x4B6D1856L, 0x26A36631L, 0xEAE397B2L,
        0x3A6EFA74L, 0xDD5B4332L, 0x6841E7F7L, 0xCA7820FBL,
        0xFB0AF54EL, 0xD8FEB397L, 0x454056ACL, 0xBA489527L,
        0x55533A3AL, 0x20838D87L, 0xFE6BA9B7L, 0xD096954BL,
        0x55A867BCL, 0xA1159A58L, 0xCCA92963L, 0x99E1DB33L,
        0xA62A4A56L, 0x3F3125F9L, 0x5EF47E1CL, 0x9029317CL,
        0xFDF8E802L, 0x04272F70L, 0x80BB155CL, 0x05282CE3L,
        0x95C11548L, 0xE4C66D22L, 0x48C1133FL, 0xC70F86DCL,
        0x07F9C9EEL, 0x41041F0FL, 0x404779A4L, 0x5D886E17L,
        0x325F51EBL, 0xD59BC0D1L, 0xF2BCC18FL, 0x41113564L,
        0x257B7834L, 0x602A9C60L, 0xDFF8E8A3L, 0x1F636C1BL,
        0x0E12B4C2L, 0x02E1329EL, 0xAF664FD1L, 0xCAD18115L,
        0x6B2395E0L, 0x333E92E1L, 0x3B240B62L, 0xEEBEB922L,
        0x85B2A20EL, 0xE6BA0D99L, 0xDE720C8CL, 0x2DA2F728L,
        0xD0127845L, 0x95B794FDL, 0x647D0862L, 0xE7CCF5F0L,
        0x5449A36FL, 0x877D48FAL, 0xC39DFD27L, 0xF33E8D1EL,
        0x0A476341L, 0x992EFF74L, 0x3A6F6EABL, 0xF4F8FD37L,
        0xA812DC60L, 0xA1EBDDF8L, 0x991BE14CL, 0xDB6E6B0DL,
        0xC67B5510L, 0x6D672C37L, 0x2765D43BL, 0xDCD0E804L,
        0xF1290DC7L, 0xCC00FFA3L, 0xB5390F92L, 0x690FED0BL,
        0x667B9FFBL, 0xCEDB7D9CL, 0xA091CF0BL, 0xD9155EA3L,
        0xBB132F88L, 0x515BAD24L, 0x7B9479BFL, 0x763BD6EBL,
        0x37392EB3L, 0xCC115979L, 0x8026E297L, 0xF42E312DL,
        0x6842ADA7L, 0xC66A2B3BL, 0x12754CCCL, 0x782EF11CL,
        0x6A124237L, 0xB79251E7L, 0x06A1BBE6L, 0x4BFB6350L,
        0x1A6B1018L, 0x11CAEDFAL, 0x3D25BDD8L, 0xE2E1C3C9L,
        0x44421659L, 0x0A121386L, 0xD90CEC6EL, 0xD5ABEA2AL,
        0x64AF674EL, 0xDA86A85FL, 0xBEBFE988L, 0x64E4C3FEL,
        0x9DBC8057L, 0xF0F7C086L, 0x60787BF8L, 0x6003604DL,
        0xD1FD8346L, 0xF6381FB0L, 0x7745AE04L, 0xD736FCCCL,
        0x83426B33L, 0xF01EAB71L, 0xB0804187L, 0x3C005E5FL,
        0x77A057BEL, 0xBDE8AE24L, 0x55464299L, 0xBF582E61L,
        0x4E58F48FL, 0xF2DDFDA2L, 0xF474EF38L, 0x8789BDC2L,
        0x5366F9C3L, 0xC8B38E74L, 0xB475F255L, 0x46FCD9B9L,
        0x7AEB2661L, 0x8B1DDF84L, 0x846A0E79L, 0x915F95E2L,
        0x466E598EL, 0x20B45770L, 0x8CD55591L, 0xC902DE4CL,
        0xB90BACE1L, 0xBB8205D0L, 0x11A86248L, 0x7574A99EL,
        0xB77F19B6L, 0xE0A9DC09L, 0x662D09A1L, 0xC4324633L,
        0xE85A1F02L, 0x09F0BE8CL, 0x4A99A025L, 0x1D6EFE10L,
        0x1AB93D1DL, 0x0BA5A4DFL, 0xA186F20FL, 0x2868F169L,
        0xDCB7DA83L, 0x573906FEL, 0xA1E2CE9BL, 0x4FCD7F52L,
        0x50115E01L, 0xA70683FAL, 0xA002B5C4L, 0x0DE6D027L,
        0x9AF88C27L, 0x773F8641L, 0xC3604C06L, 0x61A806B5L,
        0xF0177A28L, 0xC0F586E0L, 0x006058AAL, 0x30DC7D62L,
        0x11E69ED7L, 0x2338EA63L, 0x53C2DD94L, 0xC2C21634L,
        0xBBCBEE56L, 0x90BCB6DEL, 0xEBFC7DA1L, 0xCE591D76L,
        0x6F05E409L, 0x4B7C0188L, 0x39720A3DL, 0x7C927C24L,
        0x86E3725FL, 0x724D9DB9L, 0x1AC15BB4L, 0xD39EB8FCL,
        0xED545578L, 0x08FCA5B5L, 0xD83D7CD3L, 0x4DAD0FC4L,
        0x1E50EF5EL, 0xB161E6F8L, 0xA28514D9L, 0x6C51133CL,
        0x6FD5C7E7L, 0x56E14EC4L, 0x362ABFCEL, 0xDDC6C837L,
        0xD79A3234L, 0x92638212L, 0x670EFA8EL, 0x406000E0L  },
    {   0x3A39CE37L, 0xD3FAF5CFL, 0xABC27737L, 0x5AC52D1BL,
        0x5CB0679EL, 0x4FA33742L, 0xD3822740L, 0x99BC9BBEL,
        0xD5118E9DL, 0xBF0F7315L, 0xD62D1C7EL, 0xC700C47BL,
        0xB78C1B6BL, 0x21A19045L, 0xB26EB1BEL, 0x6A366EB4L,
        0x5748AB2FL, 0xBC946E79L, 0xC6A376D2L, 0x6549C2C8L,
        0x530FF8EEL, 0x468DDE7DL, 0xD5730A1DL, 0x4CD04DC6L,
        0x2939BBDBL, 0xA9BA4650L, 0xAC9526E8L, 0xBE5EE304L,
        0xA1FAD5F0L, 0x6A2D519AL, 0x63EF8CE2L, 0x9A86EE22L,
        0xC089C2B8L, 0x43242EF6L, 0xA51E03AAL, 0x9CF2D0A4L,
        0x83C061BAL, 0x9BE96A4DL, 0x8FE51550L, 0xBA645BD6L,
        0x2826A2F9L, 0xA73A3AE1L, 0x4BA99586L, 0xEF5562E9L,
        0xC72FEFD3L, 0xF752F7DAL, 0x3F046F69L, 0x77FA0A59L,
        0x80E4A915L, 0x87B08601L, 0x9B09E6ADL, 0x3B3EE593L,
        0xE990FD5AL, 0x9E34D797L, 0x2CF0B7D9L, 0x022B8B51L,
        0x96D5AC3AL, 0x017DA67DL, 0xD1CF3ED6L, 0x7C7D2D28L,
        0x1F9F25CFL, 0xADF2B89BL, 0x5AD6B472L, 0x5A88F54CL,
        0xE029AC71L, 0xE019A5E6L, 0x47B0ACFDL, 0xED93FA9BL,
        0xE8D3C48DL, 0x283B57CCL, 0xF8D56629L, 0x79132E28L,
        0x785F0191L, 0xED756055L, 0xF7960E44L, 0xE3D35E8CL,
        0x15056DD4L, 0x88F46DBAL, 0x03A16125L, 0x0564F0BDL,
        0xC3EB9E15L, 0x3C9057A2L, 0x97271AECL, 0xA93A072AL,
        0x1B3F6D9BL, 0x1E6321F5L, 0xF59C66FBL, 0x26DCF319L,
        0x7533D928L, 0xB155FDF5L, 0x03563482L, 0x8ABA3CBBL,
        0x28517711L, 0xC20AD9F8L, 0xABCC5167L, 0xCCAD925FL,
        0x4DE81751L, 0x3830DC8EL, 0x379D5862L, 0x9320F991L,
        0xEA7A90C2L, 0xFB3E7BCEL, 0x5121CE64L, 0x774FBE32L,
        0xA8B6E37EL, 0xC3293D46L, 0x48DE5369L, 0x6413E680L,
        0xA2AE0810L, 0xDD6DB224L, 0x69852DFDL, 0x09072166L,
        0xB39A460AL, 0x6445C0DDL, 0x586CDECFL, 0x1C20C8AEL,
        0x5BBEF7DDL, 0x1B588D40L, 0xCCD2017FL, 0x6BB4E3BBL,
        0xDDA26A7EL, 0x3A59FF45L, 0x3E350A44L, 0xBCB4CDD5L,
        0x72EACEA8L, 0xFA6484BBL, 0x8D6612AEL, 0xBF3C6F47L,
        0xD29BE463L, 0x542F5D9EL, 0xAEC2771BL, 0xF64E6370L,
        0x740E0D8DL, 0xE75B1357L, 0xF8721671L, 0xAF537D5DL,
        0x4040CB08L, 0x4EB4E2CCL, 0x34D2466AL, 0x0115AF84L,
        0xE1B00428L, 0x95983A1DL, 0x06B89FB4L, 0xCE6EA048L,
        0x6F3F3B82L, 0x3520AB82L, 0x011A1D4BL, 0x277227F8L,
        0x611560B1L, 0xE7933FDCL, 0xBB3A792BL, 0x344525BDL,
        0xA08839E1L, 0x51CE794BL, 0x2F32C9B7L, 0xA01FBAC9L,
        0xE01CC87EL, 0xBCC7D1F6L, 0xCF0111C3L, 0xA1E8AAC7L,
        0x1A908749L, 0xD44FBD9AL, 0xD0DADECBL, 0xD50ADA38L,
        0x0339C32AL, 0xC6913667L, 0x8DF9317CL, 0xE0B12B4FL,
        0xF79E59B7L, 0x43F5BB3AL, 0xF2D519FFL, 0x27D9459CL,
        0xBF97222CL, 0x15E6FC2AL, 0x0F91FC71L, 0x9B941525L,
        0xFAE59361L, 0xCEB69CEBL, 0xC2A86459L, 0x12BAA8D1L,
        0xB6C1075EL, 0xE3056A0CL, 0x10D25065L, 0xCB03A442L,
        0xE0EC6E0EL, 0x1698DB3BL, 0x4C98A0BEL, 0x3278E964L,
        0x9F1F9532L, 0xE0D392DFL, 0xD3A0342BL, 0x8971F21EL,
        0x1B0A7441L, 0x4BA3348CL, 0xC5BE7120L, 0xC37632D8L,
        0xDF359F8DL, 0x9B992F2EL, 0xE60B6F47L, 0x0FE3F11DL,
        0xE54CDA54L, 0x1EDAD891L, 0xCE6279CFL, 0xCD3E7E6FL,
        0x1618B166L, 0xFD2C1D05L, 0x848FD2C5L, 0xF6FB2299L,
        0xF523F357L, 0xA6327623L, 0x93A83531L, 0x56CCCD02L,
        0xACF08162L, 0x5A75EBB5L, 0x6E163697L, 0x88D273CCL,
        0xDE966292L, 0x81B949D0L, 0x4C50901BL, 0x71C65614L,
        0xE6C6C7BDL, 0x327A140AL, 0x45E1D006L, 0xC3F27B9AL,
        0xC9AA53FDL, 0x62A80F00L, 0xBB25BFE2L, 0x35BDD2F6L,
        0x71126905L, 0xB2040222L, 0xB6CBCF7CL, 0xCD769C2BL,
        0x53113EC0L, 0x1640E3D3L, 0x38ABBD60L, 0x2547ADF0L,
        0xBA38209CL, 0xF746CE76L, 0x77AFA1C5L, 0x20756060L,
        0x85CBFE4EL, 0x8AE88DD8L, 0x7AAAF9B0L, 0x4CF9AA7EL,
        0x1948C25CL, 0x02FB8A8CL, 0x01C36AE4L, 0xD6EBE1F9L,
        0x90D4F869L, 0xA65CDEA0L, 0x3F09252DL, 0xC208E69FL,
        0xB74E6132L, 0xCE77E25BL, 0x578FDFE3L, 0x3AC372E6L  }
};




#ifdef COSY
asm int xchg(int a, int b) {
  @[.barrier]
  nop
  nop
  nop
  xchg @{a}, @{b}
  nop
  nop
  nop
}

asm unsigned long computeF(int S, unsigned long x) {
  @[.barrier]
  nop
  nop
  nop
  optimizeF  @{}, @{S}, @{x}  ; takes 13 cycles (instead of 5 for e.g. 'add') if a memory accces takes 2 cycles (which is default in dlxsim)
  nop
  nop
  nop
}
#endif

#ifndef OPTIMIZE
static unsigned long F(BLOWFISH_CTX *ctx, unsigned long x) {
   unsigned short a, b, c, d;
   unsigned long  y;

   d = (unsigned short)(x & 0xFF);
   x >>= 8;
   c = (unsigned short)(x & 0xFF);
   x >>= 8;
   b = (unsigned short)(x & 0xFF);
   x >>= 8;
   a = (unsigned short)(x & 0xFF);
   y = ctx->S[0][a] + ctx->S[1][b];
   y = y ^ ctx->S[2][c];
   y = y + ctx->S[3][d];

   return y;
}
#endif




/* Blowfish */
int Blowfish_Encrypt(BLOWFISH_CTX *ctx, unsigned long *xl, unsigned long *xr)
{
	unsigned long  Xl = 0;
	unsigned long  Xr = 0;
	unsigned long  temp = 0;
	short          i = 0;

	forecast_F_0();
	forecast_XCHG_0();

	Xl = *xl;
	Xr = *xr;

	for (i = 0; i < N; ++i)
	{
		Xl = Xl ^ ctx->P[i];
		
		#ifdef OPTIMIZE
			temp = computeF(ctx->S, Xl);
		#else
			temp = F(ctx, Xl);
		#endif
		
		Xr = temp ^ Xr;

		#ifdef OPTIMIZE
			xchg(Xl, Xr);
		#else
			temp = Xl;
			Xl = Xr;
			Xr = temp;
		#endif
	}
	forecast_F_0();
	forecast_XCHG_0();

	#ifdef OPTIMIZE
		xchg(Xl, Xr);
	#else
		temp = Xl;
		Xl = Xr;
		Xr = temp;
	#endif

	Xr = Xr ^ ctx->P[N];
	Xl = Xl ^ ctx->P[N + 1];

	*xl = Xl;
	*xr = Xr;
	
	forecast_F_0();
	forecast_XCHG_0();
	
	return 0;
}



int Blowfish_Decrypt(BLOWFISH_CTX *ctx, unsigned long *xl, unsigned long *xr)
{
	unsigned long  Xl = 0;
	unsigned long  Xr = 0;
	unsigned long  temp = 0;
	short          i = 0;

	forecast_F_0();
	forecast_XCHG_0();

	Xl = *xl;
	Xr = *xr;

	for (i = N + 1; i > 1; --i)
	{
		Xl = Xl ^ ctx->P[i];

		#ifdef OPTIMIZE
			temp = computeF(ctx->S, Xl);
		#else
			temp = F(ctx, Xl);
		#endif
		Xr = temp ^ Xr;

		#ifdef OPTIMIZE
			xchg(Xl, Xr);
		#else
			temp = Xl;
			Xl = Xr;
			Xr = temp;
		#endif
	}
	forecast_F_0();
	forecast_XCHG_0();

	#ifdef OPTIMIZE
		xchg(Xl, Xr);
	#else
		temp = Xl;
		Xl = Xr;
		Xr = temp;
	#endif

	Xr = Xr ^ ctx->P[1];
	Xl = Xl ^ ctx->P[0];

	*xl = Xl;
	*xr = Xr;

	forecast_F_0();
	forecast_XCHG_0();

	return 0;
}


int Blowfish_Init(BLOWFISH_CTX *ctx, unsigned char *key, int keyLen)
{
	int i;
	int j;
	int k;
	unsigned long data;
	unsigned long datal;
	unsigned long datar;

	
	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 256; j++)
		{
			ctx->S[i][j] = ORIG_S[i][j];
		}
	}

	j = 0;

	for (i = 0; i < N + 2; ++i)
	{
		data = 0x00000000;
		
		for (k = 0; k < 4; ++k)
		{
			data = (data << 8) | key[j];
			j = j + 1;
	  
			if (j >= keyLen)
				j = 0;
		}

		ctx->P[i] = ORIG_P[i] ^ data;
	}

	datal = 0x00000000;
	datar = 0x00000000;

	for (i = 0; i < N + 2; i += 2)
	{
		Blowfish_Encrypt(ctx, &datal, &datar);
		
		ctx->P[i] = datal;
		ctx->P[i + 1] = datar;
	}

	for (i = 0; i < 4; ++i)
	{
		for (j = 0; j < 256; j += 2)
		{
			Blowfish_Encrypt(ctx, &datal, &datar);
			ctx->S[i][j] = datal;
			ctx->S[i][j + 1] = datar;
		}
	}
	return 0;
}











int merge(char array[], char arr1[], int half1, char arr2[], int half2)
{
	int p  = 0;
	int p1 = 0;
	int p2 = 0;
	forecast_S05_0();
	forecast_S12_0();
	forecast_S06_0();

	while(p1 < half1 && p2 < half2)
	{
		S12(p2,p1);
		S06(p1,p2);
		if(arr1[p1] < arr2[p2])
			array[p++] = arr1[p1++];
		else
			array[p++] = arr2[p2++];
	}
	forecast_S06_0();
	forecast_S12_0();

	S05(p,p);
	forecast_S05_0();

	while(p1 < half1)
		array[p++] = arr1[p1++];
	while(p2 < half2)
		array[p++] = arr2[p2++];

	return 0;
}

int msort(char list[], int n)
{
	int i     = 0;
	int half1 = 0;
	int half2 = 0;

	char arr1[MSORT_MAX];
	char arr2[MSORT_MAX];

	forecast_S03_0();
	forecast_S04_0();


	if (n > 1)
	{
		half1 = n / 2;
		half2 = n - half1;

//#ifndef COSY
//		printf("half1: %i\n", half1);
//		printf("half2: %i\n", half2);
//#endif

		S03(n,n);
		forecast_S03_0();
		for(i = 0; i < half1; i++)
		{
		   arr1[i] = list[i];

//#ifndef COSY
//		printf("%i\n", i);
//#endif
		}
		S04(n,n);
		forecast_S04_0();
		for(i = 0; i < half2; i++)
			arr2[i] = list[half1 + i];

//#ifndef COSY
//		printf("arr2\n");
//#endif

		msort(arr1, half1);
		msort(arr2, half2);

		merge(list, arr1, half1, arr2, half2);
	}

	forecast_S03_0();
	forecast_S04_0();

	return 0;
}


/* BLOWFISH ENCRYPTION 1 */
int blowfish_e1()
{
	int i = 0;
	forecast_S13_0();

	for (i=0; i<inputLength1; i++)
	{
		if (i%10 == 0) S13(i,i);
		encryptedString1[i] = inputString1[i];
	}
	encryptedString1[inputLength1-1] = '\0';

	#ifndef COSY
		printf("Encrypting:\n\"%s\"\n", encryptedString1);
		printf("%i characters\n", sizeof(encryptedString1));
	#endif
	
	forecast_S13_0();

	for (i=0; i<inputLength1; i+=8)
	{
		Blowfish_Encrypt(&ctx, (unsigned long*)&encryptedString1[i], (unsigned long*)&encryptedString1[i+4]);
	}
	encryptedString1[inputLength1-1] = '\0';

	return 0;
}


/* BLOWFISH ENCRYPTION 2 */
int blowfish_e2()
{
	int i = 0;
	forecast_S13_0();
		
	for (i=0; i<inputLength2; i++)
	{
		if (i%10 == 0) S13(i,i);
		encryptedString2[i] = inputString2[i];
	}
	encryptedString2[inputLength2] = '\0';
	forecast_S13_0();

	#ifndef COSY
		printf("Encrypting:\n\"%s\"\n", encryptedString2);
		printf("%i characters\n", sizeof(encryptedString2));
	#endif

	for (i = 0; i < inputLength2; i += 8)
	{
		Blowfish_Encrypt(&ctx, (unsigned long*)&encryptedString2[i], (unsigned long*)&encryptedString2[i+4]);
	}
	encryptedString2[inputLength2] = '\0';

	return 0;
}

/* BLOWFISH ENCRYPTION 3 */
int blowfish_e3()
{
	int i = 0;
	forecast_S13_0();

	for (i=0; i<inputLength3; i++)
	{
		if (i%10 == 0) S13(i,i);
		encryptedString3[i] = inputString3[i];
	}
	encryptedString3[inputLength3] = '\0';

	#ifndef COSY
		printf("Encrypting:\n\"%s\"\n", encryptedString3);
		printf("%i characters\n", sizeof(encryptedString3));
	#endif
	forecast_S13_0();

	for (i=0; i<inputLength3; i+=8)
	{
		Blowfish_Encrypt(&ctx, (unsigned long*)&encryptedString3[i], (unsigned long*)&encryptedString3[i+4]);
	}
	encryptedString3[inputLength3] = '\0';

	return 0;
}


/* RANDOM-SIZE BLOWFISH DECRYPTION */
int blowfish_variable_decryption(int size)
{
	int i = 0;
	
	forecast_S13_0();
	for (i=0; i<size; i++)
	{
		if (i%10 == 0) S13(i,i);
		decryptedString1[i] = encryptedString1[i];
	}
	forecast_S13_0();
	decryptedString1[size] = '\0';

	for (i=0; i<size; i+=8)
	{
		Blowfish_Decrypt(&ctx, (unsigned long*)&decryptedString1[i], (unsigned long*)&decryptedString1[i+4]);
	}
	decryptedString1[size] = '\0';

	#ifndef COSY
		printf("decrypted: \"%s\"\n", decryptedString1);
		printf("%i characters\n", sizeof(decryptedString1));
	#endif

	return 0;
}

int blowfish_variable_encryption(int size)
{
	int i = 0;
	forecast_S13_0();

	for (i=0; i<size; i++)
	{
		if (i%10 == 0) S13(i,i);
		encryptedString1[i] = inputString1[i];
	}
	encryptedString1[size] = '\0';

	#ifndef COSY
		printf("Encrypting:\n\"%s\"\n", encryptedString1);
		printf("%i characters\n", sizeof(encryptedString1));
	#endif
	
	forecast_S13_0();

	for (i=0; i<size; i+=8)
	{
		Blowfish_Encrypt(&ctx, (unsigned long*)&encryptedString1[i], (unsigned long*)&encryptedString1[i+4]);
	}
	encryptedString1[size] = '\0';

	return 0;
}











/* BLOWFISH DECRYPTION 1 */
int blowfish_d1()
{
	int i = 0;
	
	forecast_S13_0();
	for (i=0; i<inputLength1+1; i++)
	{
		if (i%10 == 0) S13(i,i);
		decryptedString1[i] = encryptedString1[i];
	}
	forecast_S13_0();
	decryptedString1[inputLength1-1] = '\0';

	for (i=0; i<inputLength1; i+=8)
	{
		Blowfish_Decrypt(&ctx, (unsigned long*)&decryptedString1[i], (unsigned long*)&decryptedString1[i+4]);
	}
	decryptedString1[inputLength1-1] = '\0';

	#ifndef COSY
		printf("decrypted: \"%s\"\n", decryptedString1);
		printf("%i characters\n", sizeof(decryptedString1));
	#endif

	return 0;
}

/* BLOWFISH DECRYPTION 2 */
int blowfish_d2()
{
	int i = 0;

	forecast_S13_0();
	for (i=0; i<inputLength2; i++)
	{
		if (i%10 == 0) S13(i,i);
		decryptedString2[i] = encryptedString2[i];
	}
	forecast_S13_0();
	decryptedString2[inputLength2] = '\0';

	for (i=0; i<inputLength2; i+=8)
	{
		Blowfish_Decrypt(&ctx, (unsigned long*)&decryptedString2[i], (unsigned long*)&decryptedString2[i+4]);
	}
	decryptedString2[inputLength2] = '\0';

	#ifndef COSY
		printf("decrypted: \"%s\"\n", decryptedString2);
	#endif

	return 0;
}

/* BLOWFISH DECRYPTION 3 */
int blowfish_d3()
{
	int i = 0;
	forecast_S13_0();
	for (i=0; i<inputLength3; i++)
	{
		if (i%10 == 0) S13(i,i);
		decryptedString3[i] = encryptedString3[i];
	}
	forecast_S13_0();
	decryptedString3[inputLength3] = '\0';

	for (i=0; i<inputLength3;i+=8)
	{
		Blowfish_Decrypt(&ctx, (unsigned long*)&decryptedString3[i], (unsigned long*)&decryptedString3[i+4]);
	}
	decryptedString3[inputLength3] = '\0';

	#ifndef COSY
		printf("decrypted: \"%s\"\n", decryptedString3);
	#endif

	return 0;
}

/* MERGESORT STRING 1 */
int msort_1()
{
	int i = 0;
	forecast_S02_0();

	#ifndef COSY
		printf("Sorting:\n\"%s\"\n", inputString1);
	#endif

	/* Feld konvertieren */
	S02(i,i);
	forecast_S02_0();
	forecast_S13_0();
	for (i=0; i<inputLength1; i++)
	{
		if (i%10 == 0) S13(i,i);
		msort_array1[i] = inputString1[i];
	}
	forecast_S13_0();

	msort(msort_array1, inputLength1);

	#ifndef COSY
		printf("Sorted:\n");
		printf("\"%s\"\n", msort_array1);
		printf("%i characters\n", sizeof(msort_array1));
		//for(i=0; i<inputLength1; i++) printf("%c", (char)msort_array1[i]);
		printf("\n");
	#endif

	forecast_S02_0();
	return 0;
}


/* MERGESORT STRING 2 */
int msort_2()
{
	int i = 0;
	forecast_S02_0();

	#ifndef COSY
		printf("Sorting:\n%s\n", inputString2);
	#endif

	/* Feld konvertieren */
	S02(i,i);
	forecast_S02_0();
	forecast_S13_0();
	for (i=0; i<inputLength2; i++)
	{
		if (i%10 == 0) S13(i,i);
		msort_array2[i] = inputString2[i];
	}
	forecast_S13_0();

	msort(msort_array2, inputLength2);
	
	#ifndef COSY
		printf("Sorted:\n");
		for (i=0; i<inputLength2; i++)	printf("%c", (char)msort_array2[i]);
		printf("\n");
	#endif

	forecast_S02_0();
	return 0;
}


/* MERGESORT STRING 3 */
int msort_3()
{
	int i = 0;
	forecast_S02_0();

	#ifndef COSY
		printf("Sorting:\n%s\n", inputString3);
	#endif

	/* Feld konvertieren */
	S02(i,i);
	forecast_S02_0();
	forecast_S13_0();
	for (i=0; i<inputLength3; i++)
	{
		if (i%10 == 0) S13(i,i);
		msort_array3[i] = inputString3[i];
	}
	forecast_S13_0();

	msort(msort_array3, inputLength3);
	
	#ifndef COSY
		printf("Sorted:\n");
		for (i=0; i<inputLength3; i++)	printf("%c", (char)msort_array3[i]);
		printf("\n");
	#endif

	forecast_S02_0();
	return 0;
}

/* DCT */
int DCT()
{
	Image Temp;
	int i;
	int j;
	int k;
	Pixel sum;
	

	#ifdef COSY
		forecast_MAD_0();
		forecast_S01_0();
		forecast_S12_0();
	#endif


	//First Temp = Input*COS2
	for (i=0; i<8; i++)
	{
		forecast_MAD_0();

		for (j=0; j<8; j++)
		{
			#ifdef COSY
				forecast_MAD_0();
			#endif

			sum = 0;
			S01(i,j);
			for(k=0; k<8; k++)
			{
				sum = MAD(sum, Input[i][k], COS2[k%8][j%8]);
			}

			Temp[i][j]=sum;
		}
	}

	#ifdef COSY
		forecast_MAD_0();
	#endif


	//Second Output = COS1*Temp
	for (i=0; i<8; i++)
	{
		forecast_MAD_0();

		for (j=0; j<8; j++)
		{
			#ifdef COSY
				forecast_MAD_0();
			#endif

			sum=0;
			S01(i,j);
			S12(i,j);
			for(k=0; k<8; k++)
			{
				sum = MAD(sum, COS1[i][k], Temp[k%8][j%8]);
			}

			Output[i][j]=sum;
		}
	}
	#ifdef COSY
		forecast_MAD_0();
		forecast_S01_0();
		forecast_S12_0();
	#endif

	return 0;
}
/* COS2 = COS1_Transpose
 * Output = COS1 * Input * COS1_Transpose
 */


/* CRC32 */
/* von Wikipedia */
#define CRC32POLY 0x04C11DB7 /* CRC-32 Polynom */
unsigned long crc32; /* Shiftregister */

int calc_crc32(int bit)
{
	int hbit = 0;
	int m = 0x80000000;
	int M = 0xffffffff;

	forecast_S12_0();

	S12(bit,bit);
	forecast_S12_0();

	hbit = (crc32 & m) ? 1 : 0;

	if (hbit != bit)
		crc32 = (crc32<<1) ^ CRC32POLY;
	else
		crc32 = crc32<<1;

	crc32 &= M; /* begrenze auf 32 Bits */

	return 0;
}


int dummy_crc32(char data[], int s)
{
	int  i = 0;
	char d;
	forecast_S00_0();
	crc32 = 0; 

	for (i=0; i<s; i++)
	{
		d = data[i];
		S00(i,i);

		calc_crc32(d & 0x01);
		calc_crc32(d & 0x02);
		calc_crc32(d & 0x04);
		calc_crc32(d & 0x08);
		calc_crc32(d & 0x10);
		calc_crc32(d & 0x20);
		calc_crc32(d & 0x40);
		calc_crc32(d & 0x80);
	}

	forecast_S00_0();
	return 0;
}

#ifdef USE_RANDOM
static int do_randomtest()
{
	int r = 0;
	int i = 0;
	int j = 0;


	for (i=0; i < 50; i++)
	{
		r = (int)inputString2[i];

		blowfish_variable_encryption(r);


		forecast_S00_0();
		forecast_S01_0();
		forecast_S02_0();
		forecast_S03_0();
		forecast_S04_0();
		forecast_S05_0();
		forecast_S06_0();
		forecast_S07_0();
		forecast_S08_0();
		forecast_S09_0();
		forecast_S10_0();
		for (j = 0; j < r; j++)
		{
			if (r%2 == 0) S00(r,i);

			if (r%3 == 0) S01(r,i);

			if (r%4 == 0) S02(r,i);

			if (r%5 == 0)
			{
				S03(r,i);
				forecast_S03_0();
			}

			if (r%6 == 0) S04(r,i);

			if (r%7 == 0)
			{
				S05(r,i);
				S05(r,i);
				S04(r,r);
				S05(r,i);
			}

			if (r%8 == 0) S06(r,i);

			if (i%10 == 0 && j == r/2) msort_1();

			if (r%9 == 0) S07(r,i);

			if (r%10 == 0) S08(r,i);

			if (r%12 == 0) S09(r,i);

			if (r%13 == 0) S10(r,i);
		}
		forecast_S00_0();
		forecast_S01_0();
		forecast_S02_0();
		forecast_S03_0();
		forecast_S04_0();
		forecast_S05_0();
		forecast_S06_0();
		forecast_S07_0();
		forecast_S08_0();
		forecast_S09_0();
		forecast_S10_0();
		forecast_S11_0();
		forecast_S12_0();
		forecast_S13_0();
		forecast_S14_0();
		forecast_S15_0();

		dummy_crc32(inputString1, 3*r);
		
		if (r%14 == 0) S11(r,i);

		if (r%15 == 0) S12(r,i);
		
		if (r%16 == 0) S13(r,i);

		if (r%17 == 0) S14(r,i);

		if (r%18 == 0) S15(r,i);


		forecast_S11_0();
		forecast_S12_0();
		forecast_S13_0();
		forecast_S14_0();
		forecast_S15_0();

		blowfish_variable_decryption(r);
	}

	DCT();
}
#endif


#ifdef USE_DA_EXAMPLE
static int do_DA_example()
{
	int i = 0;
	int j = 0;

	forecast_S09_0();
	forecast_S10_0();

#ifdef FULL
	forecast_S14_0();
	forecast_S11_0();
	forecast_S08_0();
#endif


#ifdef FULL
	for (i = 0; i < 2; i++)
	{
		for (j=0; j < 64; j++)
#endif
			DCT();

		blowfish_e1();
		if (i==1) S10(i,j);

#ifdef FULL
		dummy_crc32(encryptedString1, inputLength1);
		
		forecast_S08_0();
		for (j=0; j < 128; j++)
		{
			DCT();
			S08(i,j);

			if (j == 50)
			{
				dummy_crc32(encryptedString1, inputLength1);
				blowfish_d1();
				
				if (i==0)
#endif
					msort_1();

				S09(i,j);
#ifdef FULL
			}
		}

		forecast_S08_0();
		forecast_S15_0();
		S14(i,i);

		blowfish_e2();
		dummy_crc32(encryptedString2,inputLength2);
	}

	S15(i,i);

	for (i = 0; i<3; i++)
	{
		for (j=0; j < 128; j++)
		{
			DCT();
			S08(i,j);
		}

		forecast_S08_0();
		forecast_S11_0();
		forecast_S09_0();

		dummy_crc32(encryptedString2,inputLength2);
		blowfish_d2();
		msort_2();
		S09(i,j);

		forecast_S09_0();
#endif
		blowfish_e3();
		dummy_crc32(encryptedString3, inputLength3);

#ifdef FULL
		for (j=0; j < inputLength3; j++)
		{
			S11(i,j);
		}
		forecast_S11_0();

		dummy_crc32(encryptedString3, inputLength3);
		blowfish_d3();
		msort_3();
		S09(i,j);

		forecast_S09_0();
	}
#endif




	return 0;
}
#endif





int main()
{
	/* BLOWFISH INIT */
	#ifndef COSY
		printf("inputString 1: \"%s\"\n", inputString1);
		printf("inputLength 1: %i\n\n", inputLength1);
		printf("inputString 2: \"%s\"\n", inputString2);
		printf("inputLength 2: %i\n\n", inputLength2);
		printf("inputString 3: \"%s\"\n", inputString3);
		printf("inputLength 3: %i\n\n", inputLength3);
	#endif
	Blowfish_Init (&ctx, (unsigned char*)"TESTKEY", 7);

#ifdef USE_DA_EXAMPLE
	do_DA_example();
#endif

#ifdef USE_RANDOM
	do_randomtest();
#endif

	return 0;
}
