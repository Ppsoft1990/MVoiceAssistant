.class public Lvc;
.super Ljava/lang/Object;
.source "BannerActionHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lvc;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lvc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvc;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lvc;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Lvc;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lvc;->c:Lvc;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lvc;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lvc;->c:Lvc;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lvc;

    invoke-direct {v0, p0}, Lvc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvc;->c:Lvc;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lvc;->c:Lvc;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 14
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 54
    sget-object v11, Lvc;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "clickBanner, arg is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "argJ":Lorg/json/JSONObject;
    const-string/jumbo v11, "actionType"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "targetAction":Ljava/lang/String;
    const-string/jumbo v11, "title"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "actionTitle":Ljava/lang/String;
    const-string/jumbo v11, "actionParams"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 60
    .local v8, "targetparam":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 61
    .local v3, "paramObj":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_1

    .line 128
    .end local v0    # "actionTitle":Ljava/lang/String;
    .end local v1    # "argJ":Lorg/json/JSONObject;
    .end local v3    # "paramObj":Lorg/json/JSONObject;
    .end local v7    # "targetAction":Ljava/lang/String;
    .end local v8    # "targetparam":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v10

    .line 64
    .restart local v0    # "actionTitle":Ljava/lang/String;
    .restart local v1    # "argJ":Lorg/json/JSONObject;
    .restart local v3    # "paramObj":Lorg/json/JSONObject;
    .restart local v7    # "targetAction":Ljava/lang/String;
    .restart local v8    # "targetparam":Lorg/json/JSONArray;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_0

    .line 68
    const-string/jumbo v11, "OPEN_WEBSITE"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 69
    const-string/jumbo v11, "url"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "url":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 71
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v9, v12}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v9    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v11, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v11}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    move-object v10, v11

    goto :goto_0

    .line 99
    :cond_3
    const-string/jumbo v11, "START_INNER_TASK"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 100
    const-string/jumbo v11, "target"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "target":Ljava/lang/String;
    const-string/jumbo v11, "params"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 102
    .local v4, "params":Lorg/json/JSONObject;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v4, :cond_2

    .line 103
    const-string/jumbo v11, "OPEN_PLUGIN"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 104
    const-string/jumbo v11, "url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 105
    .local v5, "pluginId":I
    iget-object v11, p0, Lvc;->b:Landroid/content/Context;

    const-string/jumbo v12, "banner"

    invoke-static {v11, v5, v12}, Lazo;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v0    # "actionTitle":Ljava/lang/String;
    .end local v1    # "argJ":Lorg/json/JSONObject;
    .end local v3    # "paramObj":Lorg/json/JSONObject;
    .end local v4    # "params":Lorg/json/JSONObject;
    .end local v5    # "pluginId":I
    .end local v6    # "target":Ljava/lang/String;
    .end local v7    # "targetAction":Ljava/lang/String;
    .end local v8    # "targetparam":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lvc;->a:Ljava/lang/String;

    const-string/jumbo v12, "clickBanner exception"

    invoke-static {v11, v12, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "actionTitle":Ljava/lang/String;
    .restart local v1    # "argJ":Lorg/json/JSONObject;
    .restart local v3    # "paramObj":Lorg/json/JSONObject;
    .restart local v4    # "params":Lorg/json/JSONObject;
    .restart local v6    # "target":Ljava/lang/String;
    .restart local v7    # "targetAction":Ljava/lang/String;
    .restart local v8    # "targetparam":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string/jumbo v11, "OPEN_OPERATION"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 107
    const-string/jumbo v11, "url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .restart local v9    # "url":Ljava/lang/String;
    const-string/jumbo v11, "LOCAL_CHANNEL_TELEPHONE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 110
    sget-object v11, Lvc;->a:Ljava/lang/String;

    const-string/jumbo v12, "\u6253\u5f00\u7535\u8bdd\u77ed\u4fe1\u9891\u9053"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v11

    const-string/jumbo v12, "telephone"

    const/4 v13, 0x0

    .line 112
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_1

    .line 113
    :cond_5
    const-string/jumbo v11, "LOCAL_CHANNEL_SCHEDULE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 115
    sget-object v11, Lvc;->a:Ljava/lang/String;

    const-string/jumbo v12, "\u6253\u5f00\u63d0\u9192\u9891\u9053"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v11

    const-string/jumbo v12, "schedule"

    const/4 v13, 0x0

    .line 117
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
