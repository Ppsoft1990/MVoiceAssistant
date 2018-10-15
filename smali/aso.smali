.class public Laso;
.super Ljava/lang/Object;
.source "PluginRedDotManager.java"


# static fields
.field private static a:Laso;


# instance fields
.field private b:Lasg;

.field private c:Lil;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v0

    iput-object v0, p0, Laso;->b:Lasg;

    .line 40
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Laso;->c:Lil;

    .line 41
    return-void
.end method

.method public static a()Laso;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Laso;->a:Laso;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Laso;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Laso;->a:Laso;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Laso;

    invoke-direct {v0}, Laso;-><init>()V

    sput-object v0, Laso;->a:Laso;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Laso;->a:Laso;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .param p1, "isNeedShowRedDot"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Laso;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.SETTINGS_IS_NEED_SHOW_RED_DOT_FOR_HOME_TITLE"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "isNeedShowRedDotForManager"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Laso;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.SETTINGS_IS_NEED_SHOW_RED_DOT_FOR_INSTALLED_PLUGIN_MANAGER"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Laso;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.SETTINGS_IS_NEED_SHOW_RED_DOT_FOR_HOME_TITLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Laso;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.SETTINGS_IS_NEED_SHOW_RED_DOT_FOR_INSTALLED_PLUGIN_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 8

    .prologue
    .line 106
    invoke-virtual {p0}, Laso;->b()Z

    move-result v4

    .line 108
    .local v4, "isShow":Z
    :try_start_0
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v3

    .line 109
    .local v3, "homeView":Landroid/view/View;
    instance-of v6, v3, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    if-eqz v6, :cond_0

    .line 110
    move-object v0, v3

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-object v2, v0

    .line 111
    .local v2, "homePageView":Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v5, "pluginJson":Lorg/json/JSONObject;
    const-string/jumbo v6, "focus"

    const-string/jumbo v7, "plugin_manager"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v6, "id"

    const-string/jumbo v7, "id_plugin"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v6, "isShow"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "homePageView":Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;
    .end local v3    # "homeView":Landroid/view/View;
    .end local v5    # "pluginJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginRedDotManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
