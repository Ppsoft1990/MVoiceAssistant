.class public Ladt;
.super Ljava/lang/Object;
.source "SpeechResultHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 37
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-static {v1}, Lads;->a(Ljava/lang/String;)Ladr;

    move-result-object v0

    .line 42
    .local v0, "resultHandler":Ladr;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lads;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
