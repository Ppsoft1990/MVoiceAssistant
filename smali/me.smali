.class public final Lme;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "xiaoyan"

    sput-object v0, Lme;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lme;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmj;->a()Lmj;

    move-result-object v0

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lmj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lla;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lla;->j()Lmc;

    move-result-object v0

    new-instance v1, Lmc;

    invoke-direct {v1}, Lmc;-><init>()V

    iget-object v0, v0, Lmc;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Lmc;->a:Ljava/util/HashMap;

    invoke-static {p0, v1}, Lme;->a(Landroid/content/Context;Lmc;)V

    invoke-static {p0, v1}, Lme;->b(Landroid/content/Context;Lmc;)V

    const-string/jumbo v0, "result_type"

    const-string/jumbo v2, "json"

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "rse"

    invoke-virtual {p1}, Lla;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "text_encoding"

    invoke-virtual {p1}, Lla;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "ssm"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "subject"

    const-string/jumbo v2, "ivp"

    invoke-virtual {v1, v0, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lla;->g()I

    move-result v0

    const-string/jumbo v2, "auf=audio/L16;rate"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x3e80

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "aue"

    const-string/jumbo v2, "speex-wb;10"

    invoke-virtual {v1, v0, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const-string/jumbo v0, "vad_bos"

    const-string/jumbo v2, "3000"

    invoke-virtual {v1, v0, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "vad_eos"

    const-string/jumbo v2, "700"

    invoke-virtual {v1, v0, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lmd;->c:[[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmc;->a([[Ljava/lang/String;)V

    invoke-virtual {v1}, Lmc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "aue"

    const-string/jumbo v2, "speex"

    invoke-virtual {v1, v0, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lmc;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "net_type"

    iget-object v1, p1, Lmc;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lme;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "net_type"

    sget-object v0, Lme;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1, v0, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v1, "net_type"

    const-string/jumbo v0, "none"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "net_type"

    const-string/jumbo v0, "none"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "net_type"

    invoke-static {v0}, Llw;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Llw;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "net_subtype"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "[,\n ]"

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lla;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lla;->j()Lmc;

    move-result-object v0

    new-instance v1, Lmc;

    invoke-direct {v1}, Lmc;-><init>()V

    iget-object v0, v0, Lmc;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Lmc;->a:Ljava/util/HashMap;

    invoke-static {p0, v1}, Lme;->a(Landroid/content/Context;Lmc;)V

    invoke-static {p0, v1}, Lme;->b(Landroid/content/Context;Lmc;)V

    const-string/jumbo v0, "ssm"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "result_type"

    const-string/jumbo v2, "json"

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "rse"

    invoke-virtual {p1}, Lla;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "text_encoding"

    invoke-virtual {p1}, Lla;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lmd;->c:[[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmc;->a([[Ljava/lang/String;)V

    invoke-virtual {v1}, Lmc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lmc;)V
    .locals 10

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Llp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :goto_1
    const-string/jumbo v7, "mmlc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p1, v7, v8, v9}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v7, "MscSpeechLog"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "MCC = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\t MNC = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\t phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\t LAC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\t CID = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get mmlc time cost:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "get mmlc failed"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
