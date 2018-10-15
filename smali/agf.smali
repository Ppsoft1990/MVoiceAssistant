.class public Lagf;
.super Ladr;
.source "WeatherResultHandler.java"


# instance fields
.field private d:Lagb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ladr;-><init>()V

    return-void
.end method

.method private a(Lagb;Z)V
    .locals 3
    .param p1, "result"    # Lagb;
    .param p2, "isTextSearchResult"    # Z

    .prologue
    .line 56
    const-string/jumbo v1, "WeatherResultHandler"

    const-string/jumbo v2, "handleView"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lagc;

    invoke-direct {v0}, Lagc;-><init>()V

    .line 59
    .local v0, "weatherMessage":Lagc;
    invoke-virtual {p1}, Lagb;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lagc;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lagb;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lagc;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lagb;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lagc;->f:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Lagb;->getTip()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lagf;->b(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p0, v0}, Lagf;->a(Laee;)V

    .line 66
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Ladr;->a()V

    .line 30
    return-void
.end method

.method protected b()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lage;

    invoke-direct {v0}, Lage;-><init>()V

    return-object v0
.end method

.method public c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 4
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-super {p0, p1, p2}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 36
    const-string/jumbo v1, "WeatherResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSuccess filterResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    check-cast p2, Lagb;

    .end local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    iput-object p2, p0, Lagf;->d:Lagb;

    .line 40
    iget-object v1, p0, Lagf;->d:Lagb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lagf;->d:Lagb;

    invoke-virtual {v1}, Lagb;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lagf;->d:Lagb;

    .line 41
    invoke-virtual {v1}, Lagb;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lagf;->d:Lagb;

    .line 42
    invoke-virtual {v1}, Lagb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v1

    if-ne v1, v0, :cond_1

    .line 44
    .local v0, "isTextSearchModde":Z
    :goto_0
    const-string/jumbo v1, "WeatherResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSuccess: isTextSearchModde "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lagf;->d:Lagb;

    invoke-direct {p0, v1, v0}, Lagf;->a(Lagb;Z)V

    .line 48
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v1

    const-string/jumbo v2, "N_MIC_WEATHER"

    invoke-virtual {v1, v2}, Lalq;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v1

    const-string/jumbo v2, "MIC_WEATHER"

    invoke-virtual {v1, v2}, Lalq;->a(Ljava/lang/String;)V

    .line 53
    .end local v0    # "isTextSearchModde":Z
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
