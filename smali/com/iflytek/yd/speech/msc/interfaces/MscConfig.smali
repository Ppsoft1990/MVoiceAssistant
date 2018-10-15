.class public Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;
.super Ljava/lang/Object;


# static fields
.field private static final ContactParams16K:Ljava/lang/String; = "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

.field private static final DEF_ADDR:Ljava/lang/String; = "http://dev.voicecloud.cn:1028/index.htm"

.field private static final SampleRate16K:I = 0x3e80

.field private static final SmsGrammar:Ljava/lang/String; = "\u0000"

.field private static final SmsParams16K:Ljava/lang/String; = "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=16000,lang=sms,acous=anhui,rate=16k\u0000"

.field private static final SmsParams8K:Ljava/lang/String; = "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=8000,lang=sms,acous=anhui,rate=8k\u0000"

.field private static final UrlGrammar:Ljava/lang/String; = "file:///c:/url.abnf\u0000"

.field private static final UrlParams16K:Ljava/lang/String; = "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

.field private static final UrlParams8K:Ljava/lang/String; = "aue=speex-wb,ssm=1,auf=audio/L16;rate=8000\u0000"

.field private static final VoiceSearchGrammar:Ljava/lang/String; = "\u0000"

.field private static final VoiceSearchParams16K:Ljava/lang/String; = "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=16000,lang=vsearch,acous=vsearch,rate=16k\u0000"

.field private static final VoiceSearchParams8K:Ljava/lang/String; = "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=8000,lang=vsearch,acous=vsearch,rate=8k\u0000"


# instance fields
.field public mAppConfig:Lcom/iflytek/yd/business/AppConfig;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getInitParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/business/AppConfig;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/yd/business/AppConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    :cond_0
    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wap_proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "vad_enable=false,auth=1,usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",server_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",server_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://dev.voicecloud.cn:1028/index.htm"

    return-object v0
.end method

.method public getSessionGrammar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->keyword:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "\u0000"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->other:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->sms:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSmsGrammar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->url:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "file:///c:/url.abnf\u0000"

    goto :goto_0
.end method

.method public getSessionParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3e80

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/business/AppConfig;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/yd/business/AppConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "wap_proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getSid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "extid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->keyword:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p2, v3, :cond_3

    const-string/jumbo v0, "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=16000,lang=vsearch,acous=vsearch,rate=16k\u0000"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    const-string/jumbo v0, "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=8000,lang=vsearch,acous=vsearch,rate=8k\u0000"

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->other:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->sms:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p2, v3, :cond_6

    const-string/jumbo v0, "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=16000,lang=sms,acous=anhui,rate=16k\u0000"

    :goto_2
    invoke-virtual {p0, v0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getSmsParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "aue=speex-wb,ssm=1,sub=iat,auf=audio/L16;rate=8000,lang=sms,acous=anhui,rate=8k\u0000"

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->url:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p2, v3, :cond_8

    const-string/jumbo v0, "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "aue=speex-wb,ssm=1,auf=audio/L16;rate=8000\u0000"

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method public getSmsGrammar(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getSmsParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserPasswd()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAppconfig(Lcom/iflytek/yd/business/AppConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    return-void
.end method
