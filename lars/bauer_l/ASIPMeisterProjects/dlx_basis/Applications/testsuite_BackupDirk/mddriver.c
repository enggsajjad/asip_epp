/* MDDRIVER.C - test driver for MD2, MD4 and MD5
 */

/* Copyright (C) 1990-2, RSA Data Security, Inc. Created 1990. All
   rights reserved.

   RSA Data Security, Inc. makes no representations concerning either
   the merchantability of this software or the suitability of this
   software for any particular purpose. It is provided "as is"
   without express or implied warranty of any kind.

   These notices must be retained in any copies of any part of this
   documentation and/or software.
 */
#include "forecasts.h"

#ifndef COSY
	#include <stdio.h>
	#include <time.h>
	#include <string.h>
#endif


typedef unsigned char       *POINTER;	/* POINTER defines a generic pointer type */
typedef unsigned short int  UINT2;		/* UINT2 defines a two byte word */
typedef unsigned long int   UINT4;		/* UINT4 defines a four byte word */

#define NULL_PTR ((POINTER)0)
#define UNUSED_ARG(x) x = *(&x);


/* MD5 context. */
typedef struct
{
	UINT4 state[4];                                   /* state (ABCD) */
	UINT4 count[2];        /* number of bits, modulo 2^64 (lsb first) */
	unsigned char buffer[64];                         /* input buffer */
} MD5_CTX;


/* Length of test block, number of test blocks.
 */
#define TEST_BLOCK_LEN   1000
#define TEST_BLOCK_COUNT 1000



/* Prototypen */
void MD5Init(MD5_CTX *);
void MD5Update(MD5_CTX *, unsigned char *, unsigned int);
void MD5Final(unsigned char [16], MD5_CTX *);
static void MD5String(char *);
static void MD5TestSuite(void);

#ifndef COSY
	static void MD5TimeTrial(void);
	static void MD5File(char *);
	static void MD5Print(unsigned char [16]);
	static void MD5Filter(void);
#endif

#ifdef COSY
	typedef unsigned int size_t;
#endif


/* Substitute for strlen() from <string.h>
   which cannot be used by the COSY compiler
   */
#ifdef COSY
	size_t strlen(const char* s)
	{
		const char *scounter;
		for (scounter = s; *scounter != '\0'; ++scounter);
		return scounter - s;
	}
#endif


#include "md5c.c"














/* Main driver.

Arguments (may be any combination):
  -sstring - digests string
  -t       - runs time trial
  -x       - runs test script
  filename - digests file
  (none)   - digests standard input
 */
int main (int argc, char *argv[])
{
  int i;

#ifndef COSY
	  if (argc > 1)
		for (i = 1; i < argc; i++)
		  if (argv[i][0] == '-' && argv[i][1] == 's')
		MD5String (argv[i] + 2);
		  else if (strcmp (argv[i], "-t") == 0)
		MD5TimeTrial ();
		  else if (strcmp (argv[i], "-x") == 0)
		MD5TestSuite ();
		  else
		MD5File (argv[i]);
	  else
		MD5Filter ();
#else
	  MD5TestSuite ();
#endif

  return (0);
}





/* Digests a string and prints the result.
 */
static void MD5String(char *string)
{
  MD5_CTX       context;
  unsigned char digest[16];
  unsigned int  len = strlen(string);

  MD5Init(&context);
  MD5Update(&context, string, len);
  MD5Final(digest, &context);

#ifndef COSY
  printf("MD5 (\"%s\") = ", string);
  MD5Print(digest);
  printf("\n");
#endif
}



/* Digests a reference suite of strings and prints the results.
 */
