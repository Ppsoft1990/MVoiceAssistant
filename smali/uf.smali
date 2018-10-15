.class public Luf;
.super Ljava/lang/Object;
.source "AppShortCutResultHandler.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Luf;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string/jumbo v1, "AppShortCutResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "searchApp appName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Luf;->a:Landroid/content/Context;

    invoke-static {v1}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Lgq;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    .local v0, "appItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    const-string/jumbo v1, "AppShortCutResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "searchApp list size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 7
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v3

    .line 33
    :cond_1
    new-instance v2, Lue;

    invoke-direct {v2}, Lue;-><init>()V

    .line 35
    .local v2, "appRecognizeFilter":Lue;
    invoke-virtual {v2, p1}, Lue;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v0

    check-cast v0, Lud;

    .line 36
    .local v0, "appFilterResult":Lud;
    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v5, "launch"

    invoke-virtual {v0}, Lud;->getOperation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v0}, Lud;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Luf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, "appItemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/app/AppItem;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 44
    iget-object v5, p0, Luf;->a:Landroid/content/Context;

    invoke-static {v5}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v5

    .line 45
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/app/AppItem;

    .line 44
    invoke-virtual {v5, v3}, Lgq;->a(Lcom/iflytek/base/app/AppItem;)V

    move v3, v4

    .line 46
    goto :goto_0
.end method
