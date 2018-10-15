.class public Ladz;
.super Ladr;
.source "AppResultHandler.java"


# instance fields
.field private d:Lud;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ladr;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 126
    :cond_0
    const-string/jumbo v4, "AppResultHandler"

    const-string/jumbo v5, "queryAppItems appname is empty"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    return-void

    .line 130
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/app/AppItem;

    .line 132
    .local v0, "appItem":Lcom/iflytek/base/app/AppItem;
    :try_start_0
    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "thumbnail":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getAppClassName()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 138
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v3}, Lcom/iflytek/base/app/AppItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "thumbnail":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "AppResultHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lud;Z)V
    .locals 6
    .param p1, "filterResult"    # Lud;
    .param p2, "isTextSearchResult"    # Z

    .prologue
    .line 100
    const-string/jumbo v0, "AppResultHandler"

    const-string/jumbo v1, "gotoSearchPage "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Lud;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1}, Lud;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string/jumbo v0, "\u8bf7\u8bf4\u51fa\u5e94\u7528\u540d\u79f0"

    invoke-virtual {p0, v0}, Ladz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lud;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ladz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lud;->getTip()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "tip":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Ladz;->b(Ljava/lang/String;Z)V

    .line 117
    :cond_3
    invoke-virtual {p1}, Lud;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lud;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ladz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lud;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lud;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Ladz;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Ladr;->a()V

    .line 39
    return-void
.end method

.method protected b()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lue;

    invoke-direct {v0}, Lue;-><init>()V

    return-object v0
.end method

.method public c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 10
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 43
    invoke-super {p0, p1, p2}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 45
    const-string/jumbo v8, "AppResultHandler"

    const-string/jumbo v9, "onSuccess"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    check-cast p2, Lud;

    .end local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    iput-object p2, p0, Ladz;->d:Lud;

    .line 49
    iget-object v8, p0, Ladz;->d:Lud;

    invoke-virtual {v8}, Lud;->a()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v8

    if-ne v8, v6, :cond_1

    move v4, v6

    .line 53
    .local v4, "isTextSearchResult":Z
    :goto_0
    const-string/jumbo v8, "launch"

    iget-object v9, p0, Ladz;->d:Lud;

    invoke-virtual {v9}, Lud;->getOperation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 55
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v8

    invoke-virtual {v8, v2}, Lgq;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 57
    .local v1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    invoke-direct {p0, v1}, Ladz;->a(Ljava/util/ArrayList;)V

    .line 59
    new-instance v3, Laea;

    invoke-direct {v3, v1}, Laea;-><init>(Ljava/util/ArrayList;)V

    .line 61
    .local v3, "appResultMessage":Laea;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 62
    :cond_0
    iget-object v6, p0, Ladz;->d:Lud;

    invoke-direct {p0, v6, v4}, Ladz;->a(Lud;Z)V

    .line 92
    .end local v1    # "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    .end local v3    # "appResultMessage":Laea;
    :goto_1
    return-void

    .end local v4    # "isTextSearchResult":Z
    :cond_1
    move v4, v7

    .line 51
    goto :goto_0

    .line 65
    .restart local v1    # "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    .restart local v3    # "appResultMessage":Laea;
    .restart local v4    # "isTextSearchResult":Z
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 66
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/app/AppItem;

    .line 67
    .local v0, "appItem":Lcom/iflytek/base/app/AppItem;
    if-nez v0, :cond_3

    .line 69
    const-string/jumbo v6, "AppResultHandler"

    const-string/jumbo v7, "appItem is null , return"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v6, p0, Ladz;->d:Lud;

    invoke-direct {p0, v6, v4}, Ladz;->a(Lud;Z)V

    goto :goto_1

    .line 75
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getAppClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u597d\u7684\uff0c\u4e3a\u60a8\u6253\u5f00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "tip":Ljava/lang/String;
    const-string/jumbo v6, "AppResultHandler"

    invoke-static {v6, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v5, v7}, Ladz;->b(Ljava/lang/String;Z)V

    .line 86
    .end local v0    # "appItem":Lcom/iflytek/base/app/AppItem;
    :goto_2
    invoke-virtual {p0, v3}, Ladz;->a(Laee;)V

    goto :goto_1

    .line 81
    .end local v5    # "tip":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u627e\u5230"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u4e2a\u5e94\u7528\u7a0b\u5e8f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .restart local v5    # "tip":Ljava/lang/String;
    const-string/jumbo v8, "AppResultHandler"

    invoke-static {v8, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-nez v4, :cond_5

    :goto_3
    invoke-virtual {p0, v5, v6}, Ladz;->b(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    .line 89
    .end local v1    # "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    .end local v3    # "appResultMessage":Laea;
    .end local v5    # "tip":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Ladz;->d:Lud;

    invoke-direct {p0, v6, v4}, Ladz;->a(Lud;Z)V

    goto/16 :goto_1
.end method
