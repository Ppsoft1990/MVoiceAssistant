.class final Lcom/iflytek/framework/plugin/internal/PluginInstaller;
.super Ljava/lang/Object;
.source "PluginInstaller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginInstaller"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPluginClassLoaderHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/DexClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginPool;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/iflytek/framework/plugin/internal/PluginPool;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    .line 46
    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    .line 47
    return-void
.end method

.method private getPluginClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 3
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    check-cast v0, Ldalvik/system/DexClassLoader;

    .line 348
    .restart local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    :goto_0
    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p2, p3, v1, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 345
    .restart local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeClassLoaderCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method protected createApkPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Lcom/iflytek/framework/plugin/internal/Plugin;
    .locals 6
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    const/4 v1, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 256
    const-string/jumbo v4, "PluginInstaller"

    const-string/jumbo v5, "createApkPlugin plugininfo is null"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v3

    .line 261
    .local v3, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getIsApk()I

    move-result v0

    .line 262
    .local v0, "isApk":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 263
    new-instance v1, Lcom/iflytek/framework/plugin/internal/Plugin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/iflytek/framework/plugin/internal/Plugin;-><init>(J)V

    .line 264
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    new-instance v2, Lcom/iflytek/framework/plugin/internal/ApkPluginBundle;

    invoke-direct {v2}, Lcom/iflytek/framework/plugin/internal/ApkPluginBundle;-><init>()V

    .line 265
    .local v2, "pluginBundle":Lcom/iflytek/framework/plugin/internal/ApkPluginBundle;
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginBundle(Lcom/iflytek/yd/plugin/AbsPluginBundle;)V

    .line 266
    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)V

    goto :goto_0
.end method

.method protected createBasicPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/yd/plugin/IPluginContext;)Lcom/iflytek/framework/plugin/internal/Plugin;
    .locals 16
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p2, "context"    # Lcom/iflytek/yd/plugin/IPluginContext;

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 157
    const-string/jumbo v13, "PluginInstaller"

    const-string/jumbo v14, "createBusinessPlugin plugininfo is null"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v9, 0x0

    .line 193
    :cond_0
    :goto_0
    return-object v9

    .line 161
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginInterface()Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v11

    .line 162
    .local v11, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v12

    .line 163
    .local v12, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-virtual {v12}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getKind()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "kind":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 168
    :try_start_0
    invoke-virtual {v11}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->getBundleClassPath()Ljava/lang/String;

    move-result-object v13

    .line 167
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 170
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iflytek/yd/plugin/AbsPluginBundle;

    .line 171
    .local v10, "pluginBundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    new-instance v9, Lcom/iflytek/framework/plugin/internal/Plugin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v9, v14, v15}, Lcom/iflytek/framework/plugin/internal/Plugin;-><init>(J)V

    .line 172
    .local v9, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    invoke-virtual {v9, v10}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginBundle(Lcom/iflytek/yd/plugin/AbsPluginBundle;)V

    .line 174
    if-eqz v10, :cond_2

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginResource()Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v10, v13, v0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->init(Lcom/iflytek/yd/plugin/IPluginResource;Lcom/iflytek/yd/plugin/IPluginContext;)V

    .line 177
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)V

    .line 179
    invoke-virtual {v11}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->getPluginAbilityClassPaths()Ljava/util/ArrayList;

    move-result-object v5

    .line 180
    .local v5, "abilityPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 181
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 182
    .local v4, "abilityClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    .line 184
    .local v3, "ability":Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v9, v2}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginAbilities(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v2    # "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    .end local v3    # "ability":Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;
    .end local v4    # "abilityClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "abilityPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    .end local v10    # "pluginBundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    :catch_0
    move-exception v7

    .line 189
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "PluginInstaller"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected createGPPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Lcom/iflytek/framework/plugin/internal/Plugin;
    .locals 6
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    const-string/jumbo v3, "PluginInstaller"

    const-string/jumbo v4, "createGPPlugin plugininfo is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    .line 286
    .local v2, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    new-instance v0, Lcom/iflytek/framework/plugin/internal/Plugin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/iflytek/framework/plugin/internal/Plugin;-><init>(J)V

    .line 287
    .local v0, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    new-instance v1, Lcom/iflytek/framework/plugin/internal/ApkPluginBundle;

    invoke-direct {v1}, Lcom/iflytek/framework/plugin/internal/ApkPluginBundle;-><init>()V

    .line 288
    .local v1, "pluginBundle":Lcom/iflytek/framework/plugin/internal/ApkPluginBundle;
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginBundle(Lcom/iflytek/yd/plugin/AbsPluginBundle;)V

    .line 289
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)V

    goto :goto_0
