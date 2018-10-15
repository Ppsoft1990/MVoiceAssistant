.class public Lcom/iflytek/framework/business/components/NewsComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "NewsComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_AppComponents"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

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
    const/4 v5, 0x0

    .line 37
    const-string/jumbo v0, "Business_AppComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExec action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v0, "show_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u7075\u7280\u4e3a\u60a8\u64ad\u65b0\u95fb"

    const-string/jumbo v2, ""

    sget v3, Lof;->j:I

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lazq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-object v5

    .line 44
    :cond_1
    const-string/jumbo v0, "hide_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    sget v1, Lof;->j:I

    invoke-static {v0, v1}, Lazq;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo v0, "play_media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "ringtone/news.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 54
    .local v7, "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v7}, Lod;->playRingToneFromAssert(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v7    # "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 57
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "Business_AppComponents"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/framework/business/components/NewsComponents;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method
