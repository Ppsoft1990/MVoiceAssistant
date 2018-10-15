.class public Lsd;
.super Lsc;
.source "PackageParserApi22.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x16
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsd;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lsc;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public generatePackageInfo([IIJJLjava/util/HashSet;)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIJJ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .local p7, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    invoke-super/range {p0 .. p7}, Lsc;->generatePackageInfo([IIJJLjava/util/HashSet;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    :goto_0
    return-object v4

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lsd;->m:Ljava/lang/String;

    const-string/jumbo v5, "generatePackageInfo 1 fail"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v4, p0, Lsd;->b:Ljava/lang/Class;

    const-string/jumbo v5, "generatePackageInfo"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Lsd;->j:Ljava/lang/Object;

    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lsd;->i:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lsd;->a:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 40
    invoke-static {v4, v5, v6}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 45
    .local v2, "grantedPermissionsArray":Ljava/lang/Object;
    :try_start_1
    iget-object v4, p0, Lsd;->i:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Collection;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 46
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p7, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 50
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "grantedPermissionsArray":Ljava/lang/Object;
    :goto_1
    if-nez v2, :cond_0

    .line 51
    move-object/from16 v2, p7

    .line 53
    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lsd;->j:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lsd;->k:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lsd;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    goto/16 :goto_0

    .line 47
    .restart local v2    # "grantedPermissionsArray":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
