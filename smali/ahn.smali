.class public Lahn;
.super Laht;
.source "HomeScheduleHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/business/entities/StartHomeInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/framework/business/entities/StartHomeInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mAfferentInfo:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 33
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Laun;->b()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Laun;->b()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Laun;->b()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lahp;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 41
    invoke-static {v0}, Laun;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 43
    :cond_1
    return-void
.end method

.method public b(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 25
    invoke-virtual {p0}, Lahn;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lahr;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lahn;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lauo;->a(Landroid/content/Context;)V

    .line 28
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method