.end method

.method protected createPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/yd/plugin/IPluginContext;)Lcom/iflytek/framework/plugin/internal/Plugin;
    .locals 19
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p2, "context"    # Lcom/iflytek/yd/plugin/IPluginContext;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string/jumbo v16, "PluginInstaller"

    const-string/jumbo v17, "createPlugin plugininfo is null"

    invoke-static/range {v16 .. v17}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v10, 0x0

    .line 146
    :goto_0
    return-object v10

    .line 103
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginInterface()Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v12

    .line 104
    .local v12, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v13

    .line 105
    .local v13, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "installPath":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getIsApk()I

    move-result v9

    .line 107
    .local v9, "isApk":I
    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v15

    .line 108
    .local v15, "version":I
    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v14

    .line 111
    .local v14, "type":I
    if-nez v9, :cond_5

    :try_start_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 112
    invoke-static {v8}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getJarDexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "dexPath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 114
    const/4 v10, 0x0

    goto :goto_0

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "dex"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 118
    .local v4, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "dirpathString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 122
    .local v2, "classLoader":Ldalvik/system/DexClassLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getDeletedPluginVersion(I)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v15, :cond_2

    .line 125
    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->removeClassLoaderCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    invoke-virtual {v13}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->getPluginClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v2

    .line 129
    :cond_3
    if-eqz v2, :cond_5

    if-eqz v12, :cond_5

    .line 130
    invoke-virtual {v12}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->getBundleClassPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 131
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/iflytek/yd/plugin/AbsPluginBundle;

    .line 132
    .local v11, "pluginBundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    new-instance v10, Lcom/iflytek/framework/plugin/internal/Plugin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v10, v0, v1}, Lcom/iflytek/framework/plugin/internal/Plugin;-><init>(J)V

    .line 133
    .local v10, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    invoke-virtual {v10, v11}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginBundle(Lcom/iflytek/yd/plugin/AbsPluginBundle;)V

    .line 135
    if-eqz v11, :cond_4

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginResource()Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->init(Lcom/iflytek/yd/plugin/IPluginResource;Lcom/iflytek/yd/plugin/IPluginContext;)V

    .line 138
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)V

    .line 139
    invoke-virtual {v10, v2}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    .end local v2    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "dexOutputDir":Ljava/io/File;
    .end local v5    # "dexPath":Ljava/lang/String;
    .end local v6    # "dirpathString":Ljava/lang/String;
    .end local v10    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    .end local v11    # "pluginBundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    :catch_0
    move-exception v7

    .line 144
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "PluginInstaller"

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method protected deleteInstallPlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I
    .locals 3
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 300
    :cond_0
    const-string/jumbo v1, "PluginInstaller"

    const-string/jumbo v2, "deleteInstallPlugin info or path is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const v1, 0x8008

    .line 312
    :goto_0
    return v1

    .line 303
    :cond_1
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 305
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_2
    const v1, 0x8000

    goto :goto_0
.end method

