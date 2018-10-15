.class public Lcom/iflytek/framework/business/speech/ShortCutHandler;
.super Ljava/lang/Object;
.source "ShortCutHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/ShortCutHandler;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public handle(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 4
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    const-string/jumbo v2, "app"

    iget-object v3, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    new-instance v0, Luf;

    iget-object v1, p0, Lcom/iflytek/framework/business/speech/ShortCutHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Luf;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "appShortCutResultHandler":Luf;
    invoke-virtual {v0, p1}, Luf;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v1

    goto :goto_0
.end method
