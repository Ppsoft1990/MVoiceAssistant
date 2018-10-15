.class public Lasa;
.super Ljava/lang/Object;
.source "LocalPluginUtil.java"


# direct methods
.method public static a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugins(I)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "canditor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 182
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v2, :cond_0

    .line 183
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 184
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 187
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 190
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 191
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string/jumbo v4, "LocalPluginUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllVisibleInstalledPlugins pluginType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v2    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    return-object v0
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "pluginType"    # I

    .prologue
    .line 36
    invoke-static {p0}, Lasa;->i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 2
    .param p0, "pluginType"    # I
    .param p1, "pluginVersion"    # I

    .prologue
    .line 225
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getConfigMap()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 226
    .local v0, "minVersion":I
    if-gt v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v2

    .line 243
    :cond_1
    const/4 v1, 0x0

    .line 245
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 246
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "LocalPluginUtil"

    const-string/jumbo v4, "get packageinfo failed"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 4
    .param p0, "pluginType"    # I

    .prologue
    .line 45
    invoke-static {p0}, Lasa;->i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    .line 46
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v0

    .line 48
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    .line 50
    .local v2, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 55
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .end local v2    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugins(I)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 210
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v1    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    return-object v2
.end method

.method public static c(I)Ljava/lang/String;
    .locals 4
    .param p0, "pluginType"    # I

    .prologue
    .line 64
    invoke-static {p0}, Lasa;->i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    .line 65
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v0

    .line 67
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    .line 69
    .local v2, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getName()Ljava/lang/String;

    move-result-object v3

    .line 74
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .end local v2    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4
    .param p0, "pluginType"    # I

    .prologue
    .line 83
    invoke-static {p0}, Lasa;->i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    .line 84
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v0

    .line 86
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    .line 88
    .local v2, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v3

    .line 93
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .end local v2    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 5
    .param p0, "pluginType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-static {p0}, Lasa;->f(I)I

    move-result v1

    .line 113
    .local v1, "version":I
    packed-switch p0, :pswitch_data_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginEntryType(I)I

    move-result v0

    .line 138
    .local v0, "type":I
    if-eqz v0, :cond_1

    .end local v0    # "type":I
    :goto_0
    return v2

    .line 115
    :pswitch_0
    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 120
    :pswitch_1
    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 125
    :pswitch_2
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    move v2, v3

    .line 126
    goto :goto_0

    .line 130
    :pswitch_3
    if-gt v1, v2, :cond_0

    goto :goto_0

    .restart local v0    # "type":I
    :cond_1
    move v2, v3

    .line 138
    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static f(I)I
    .locals 3
    .param p0, "pluginType"    # I

    .prologue
    .line 147
    invoke-static {p0}, Lasa;->i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    .line 148
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v0

    .line 150
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v2

    .line 154
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static g(I)Z
    .locals 4
    .param p0, "pluginType"    # I

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {p0}, Lasa;->i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    .line 164
    .local v0, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 167
    :cond_0
    return v1
.end method

.method public static h(I)Z
    .locals 1
    .param p0, "pluginType"    # I

    .prologue
    .line 236
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->checkPluginGrayControl(I)Z

    move-result v0

    return v0
.end method

.method private static i(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .locals 1
    .param p0, "pluginType"    # I

    .prologue
    .line 102
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    return-object v0
.end method
