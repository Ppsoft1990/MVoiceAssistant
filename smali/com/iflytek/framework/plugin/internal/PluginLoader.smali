.class final Lcom/iflytek/framework/plugin/internal/PluginLoader;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;,
        Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterfaceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

.field private mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

.field private mResourceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSummaryParser:Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginPool;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginPool"    # Lcom/iflytek/framework/plugin/internal/PluginPool;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    .line 69
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    .line 70
    new-instance v0, Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mSummaryParser:Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;

    .line 71
    new-instance v0, Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mInterfaceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;

    .line 72
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/plugin/internal/PluginLoader;Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginLoader;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->parseIniFile(Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method private parseIniFile(Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 772
    if-nez p1, :cond_1

    .line 773
    const-string/jumbo v9, "PluginLoader"

    const-string/jumbo v10, "parseIniFile inputstream is null"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v3, 0x0

    .line 822
    :cond_0
    :goto_0
    return-object v3

    .line 777
    :cond_1
    const/4 v3, 0x0

    .line 778
    .local v3, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    const/4 v7, 0x0

    .line 779
    .local v7, "pluginSummary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    const/4 v6, 0x0

    .line 780
    .local v6, "pluginResource":Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    const/4 v4, 0x0

    .line 782
    .local v4, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    invoke-static {p1}, Lazm;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v5

    .line 783
    .local v5, "pluginMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 784
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 785
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;>;"
    const/4 v8, 0x0

    .line 786
    .local v8, "resourceProperties":Ljava/util/Properties;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 788
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 789
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 790
    const-string/jumbo v9, "PluginLoader"

    const-string/jumbo v10, "parseIniFile ini key is empty"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 794
    :cond_3
    const-string/jumbo v9, "SUMMARY"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 795
    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mSummaryParser:Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;

    if-eqz v9, :cond_2

    .line 796
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mSummaryParser:Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Properties;

    invoke-virtual {v10, v9}, Lcom/iflytek/framework/plugin/internal/parser/PluginSummaryParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v7

    goto :goto_1

    .line 799
    :cond_4
    const-string/jumbo v9, "INTERFACE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 800
    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mInterfaceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;

    if-eqz v9, :cond_2

    .line 801
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mInterfaceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Properties;

    invoke-virtual {v10, v9}, Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v4

    goto :goto_1

    .line 804
    :cond_5
    const-string/jumbo v9, "RESOURCE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 805
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "resourceProperties":Ljava/util/Properties;
    check-cast v8, Ljava/util/Properties;

    .line 806
    .restart local v8    # "resourceProperties":Ljava/util/Properties;
    if-eqz v7, :cond_2

    .line 807
    new-instance v9, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    invoke-virtual {v7}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mResourceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    .line 808
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mResourceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Properties;

    invoke-virtual {v10, v9}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v6

    goto :goto_1

    .line 812
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Properties;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mResourceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    if-nez v9, :cond_8

    .line 813
    :cond_7
    new-instance v9, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    invoke-virtual {v7}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mResourceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    .line 814
    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mResourceParser:Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;

    invoke-virtual {v9, v8}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v6

    .line 816
    :cond_8
    new-instance v3, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .end local v3    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-direct {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;-><init>()V

    .line 817
    .restart local v3    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-virtual {v3, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->setPluginInterface(Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;)V

    .line 818
    invoke-virtual {v3, v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->setPluginResource(Lcom/iflytek/framework/plugin/internal/entities/PluginResource;)V

    .line 819
    invoke-virtual {v3, v7}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->setPluginSummary(Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 3
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v0, 0x1

    .line 599
    if-nez p1, :cond_1

    .line 600
    const-string/jumbo v0, "PluginLoader"

    const-string/jumbo v1, "addPluginCache | plugin is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->addPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 607
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->removeDeletedPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 611
    :cond_2
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 612
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    :cond_3
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->contains(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 617
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->update(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)I

    goto :goto_0

    .line 619
    :cond_4
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->insert(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)J

    goto :goto_0
.end method

.method protected checkPluginInfo(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z
    .locals 6
    .param p1, "pluginType"    # I
    .param p2, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 317
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v3

    .line 318
    .local v3, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    const/4 v0, 0x1

    .line 319
    .local v0, "checkFlag":Z
    if-nez v3, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_0
    if-eqz v3, :cond_3

    .line 323
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v4

    .line 324
    .local v4, "type":I
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "pluginId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "pluginPackageName":Ljava/lang/String;
    if-eq p1, v4, :cond_1

    .line 327
    const/4 v0, 0x0

    .line 329
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 331
    :cond_2
    const/4 v0, 0x0

    .line 335
    .end local v1    # "pluginId":Ljava/lang/String;
    .end local v2    # "pluginPackageName":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_3
    return v0
.end method

.method protected checkPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z
    .locals 10
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v4

    .line 288
    .local v4, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    const/4 v6, 0x1

    .line 289
    .local v6, "versionCheckFlag":Z
    if-eqz v4, :cond_2

    .line 290
    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getRequireAppMinVersion()I

    move-result v0

    .line 291
    .local v0, "appRequireVersion":I
    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v1

    .line 292
    .local v1, "pluginVersion":I
    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v5

    .line 293
    .local v5, "type":I
    iget-object v7, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v7

    invoke-virtual {v7}, Lhl;->b()I

    move-result v7

    if-ge v7, v0, :cond_0

    .line 294
    const-string/jumbo v7, "PluginLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkPluginVersion require app version is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v6, 0x0

    .line 297
    :cond_0
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getConfigMap()Landroid/util/SparseIntArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 298
    .local v3, "requirePluginVersion":I
    if-le v3, v1, :cond_1

    .line 299
    const/4 v6, 0x0

    .line 301
    :cond_1
    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getRequireOSApi()I

    move-result v2

    .line 302
    .local v2, "requireOsApi":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v7, :cond_2

    .line 303
    const-string/jumbo v7, "PluginLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkPluginVersion require os api is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v6, 0x0

    .line 307
    .end local v0    # "appRequireVersion":I
    .end local v1    # "pluginVersion":I
    .end local v2    # "requireOsApi":I
    .end local v3    # "requirePluginVersion":I
    .end local v5    # "type":I
    :cond_2
    return v6
.end method

.method protected checkSqlPluginInfo(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p2, "sqlInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .prologue
    const/4 v0, 0x0

    .line 743
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 744
    :cond_0
    const-string/jumbo v1, "PluginLoader"

    const-string/jumbo v2, "checkSqlPluginInfo info is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_1
    :goto_0
    return v0

    .line 748
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    if-eqz v1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->checkSqlData(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method protected checkZipSign(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->checkJarSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deletePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 2
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    const-string/jumbo v0, "PluginLoader"

    const-string/jumbo v1, "deletePluginCache | plugin is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->removePlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 638
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->addDeletedPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->contains(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->delete(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)I

    .line 645
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected deleteSqlPluginCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->delete(Ljava/lang/String;)I

    .line 734
    :cond_0
    return-void
.end method

.method protected getAllPlugins()Ljava/util/List;
    .locals 1
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
    .line 141
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPluginCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCachePluginVersion(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getCachePluginVersion(I)I

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;
    .locals 14
    .param p1, "pluginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;)",
            "Lcom/iflytek/yd/plugin/IPluginAbility;"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "abilityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    if-nez p2, :cond_1

    .line 558
    const-string/jumbo v8, "PluginLoader"

    const-string/jumbo v9, "getPluginAbility abilityClass is empty"

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x0

    .line 590
    :cond_0
    :goto_0
    return-object v1

    .line 562
    :cond_1
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v8, :cond_4

    .line 563
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v8, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v4

    .line 564
    .local v4, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v4, :cond_4

    .line 565
    invoke-interface {v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v5

    .line 566
    .local v5, "state":I
    const/4 v8, 0x3

    if-eq v5, v8, :cond_2

    .line 567
    const-string/jumbo v8, "PluginLoader"

    const-string/jumbo v9, "getPluginAbility state not start"

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v1, 0x0

    goto :goto_0

    .line 571
    :cond_2
    invoke-interface {v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v0

    .line 572
    .local v0, "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/plugin/IPluginAbility;

    .line 574
    .local v1, "ability":Lcom/iflytek/yd/plugin/IPluginAbility;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 575
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v3, :cond_3

    array-length v8, v3

    if-lez v8, :cond_3

    .line 576
    array-length v10, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v2, v3, v8

    .line 577
    .local v2, "in":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "test1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 579
    .local v7, "test2":Ljava/lang/String;
    const-string/jumbo v11, "PluginTest"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " test2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 576
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 590
    .end local v0    # "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    .end local v1    # "ability":Lcom/iflytek/yd/plugin/IPluginAbility;
    .end local v2    # "in":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v5    # "state":I
    .end local v6    # "test1":Ljava/lang/String;
    .end local v7    # "test2":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/Plugin;

    .line 363
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPluginState(I)I
    .locals 2
    .param p1, "pluginType"    # I

    .prologue
    .line 499
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    .line 501
    .local v0, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v1

    .line 506
    .end local v0    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I
    .locals 2
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    .line 346
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v1

    .line 350
    .end local v0    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getPlugins(I)Ljava/util/List;
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v3, :cond_1

    .line 464
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPluginCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 465
    .local v0, "allPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v2, "statePlugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 468
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 469
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    .end local v0    # "allPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    .end local v1    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v2    # "statePlugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method protected loadBusPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .locals 4
    .param p1, "iniName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    const-string/jumbo v2, "PluginLoader"

    const-string/jumbo v3, "loadBusPluginInfo iniFile name is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-object v1

    .line 719
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getAssetPluginIniFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->parseIniFile(Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginLoader"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected loadEnterApkPluginIntent(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string/jumbo v1, "PluginLoader"

    const-string/jumbo v2, "loadEnterApkPluginIntent packageName is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.framework.action.remote"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader$2;-><init>(Lcom/iflytek/framework/plugin/internal/PluginLoader;Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;)V

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 278
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method protected loadInstalledApkPluginInfo(Landroid/content/Intent;Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;

    .prologue
    .line 198
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader$1;-><init>(Lcom/iflytek/framework/plugin/internal/PluginLoader;Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 232
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 233
    return-void
.end method

.method protected loadPluginInfo(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .locals 5
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .prologue
    const/4 v2, 0x0

    .line 693
    if-nez p1, :cond_0

    .line 694
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, "loadPluginInfo plugin info is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-object v2

    .line 699
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "pluginPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getCachePluginIniFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->parseIniFile(Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 701
    .end local v1    # "pluginPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected loadZipPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .locals 6
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->checkZipPluginFile(Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, "checkZipLegal":Z
    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v4, "PluginLoader"

    const-string/jumbo v5, "loadZipPluginInfo | zip file not legal"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-object v3

    .line 110
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getZipPluginIniFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 111
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->parseIniFile(Ljava/io/InputStream;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 112
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PluginLoader"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected queryApkPlugin()Ljava/util/List;
    .locals 5
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
    .line 441
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v3, :cond_1

    .line 442
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPluginCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 443
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "apkList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 446
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getIsAPkPlugin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    .end local v0    # "allList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    .end local v1    # "apkList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    .end local v2    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method protected queryApkPluginResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 547
    :goto_0
    return-object v0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryApkPluginResolveInfo()Ljava/util/List;

    move-result-object v2

    .line 538
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 539
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 540
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 541
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    move-object v0, v3

    .line 547
    goto :goto_0
.end method

.method protected queryApkPluginResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 516
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.framework.action.remote"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 524
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginLoader"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected queryPlugin(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    const-string/jumbo v3, "PluginLoader"

    const-string/jumbo v4, "queryPlugin packageName is empty"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    return-object v1

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/PluginPool;->getPluginCache()Ljava/util/ArrayList;

    move-result-object v0

    .line 422
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 425
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected queryPluginSqlInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->queryAllPlugins()Ljava/util/List;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected queryPluginSqlinfo(I)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    .line 400
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {v2, v3}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->queryPluginById(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 401
    .local v0, "pluginSqlInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 402
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    check-cast v1, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .line 406
    .end local v0    # "pluginSqlInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .restart local v1    # "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :cond_0
    return-object v1
.end method

.method protected setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    invoke-interface {p2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginBundle()Lcom/iflytek/yd/plugin/AbsPluginBundle;

    move-result-object v0

    .line 156
    .local v0, "bundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->setPluginState(I)V

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 176
    .end local v0    # "bundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v0    # "bundle":Lcom/iflytek/yd/plugin/AbsPluginBundle;
    :pswitch_0
    invoke-virtual {v0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->onPluginInstall()V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {v0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->onPluginStart()V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-virtual {v0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->onPluginUnInstall()V

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-virtual {v0}, Lcom/iflytek/yd/plugin/AbsPluginBundle;->onPluginStop()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected unRegistPluginAbilities(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .locals 3
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v0, 0x0

    .line 677
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 678
    :cond_0
    const-string/jumbo v1, "PluginLoader"

    const-string/jumbo v2, "unRegistPluginAbilities plugin is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 684
    .end local p1    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :goto_0
    return-object p1

    .line 682
    .restart local p1    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    invoke-interface {p1, v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->setPluginAbilities(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected unbindApkPlugin(Z)V
    .locals 3
    .param p1, "apkBind"    # Z

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 p1, 0x0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PluginLoader"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updatePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 2
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    const-string/jumbo v0, "PluginLoader"

    const-string/jumbo v1, "updatePluginCache plugin is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    .line 667
    :goto_0
    return v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->isExist(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginPool:Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginPool;->updatePlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->contains(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->update(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)I

    .line 667
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateSqlPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p2, "state"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginLoader;->mPluginDatabase:Lcom/iflytek/framework/plugin/internal/PluginDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->update(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;I)I

    .line 764
    :cond_0
    return-void
.end method