static void MD5TestSuite ()
{
#ifndef COSY
  printf ("MD5 test suite:\n");
#endif

  MD5String ("");
  MD5String ("a");
  MD5String ("abc");
  MD5String ("message digest");
  MD5String ("abcdefghijklmnopqrstuvwxyz");
  MD5String
	  ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789");
  MD5String
	  ("12345678901234567890123456789012345678901234567890123456789012345678901234567890");
  MD5String
	  ("word0000word0001word0002word0003word0004word0005word0006word0007word0008word0009word0010word0011word0012word0013word0014word0015word0016word0017word0018word0019word0020word0021word0022word0023word0024word0025word0026word0027word0028word0029word0030word0031word0032word0033word0034word0035word0036word0037word0038word0039word0040word0041word0042word0043word0044word0045word0046word0047word0048word0049word0050word0051word0052word0053word0054word0055word0056word0057word0058word0059word0060word0061word0062word0063word0064word0065word0066word0067word0068word0069word0070word0071word0072word0073word0074word0075word0076word0077word0078word0079word0080word0081word0082word0083word0084word0085word0086word0087word0088word0089word0090word0091word0092word0093word0094word0095word0096word0097word0098word0099word0100word0101word0102word0103word0104word0105word0106word0107word0108word0109word0110word0111word0112word0113word0114word0115word0116word0117word0118word0119word0120word0121word0122word0123word0124word0125word0126word0127word0128word0129word0130word0131word0132word0133word0134word0135word0136word0137word0138word0139word0140word0141word0142word0143word0144word0145word0146word0147word0148word0149word0150word0151word0152word0153word0154word0155word0156word0157word0158word0159word0160word0161word0162word0163word0164word0165word0166word0167word0168word0169word0170word0171word0172word0173word0174word0175word0176word0177word0178word0179word0180word0181word0182word0183word0184word0185word0186word0187word0188word0189word0190word0191word0192word0193word0194word0195word0196word0197word0198word0199word0200word0201word0202word0203word0204word0205word0206word0207word0208word0209word0210word0211word0212word0213word0214word0215word0216word0217word0218word0219word0220word0221word0222word0223word0224word0225word0226word0227word0228word0229word0230word0231word0232word0233word0234word0235word0236word0237word0238word0239word0240word0241word0242word0243word0244word0245word0246word0247word0248word0249word0250word0251word0252word0253word0254word0255word0256word0257word0258word0259word0260word0261word0262word0263word0264word0265word0266word0267word0268word0269word0270word0271word0272word0273word0274word0275word0276word0277word0278word0279word0280word0281word0282word0283word0284word0285word0286word0287word0288word0289word0290word0291word0292word0293word0294word0295word0296word0297word0298word0299word0300word0301word0302word0303word0304word0305word0306word0307word0308word0309word0310word0311word0312word0313word0314word0315word0316word0317word0318word0319word0320word0321word0322word0323word0324word0325word0326word0327word0328word0329word0330word0331word0332word0333word0334word0335word0336word0337word0338word0339word0340word0341word0342word0343word0344word0345word0346word0347word0348word0349word0350word0351word0352word0353word0354word0355word0356word0357word0358word0359word0360word0361word0362word0363word0364word0365word0366word0367word0368word0369word0370word0371word0372word0373word0374word0375word0376word0377word0378word0379word0380word0381word0382word0383word0384word0385word0386word0387word0388word0389word0390word0391word0392word0393word0394word0395word0396word0397word0398word0399word0400word0401word0402word0403word0404word0405word0406word0407word0408word0409word0410word0411word0412word0413word0414word0415word0416word0417word0418word0419word0420word0421word0422word0423word0424word0425word0426word0427word0428word0429word0430word0431word0432word0433word0434word0435word0436word0437word0438word0439word0440word0441word0442word0443word0444word0445word0446word0447word0448word0449word0450word0451word0452word0453word0454word0455word0456word0457word0458word0459word0460word0461word0462word0463word0464word0465word0466word0467word0468word0469word0470word0471word0472word0473word0474word0475word0476word0477word0478word0479word0480word0481word0482word0483word0484word0485word0486word0487word0488word0489word0490word0491word0492word0493word0494word0495word0496word0497word0498word0499word0500word0501word0502word0503word0504word0505word0506word0507word0508word0509word0510word0511word0512word0513word0514word0515word0516word0517word0518word0519word0520word0521word0522word0523word0524word0525word0526word0527word0528word0529word0530word0531word0532word0533word0534word0535word0536word0537word0538word0539word0540word0541word0542word0543word0544word0545word0546word0547word0548word0549word0550word0551word0552word0553word0554word0555word0556word0557word0558word0559word0560word0561word0562word0563word0564word0565word0566word0567word0568word0569word0570word0571word0572word0573word0574word0575word0576word0577word0578word0579word0580word0581word0582word0583word0584word0585word0586word0587word0588word0589word0590word0591word0592word0593word0594word0595word0596word0597word0598word0599word0600word0601word0602word0603word0604word0605word0606word0607word0608word0609word0610word0611word0612word0613word0614word0615word0616word0617word0618word0619word0620word0621word0622word0623word0624word0625word0626word0627word0628word0629word0630word0631word0632word0633word0634word0635word0636word0637word0638word0639word0640word0641word0642word0643word0644word0645word0646word0647word0648word0649word0650word0651word0652word0653word0654word0655word0656word0657word0658word0659word0660word0661word0662word0663word0664word0665word0666word0667word0668word0669word0670word0671word0672word0673word0674word0675word0676word0677word0678word0679word0680word0681word0682word0683word0684word0685word0686word0687word0688word0689word0690word0691word0692word0693word0694word0695word0696word0697word0698word0699word0700word0701word0702word0703word0704word0705word0706word0707word0708word0709word0710word0711word0712word0713word0714word0715word0716word0717word0718word0719word0720word0721word0722word0723word0724word0725word0726word0727word0728word0729word0730word0731word0732word0733word0734word0735word0736word0737word0738word0739word0740word0741word0742word0743word0744word0745word0746word0747word0748word0749word0750word0751word0752word0753word0754word0755word0756word0757word0758word0759word0760word0761word0762word0763word0764word0765word0766word0767word0768word0769word0770word0771word0772word0773word0774word0775word0776word0777word0778word0779word0780word0781word0782word0783word0784word0785word0786word0787word0788word0789word0790word0791word0792word0793word0794word0795word0796word0797word0798word0799word0800word0801word0802word0803word0804word0805word0806word0807word0808word0809word0810word0811word0812word0813word0814word0815word0816word0817word0818word0819word0820word0821word0822word0823word0824word0825word0826word0827word0828word0829word0830word0831word0832word0833word0834word0835word0836word0837word0838word0839word0840word0841word0842word0843word0844word0845word0846word0847word0848word0849word0850word0851word0852word0853word0854word0855word0856word0857word0858word0859word0860word0861word0862word0863word0864word0865word0866word0867word0868word0869word0870word0871word0872word0873word0874word0875word0876word0877word0878word0879word0880word0881word0882word0883word0884word0885word0886word0887word0888word0889word0890word0891word0892word0893word0894word0895word0896word0897word0898word0899word0900word0901word0902word0903word0904word0905word0906word0907word0908word0909word0910word0911word0912word0913word0914word0915word0916word0917word0918word0919word0920word0921word0922word0923word0924word0925word0926word0927word0928word0929word0930word0931word0932word0933word0934word0935word0936word0937word0938word0939word0940word0941word0942word0943word0944word0945word0946word0947word0948word0949word0950word0951word0952word0953word0954word0955word0956word0957word0958word0959word0960word0961word0962word0963word0964word0965word0966word0967word0968word0969word0970word0971word0972word0973word0974word0975word0976word0977word0978word0979word0980word0981word0982word0983word0984word0985word0986word0987word0988word0989word0990word0991word0992word0993word0994word0995word0996word0997word0998word0999");
}




