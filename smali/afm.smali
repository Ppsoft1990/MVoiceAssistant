.class public Lafm;
.super Ladr;
.source "ListenResultHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ladr;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "netItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v6, "resultItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "historyItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 79
    :cond_0
    const/4 v6, 0x0

    .line 112
    .end local v6    # "resultItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    :cond_1
    return-object v6

    .line 81
    .restart local v6    # "resultItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 82
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 83
    .local v5, "netItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v7

    invoke-virtual {v5}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lamk;->g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v0

    .line 84
    .local v0, "historyItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 85
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 86
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 88
    const/4 v3, -0x1

    .line 89
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-virtual {v7}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_4

    .line 91
    move v3, v4

    .line 95
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b(Z)V

    .line 97
    const/4 v7, -0x1

    if-eq v7, v3, :cond_5

    .line 98
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 81
    .end local v3    # "index":I
    .end local v4    # "j":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .restart local v3    # "index":I
    .restart local v4    # "j":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    .end local v3    # "index":I
    .end local v4    # "j":I
    :cond_6
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v0    # "historyItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .end local v5    # "netItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-ltz v2, :cond_1

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 110
    .restart local v0    # "historyItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "mic_voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "contentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "chapterId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected b()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lafl;

    invoke-direct {v0}, Lafl;-><init>()V

    return-object v0
.end method

.method protected c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 8
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v7, 0x0

    .line 30
    invoke-super {p0, p1, p2}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 31
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100128"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    move-object v2, p2

    .line 32
    check-cast v2, Lafi;

    .line 33
    .local v2, "result":Lafi;
    if-eqz v2, :cond_5

    .line 34
    const/4 v3, 0x0

    .line 36
    .local v3, "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    invoke-virtual {v2}, Lafi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    invoke-virtual {v2}, Lafi;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lafm;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 41
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 42
    :cond_0
    const-string/jumbo v4, "\u6ca1\u6709\u67e5\u8be2\u5230\u76f8\u5173\u7684\u542c\u4e66\u8d44\u6e90\u6570\u636e"

    invoke-virtual {p0, v4, v7}, Lafm;->b(Ljava/lang/String;Z)V

    .line 63
    .end local v3    # "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    :goto_1
    return-void

    .line 39
    .restart local v3    # "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    :cond_1
    invoke-virtual {v2}, Lafi;->b()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 45
    .local v0, "firstItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lafm;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->l()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5373\u5c06\u4e3a\u60a8\u64ad\u653e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lafm;->b(Ljava/lang/String;Z)V

    .line 55
    :goto_2
    invoke-virtual {v2, v3}, Lafi;->a(Ljava/util/ArrayList;)V

    .line 56
    new-instance v1, Lafj;

    invoke-direct {v1}, Lafj;-><init>()V

    .line 57
    .local v1, "message":Lafj;
    invoke-virtual {v1, v2}, Lafj;->a(Lafi;)V

    .line 58
    invoke-virtual {p0, v1}, Lafm;->a(Laee;)V

    goto :goto_1

    .line 49
    .end local v1    # "message":Lafj;
    :cond_3
    invoke-virtual {v2}, Lafi;->getSpeechText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 50
    invoke-virtual {v2}, Lafi;->getSpeechText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lafm;->b(Ljava/lang/String;Z)V

    goto :goto_2

    .line 52
    :cond_4
    const-string/jumbo v4, "\u4e3a\u4f60\u627e\u5230\u4ee5\u4e0b\u7ed3\u679c"

    invoke-virtual {p0, v4, v7}, Lafm;->b(Ljava/lang/String;Z)V

    goto :goto_2

    .line 61
    .end local v0    # "firstItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .end local v3    # "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    :cond_5
    const-string/jumbo v4, "\u6ca1\u6709\u67e5\u8be2\u5230\u76f8\u5173\u7684\u542c\u4e66\u8d44\u6e90\u6570\u636e"

    invoke-virtual {p0, v4, v7}, Lafm;->b(Ljava/lang/String;Z)V

    goto :goto_1
.end method
