.class Lor;
.super Ljava/lang/Object;
.source "PermissionCache.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lor;->a:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Lot;

    iget-object v1, p0, Lor;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lot;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lor;->d:Lot;

    .line 45
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/iflytek/common/permission/data/Permission;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    iget-object v7, p0, Lor;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 198
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_1

    .line 199
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 200
    .local v6, "versionName":Ljava/lang/String;
    iget-object v7, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 201
    iget-object v7, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 202
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    .line 205
    .local v0, "cachePermission":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v5

    .line 208
    .local v5, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    invoke-virtual {v5}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    .end local v0    # "cachePermission":Lcom/iflytek/common/permission/data/Permission;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    .end local v6    # "versionName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PermissionCache"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/iflytek/common/permission/data/Permission;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v4, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 224
    iget-object v4, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    .line 228
    .local v0, "cachePermission":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v3

    .line 229
    .local v3, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v3}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    .end local v0    # "cachePermission":Lcom/iflytek/common/permission/data/Permission;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    .end local v3    # "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "permissionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    const-string/jumbo v9, "PermissionCache"

    const-string/jumbo v10, "getPermissionByKey key is empty"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 125
    :cond_0
    :goto_0
    return-object v6

    .line 98
    :cond_1
    iget-object v9, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v6, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    iget-object v9, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/permission/data/Permission;

    .line 106
    .local v4, "permission":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v4}, Lcom/iflytek/common/permission/data/Permission;->getPermissionInfo()Lcom/iflytek/common/permission/data/PermissionInfo;

    move-result-object v5

    .line 107
    .local v5, "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {v5}, Lcom/iflytek/common/permission/data/PermissionInfo;->getPermissionInfoMap()Ljava/util/HashMap;

    move-result-object v3

    .line 110
    .local v3, "perHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/common/permission/data/PermissionType;

    .line 112
    .local v7, "type":Lcom/iflytek/common/permission/data/PermissionType;
    if-eqz v7, :cond_2

    sget-object v9, Lcom/iflytek/common/permission/data/PermissionType;->PERMIT:Lcom/iflytek/common/permission/data/PermissionType;

    if-eq v7, v9, :cond_2

    .line 113
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    .end local v3    # "perHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    .end local v4    # "permission":Lcom/iflytek/common/permission/data/Permission;
    .end local v5    # "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    .end local v7    # "type":Lcom/iflytek/common/permission/data/PermissionType;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "PermissionCache"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    .end local v6    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_3
    move-object v6, v8

    .line 125
    goto :goto_0
.end method

.method public a()V
    .locals 7

    .prologue
    .line 48
    iget-object v5, p0, Lor;->d:Lot;

    if-eqz v5, :cond_1

    .line 49
    iget-object v5, p0, Lor;->d:Lot;

    invoke-virtual {v5}, Lot;->b()V

    .line 50
    iget-object v5, p0, Lor;->d:Lot;

    invoke-virtual {v5}, Lot;->c()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "cacheList":Ljava/util/List;, "Ljava/util/List<Lox;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lox;

    .line 53
    .local v4, "permissionSql":Lox;
    invoke-static {v4}, Loy;->a(Lox;)Lcom/iflytek/common/permission/data/Permission;

    move-result-object v1

    .line 55
    .local v1, "permission":Lcom/iflytek/common/permission/data/Permission;
    if-eqz v1, :cond_0

    .line 56
    invoke-static {v1}, Loy;->a(Lcom/iflytek/common/permission/data/Permission;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionKey()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "permissionKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    iget-object v6, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v2

    .line 61
    .local v2, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    iget-object v6, p0, Lor;->a:Landroid/content/Context;

    invoke-static {v6, v2}, Loy;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/PermissionApp;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    iget-object v6, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v0    # "cacheList":Ljava/util/List;, "Ljava/util/List<Lox;>;"
    .end local v1    # "permission":Lcom/iflytek/common/permission/data/Permission;
    .end local v2    # "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    .end local v3    # "permissionKey":Ljava/lang/String;
    .end local v4    # "permissionSql":Lox;
    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const-string/jumbo v2, "PermissionCache"

    const-string/jumbo v3, "updatePermissionCache packageName is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    invoke-direct {p0, p2}, Lor;->b(Ljava/lang/String;)Lcom/iflytek/common/permission/data/Permission;

    move-result-object v0

    .line 176
    .local v0, "cachePermission":Lcom/iflytek/common/permission/data/Permission;
    if-eqz v0, :cond_0

    .line 177
    iget-object v2, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v0    # "cachePermission":Lcom/iflytek/common/permission/data/Permission;
    :pswitch_1
    invoke-direct {p0, p2}, Lor;->c(Ljava/lang/String;)Lcom/iflytek/common/permission/data/Permission;

    move-result-object v1

    .line 182
    .local v1, "deletePermission":Lcom/iflytek/common/permission/data/Permission;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionKey()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/iflytek/common/permission/data/Permission;)V
    .locals 3
    .param p1, "permission"    # Lcom/iflytek/common/permission/data/Permission;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-static {p1}, Loy;->a(Lcom/iflytek/common/permission/data/Permission;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    :cond_0
    const-string/jumbo v1, "PermissionCache"

    const-string/jumbo v2, "addPermissionCache permission not legal"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionKey()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "appkey":Ljava/lang/String;
    iget-object v1, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lor;->d:Lot;

    invoke-static {p1}, Loy;->c(Lcom/iflytek/common/permission/data/Permission;)Lox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lot;->b(Lox;)I

    .line 143
    :goto_1
    iget-object v1, p0, Lor;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v2

    invoke-static {v1, v2}, Loy;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/PermissionApp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    iget-object v1, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_4
    iget-object v1, p0, Lor;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lor;->d:Lot;

    invoke-static {p1}, Loy;->c(Lcom/iflytek/common/permission/data/Permission;)Lox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lot;->c(Lox;)I

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v4, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v3, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    iget-object v4, p0, Lor;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/permission/data/Permission;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;"
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PermissionCache"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/common/permission/data/Permission;>;>;"
    .end local v3    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method
