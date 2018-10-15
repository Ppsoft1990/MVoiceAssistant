.class public final Lcom/iflytek/framework/business/components/DownloadComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "DownloadComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_DownloadComponents"


# instance fields
.field private mAppCardAbilityHelper:Lub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/DownloadComponents;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/DownloadComponents;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/DownloadComponents;->startDownload(Lorg/json/JSONArray;)V

    return-void
.end method

.method private handleDownload(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "params"    # Lorg/json/JSONArray;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/DownloadComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/business/components/DownloadComponents$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/framework/business/components/DownloadComponents$1;-><init>(Lcom/iflytek/framework/business/components/DownloadComponents;Lorg/json/JSONArray;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 92
    return-void
.end method

.method private startDownload(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "params"    # Lorg/json/JSONArray;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "downUrl":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "appName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "packageName":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v5

    .line 99
    .local v5, "isAutoOpen":Z
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "entry":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "fileName":Ljava/lang/String;
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "size":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/DownloadComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/DownloadComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lagh;->a(Landroid/content/Context;)Lagh;

    move-result-object v8

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/DownloadComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 103
    invoke-virtual {v8, v0}, Lagh;->a(Landroid/app/Activity;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/DownloadComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lagh;->a(Landroid/content/Context;)Lagh;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 35
    const-string/jumbo v4, "Business_DownloadComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onExec action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " params = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v4, "handleAppInstallAction"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/components/DownloadComponents;->handleDownload(Lorg/json/JSONArray;)V

    .line 77
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 38
    :cond_1
    const-string/jumbo v4, "registerDownloadListener"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    .line 40
    .local v1, "needNotify":I
    iget-object v4, p0, Lcom/iflytek/framework/business/components/DownloadComponents;->mAppCardAbilityHelper:Lub;

    invoke-virtual {v4, v1}, Lub;->a(I)V

    goto :goto_0

    .line 41
    .end local v1    # "needNotify":I
    :cond_2
    const-string/jumbo v4, "queryTaskProgress"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 43
    .local v2, "urlArr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 44
    .local v3, "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .restart local v3    # "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 47
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    .end local v0    # "i":I
    :cond_3
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    iget-object v6, p0, Lcom/iflytek/framework/business/components/DownloadComponents;->mAppCardAbilityHelper:Lub;

    invoke-virtual {v6, v3}, Lub;->a(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 51
    .end local v2    # "urlArr":Lorg/json/JSONArray;
    .end local v3    # "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v4, "startDownload"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    const-string/jumbo v4, "startDownloadBroswer"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 113
    new-instance v0, Lub;

    invoke-direct {v0, p1, p2}, Lub;-><init>(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/DownloadComponents;->mAppCardAbilityHelper:Lub;

    .line 114
    return-void
.end method