.method protected deleteRomPluginCache(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I
    .locals 3
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 317
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    const v1, 0x8000

    return v1
.end method

.method protected deleteRomPluginLoader(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I
    .locals 3
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 329
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->mPluginClassLoaderHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    const v1, 0x8000

    return v1
.end method

.method protected handleInstallPlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I
    .locals 7
    .param p1, "downloadPath"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    const v4, 0x8003

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 51
    :cond_0
    const-string/jumbo v4, "PluginInstaller"

    const-string/jumbo v5, "handleInstallPlugin path or info is empty"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const v4, 0x8001

    .line 90
    :goto_0
    return v4

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v3

    .line 57
    .local v3, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v3, :cond_6

    .line 58
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "pluginId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    const-string/jumbo v5, "PluginInstaller"

    const-string/jumbo v6, "handleInstallPlugin pluginId is empty"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v2    # "pluginId":Ljava/lang/String;
    .end local v3    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PluginInstaller"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const v4, 0x8100

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pluginId":Ljava/lang/String;
    .restart local v3    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "installPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    const-string/jumbo v5, "PluginInstaller"

    const-string/jumbo v6, "handleInstallPlugin installPath is empty"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {}, Lhl;->o()Z

    move-result v4

    if-nez v4, :cond_4

    .line 71
    const-string/jumbo v4, "PluginInstaller"

    const-string/jumbo v5, "handleInstallPlugin no sdcard"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v4, 0x8005

    goto :goto_0

    .line 75
    :cond_4
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 76
    const-string/jumbo v4, "PluginInstaller"

    const-string/jumbo v5, "handleInstallPlugin file not exist"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v4, 0x8006

    goto :goto_0

    .line 80
    :cond_5
    invoke-static {p1, v1}, Lcom/iflytek/yd/util/FileManager;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 81
    const-string/jumbo v4, "PluginInstaller"

    const-string/jumbo v5, "handleInstallPlugin unzip error"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    const v4, 0x8007

    goto :goto_0

    .line 90
    .end local v1    # "installPath":Ljava/lang/String;
    .end local v2    # "pluginId":Ljava/lang/String;
    :cond_6
    const v4, 0x8000

    goto :goto_0
.end method

.method protected registPluginAbilities(Lcom/iflytek/framework/plugin/internal/Plugin;)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .locals 14
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/Plugin;

    .prologue
    const/4 v11, 0x0

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v12

    if-nez v12, :cond_2

    .line 203
    :cond_0
    const-string/jumbo v12, "PluginInstaller"

    const-string/jumbo v13, "registPluginAbilities plugin is null"

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v11

    .line 245
    .end local p1    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    :cond_1
    :goto_0
    return-object p1

    .line 207
    .restart local p1    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v12

    invoke-interface {v12}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginInterface()Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v9

    .line 208
    .local v9, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    if-nez v9, :cond_3

    .line 209
    const-string/jumbo v12, "PluginInstaller"

    const-string/jumbo v13, "registPluginAbilities interface is null"

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v11

    .line 210
    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v12

    invoke-interface {v12}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v10

    .line 214
    .local v10, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-virtual {v10}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "installPath":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getIsApk()I

    move-result v7

    .line 218
    .local v7, "isApk":I
    if-nez v7, :cond_1

    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 219
    invoke-static {v6}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getJarDexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "dexPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object p1, v11

    .line 221
    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 225
    invoke-virtual {v9}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->getPluginAbilityClassPaths()Ljava/util/ArrayList;

    move-result-object v2

    .line 226
    .local v2, "abilityPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 228
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 229
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 230
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/plugin/IPluginAbility;

    .line 231
    .local v1, "ability":Lcom/iflytek/yd/plugin/IPluginAbility;
    if-eqz v1, :cond_5

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    .end local v0    # "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    .end local v1    # "ability":Lcom/iflytek/yd/plugin/IPluginAbility;
    .end local v2    # "abilityPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "dexPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 244
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "PluginInstaller"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    .restart local v2    # "abilityPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "dexPath":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 237
    invoke-virtual {p1, v0}, Lcom/iflytek/framework/plugin/internal/Plugin;->setPluginAbilities(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
