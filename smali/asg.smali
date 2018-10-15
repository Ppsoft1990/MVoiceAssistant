.class public Lasg;
.super Ljava/lang/Object;
.source "NetPluginInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasg$b;,
        Lasg$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lasg;


# instance fields
.field private c:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

.field private d:Ljava/lang/Object;

.field private e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/SETTINGS_SERVER_PLUGIN_INFO_FILE_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lasg;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lasg;->c:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lasg;->d:Ljava/lang/Object;

    .line 39
    iput-object v1, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 42
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    iput-object v0, p0, Lasg;->c:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    .line 43
    return-void
.end method

.method public static a()Lasg;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lasg;->b:Lasg;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lasg;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lasg;->b:Lasg;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lasg;

    invoke-direct {v0}, Lasg;-><init>()V

    sput-object v0, Lasg;->b:Lasg;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lasg;->b:Lasg;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lasg;)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .locals 1
    .param p0, "x0"    # Lasg;

    .prologue
    .line 26
    iget-object v0, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    return-object v0
.end method

.method static synthetic a(Lasg;ZLcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V
    .locals 0
    .param p0, "x0"    # Lasg;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lasg;->a(ZLcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-static {p0}, Lasg;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(ZLcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V
    .locals 7
    .param p1, "isRequestingAllPlugins"    # Z
    .param p2, "info"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    .line 199
    iget-object v4, p0, Lasg;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 200
    :try_start_0
    invoke-static {p2}, Lasg;->b(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    const-string/jumbo v3, "NetPluginInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveNetPluginInfo() info is not available "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v4

    .line 222
    :goto_0
    return-void

    .line 205
    :cond_0
    if-nez p1, :cond_2

    iget-object v3, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    invoke-static {v3}, Lasg;->b(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v0

    .line 208
    .local v0, "newPluginList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    iget-object v3, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 209
    .local v1, "oldPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v5

    invoke-static {v0, v5}, Lasb;->a(Ljava/util/List;I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v2

    .line 213
    .local v2, "tmpPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-nez v2, :cond_1

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v0    # "newPluginList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    .end local v1    # "oldPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v2    # "tmpPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 218
    :cond_2
    :try_start_1
    iput-object p2, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 219
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    sget-object v5, Lasg;->a:Ljava/lang/String;

    iget-object v6, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    invoke-virtual {v3, v5, v6}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    const-string/jumbo v3, "NetPluginInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveNetPluginInfo() | result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    .line 26
    invoke-static {p0}, Lasg;->b(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "netPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static {p0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 152
    .local v0, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->registerPluginTypeWithId(ILjava/lang/String;)Z

    .line 156
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->registerPluginTypeWithPackage(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method private static b(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    sget-object v2, Lasg;->a:Ljava/lang/String;

    .line 192
    invoke-virtual {v1, v2}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 193
    .local v0, "info":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    const-string/jumbo v1, "NetPluginInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readHistoryNetPluginInfo() | info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .locals 2
    .param p1, "pluginType"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Lasg;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lasb;->a(Ljava/util/List;I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v0

    .line 182
    .local v0, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    return-object v0
.end method

.method public a([ILasg$b;)V
    .locals 6
    .param p1, "pluginTypes"    # [I
    .param p2, "netPluginInfoListener"    # Lasg$b;

    .prologue
    const/4 v0, 0x0

    .line 63
    const-string/jumbo v3, "NetPluginInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestPluginInfo() | pluginTypes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lasd;->a([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    .line 68
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    iget-object v3, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    if-eqz v3, :cond_0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v4, p1

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    .line 71
    .local v2, "pluginType":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "pluginType":I
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 76
    .local v0, "isRequestingAllPlugins":Z
    :cond_1
    iget-object v3, p0, Lasg;->c:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    new-instance v4, Lasg$a;

    invoke-direct {v4, p0, v0, p2}, Lasg$a;-><init>(Lasg;ZLasg$b;)V

    invoke-interface {v3, v1, v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->checkNetPluginUpdate(Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V

    .line 77
    return-void
.end method

.method public a(II)Z
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "currentVersion"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Lasg;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lasb;->a(Ljava/util/List;II)Z

    move-result v0

    .line 168
    .local v0, "isExistNewerPluginVersion":Z
    const-string/jumbo v1, "NetPluginInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isExistNewerPluginVersion() | pluginType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | currentVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | isExistNewerPluginVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lasg;->c()Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    iget-object v1, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    invoke-static {v1}, Lasg;->b(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    iget-object v1, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 84
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    :cond_0
    return-object v0
.end method

.method public c()Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lasg;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lasg;->e()Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    move-result-object v0

    iput-object v0, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lasg;->e:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lasg;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lasg;->b(Ljava/util/List;)V

    .line 162
    return-void
.end method
