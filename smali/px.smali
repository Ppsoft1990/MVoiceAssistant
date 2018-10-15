.class public Lpx;
.super Lvx;
.source "SpeechTestRequestHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;
    .param p3, "resultListener"    # Lyn;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://120.193.118.14/Client_Test_developer/Default.aspx?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v1, "param"

    invoke-direct {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "biz_speech_test"

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2, v0}, Lpx;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v2

    return-wide v2
.end method