/* Measures the time to digest TEST_BLOCK_COUNT TEST_BLOCK_LEN-byte
  blocks.
 */
#ifndef COSY
static void MD5TimeTrial()
{
	MD5_CTX        context;
	time_t         endTime;
	time_t         startTime;
	unsigned char  block[TEST_BLOCK_LEN];
	unsigned char  digest[16];
	unsigned int   i;

	printf("MD5 time trial. Digesting %d %d-byte blocks ...", TEST_BLOCK_LEN, TEST_BLOCK_COUNT);

	/* Initialize block */
	for (i = 0; i < TEST_BLOCK_LEN; i++)
		block[i] = (unsigned char)(i & 0xff);

	/* Start timer */
	time(&startTime);

	/* Digest blocks */
	MD5Init(&context);
	
	for (i = 0; i < TEST_BLOCK_COUNT; i++)
		MD5Update(&context, block, TEST_BLOCK_LEN);
	
	MD5Final(digest, &context);

	
	/* Stop timer */
	time(&endTime);

	printf(" done\n");
	printf("Digest = ");
	MD5Print(digest);
	printf("\nTime = %ld seconds\n", (long)(endTime-startTime));
	printf("Speed = %ld bytes/second\n", (long)TEST_BLOCK_LEN * (long)TEST_BLOCK_COUNT/(endTime-startTime));
}


/* Digests a file and prints the result.
*/
static void MD5File(char *filename)
{
	FILE*         file;
	MD5_CTX       context;
	int           len;
	unsigned char buffer[1024];
	unsigned char digest[16];

	if ((file = fopen (filename, "rb")) == NULL)
		printf("%s can't be opened\n", filename);
	else
	{
		MD5Init(&context);
		
		while (len = fread(buffer, 1, 1024, file))
			MD5Update(&context, buffer, len);
	
		MD5Final(digest, &context);
		fclose(file);

		printf("MD5 (%s) = ", filename);
		MD5Print(digest);
		printf("\n");
	}
}



/* Digests the standard input and prints the result.
 */
static void MD5Filter()
{
	MD5_CTX context;
	int len;
	unsigned char buffer[16], digest[16];

	MD5Init (&context);
	while (len = fread (buffer, 1, 16, stdin))
		MD5Update (&context, buffer, len);
	MD5Final (digest, &context);

	MD5Print (digest);
	printf ("\n");
}



/* Prints a message digest in hexadecimal.
 */
static void MD5Print (unsigned char digest[16])
{
	unsigned int i;

	for (i = 0; i < 16; i++)
		printf ("%02x", digest[i]);
}
#endif
