.class public Lasb;
.super Ljava/lang/Object;
.source "NetPluginUtil.java"


# direct methods
.method private static a([JJ)I
    .locals 5
    .param p0, "allInstalledTime"    # [J
    .param p1, "installedTime"    # J

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 298
    aget-wide v2, p0, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    .line 299
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 300
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, p0, v2

    aput-wide v2, p0, v1

    .line 299
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 302
    :cond_0
    aput-wide p1, p0, v0

    .line 306
    .end local v1    # "j":I
    :cond_1
    return v0

    .line 297
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .locals 4
    .param p1, "pluginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;I)",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    const/4 v1, 0x0

    .line 145
    invoke-static {p0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 149
    .local v0, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .end local v0    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_3
    move-object v0, v1

    .line 156
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "netPlugin"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .param p2, "pluginType"    # I

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object p1

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    :cond_1
    invoke-static {}, Lart;->a()Lart;

    move-result-object v1

    invoke-virtual {v1, p2}, Lart;->a(I)Larv;

    move-result-object v0

    .line 173
    .local v0, "defaultPluginData":Larv;
    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0}, Larv;->d()Ljava/lang/String;

    move-result-object v1

    .line 179
    .end local v0    # "defaultPluginData":Larv;
    :goto_0
    return-object v1

    .line 176
    .restart local v0    # "defaultPluginData":Larv;
    :cond_2
    const-string/jumbo v1, "\u63d2\u4ef6"

    goto :goto_0

    .line 179
    .end local v0    # "defaultPluginData":Larv;
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lase;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "installedPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    .local p2, "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 190
    :cond_0
    if-nez p1, :cond_1

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "installedPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .restart local p1    # "installedPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 195
    if-nez p2, :cond_2

    .line 196
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .restart local p2    # "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 201
    invoke-static {}, Lasa;->b()Ljava/util/List;

    move-result-object v6

    .line 204
    .local v6, "installedPluginTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lasa;->a()Ljava/util/List;

    move-result-object v5

    .line 205
    .local v5, "installedPluginList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-static {v5}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 206
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    new-array v11, v14, [J

    .line 207
    .local v11, "pluginInstallTimes":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v14, v11

    if-ge v2, v14, :cond_3

    .line 208
    const-wide v14, 0x7fffffffffffffffL

    aput-wide v14, v11, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 211
    .local v8, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v8, :cond_4

    .line 214
    invoke-interface {v8}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v12

    .line 215
    .local v12, "pluginType":I
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v15

    .line 216
    invoke-virtual {v15, v12}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v4

    .line 218
    .local v4, "info":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    invoke-interface {v8}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginCreateTime()J

    move-result-wide v16

    .line 217
    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lasb;->a([JJ)I

    move-result v3

    .line 219
    .local v3, "index":I
    if-eqz v4, :cond_5

    .line 220
    new-instance v15, Lase;

    invoke-direct {v15, v4}, Lase;-><init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 222
    :cond_5
    new-instance v15, Lase;

    invoke-direct {v15, v8}, Lase;-><init>(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 228
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "info":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v8    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v11    # "pluginInstallTimes":[J
    .end local v12    # "pluginType":I
    :cond_6
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v14

    .line 229
    invoke-virtual {v14}, Lasg;->b()Ljava/util/List;

    move-result-object v13

    .line 230
    .local v13, "totalPluginInfo":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static {v13}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 231
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 232
    .local v8, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v8, :cond_7

    .line 235
    invoke-virtual {v8}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v12

    .line 237
    .restart local v12    # "pluginType":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 241
    const/4 v15, 0x7

    if-eq v12, v15, :cond_7

    const/16 v15, 0xcd

    if-eq v12, v15, :cond_7

    const/4 v15, 0x3

    if-eq v12, v15, :cond_7

    .line 246
    invoke-virtual {v8}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Lasb;->c(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 250
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v15, Lase;

    invoke-direct {v15, v8}, Lase;-><init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    :cond_8
    invoke-static {v12}, Lasb;->b(I)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lasa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 256
    const-string/jumbo v15, "NetPluginUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " installed a non-plugin version, discard"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 260
    :cond_9
    new-instance v15, Lase;

    invoke-direct {v15, v8}, Lase;-><init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v12    # "pluginType":I
    :cond_a
    invoke-static {}, Lart;->a()Lart;

    move-result-object v14

    invoke-virtual {v14}, Lart;->b()Ljava/util/List;

    move-result-object v10

    .line 266
    .local v10, "pluginDataList":Ljava/util/List;, "Ljava/util/List<Larv;>;"
    invoke-static {v10}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 267
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_b
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Larv;

    .line 268
    .local v9, "pluginData":Larv;
    if-eqz v9, :cond_b

    .line 271
    invoke-interface {v9}, Larv;->b()I

    move-result v12

    .line 273
    .restart local v12    # "pluginType":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 274
    new-instance v4, Lase;

    invoke-direct {v4, v9}, Lase;-><init>(Larv;)V

    .line 275
    .local v4, "info":Lase;
    invoke-interface {v9}, Larv;->g()Ljava/lang/String;

    move-result-object v7

    .line 276
    .restart local v7    # "pkgName":Ljava/lang/String;
    invoke-static {v12}, Lasb;->a(I)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 278
    :cond_c
    invoke-static {v12}, Lasb;->b(I)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 279
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lasa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 281
    const-string/jumbo v15, "NetPluginUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " installed a non-plugin version, discard"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 284
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 290
    .end local v4    # "info":Lase;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v9    # "pluginData":Larv;
    .end local v10    # "pluginDataList":Ljava/util/List;, "Ljava/util/List<Larv;>;"
    .end local v12    # "pluginType":I
    :cond_e
    const-string/jumbo v14, "NetPluginUtil"

    const-string/jumbo v15, "----->>>> initPluginInfos()"

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static a(I)Z
    .locals 4
    .param p0, "pluginType"    # I

    .prologue
    .line 36
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v2

    invoke-virtual {v2, p0}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v1

    .line 37
    .local v1, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-nez v1, :cond_1

    .line 39
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->isDefaultAPKPlugin(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v2

    .line 41
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginPackageWithType(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-interface {v2, v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->checkApkPluginExist(Ljava/lang/String;)Z

    move-result v2

    .line 46
    :goto_0
    return v2

    .line 43
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Lasb;->c(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v1}, Lcom/iflytek/greenplug/client/GreenPlug;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 53
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static a(Ljava/util/List;II)Z
    .locals 6
    .param p1, "pluginType"    # I
    .param p2, "currentVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "netPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static {p0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 106
    .local v1, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 113
    const/4 v2, -0x1

    .line 115
    .local v2, "version":I
    :try_start_0
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 119
    :goto_0
    if-le v2, p2, :cond_0

    .line 120
    const/4 v3, 0x1

    .line 124
    .end local v1    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v2    # "version":I
    :goto_1
    return v3

    .line 116
    .restart local v1    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .restart local v2    # "version":I
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "NetPluginUtil"

    const-string/jumbo v5, "isExistNewerPluginVersion() trans version failed"

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v2    # "version":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static b(I)Z
    .locals 4
    .param p0, "pluginType"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v2

    invoke-virtual {v2, p0}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v0

    .line 63
    .local v0, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-nez v0, :cond_1

    .line 65
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->isDefaultAPKPlugin(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    const-string/jumbo v2, "gp_apk"

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lasb;->b(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.iflytek.cmcc"

    .line 316
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 2
    .param p0, "pluginType"    # I

    .prologue
    .line 82
    invoke-static {p0}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-static {p0}, Lasb;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->checkApkPluginExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1
    .param p0, "pluginType"    # I

    .prologue
    .line 94
    invoke-static {p0}, Lasa;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {p0}, Lasb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 2
    .param p0, "pluginType"    # I

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "downloadPath":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "_0530"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {p0}, Lasb;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    :cond_0
    const-string/jumbo v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
