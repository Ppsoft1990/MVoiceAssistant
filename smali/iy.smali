.class public Liy;
.super Lsw$a;
.source "VadCheckerBinder.java"


# instance fields
.field private a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0}, Lsw$a;-><init>()V

    .line 24
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Liy;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 47
    move v1, p2

    .line 48
    .local v1, "ret":I
    if-nez p0, :cond_1

    .line 60
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 51
    .restart local p2    # "def":I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move p2, v1

    .line 60
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const-string/jumbo v4, "VadCheckerBinder Exception use def value"

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const-string/jumbo v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, "data":[B
    const-string/jumbo v2, "sample_rate"

    const/16 v3, 0x3e80

    invoke-static {p1, v2, v3}, Liy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, "sampleRate":I
    const-string/jumbo v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    iget-object v2, p0, Liy;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v2, v0, v1, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([BILandroid/content/Intent;)V

    .line 35
    return-object p1
.end method

.method public a([BI)Landroid/content/Intent;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Liy;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([BILandroid/content/Intent;)V

    .line 43
    return-object v0
.end method
