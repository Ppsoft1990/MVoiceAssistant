.class public Lsc;
.super Lcom/iflytek/greenplug/server/pm/PackageParser;
.source "PackageParserApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected j:Ljava/lang/Object;

.field protected k:Ljava/lang/Object;

.field protected l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lsc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsc;->m:Ljava/lang/String;

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
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/pm/PackageParser;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0}, Lsc;->a()V

    .line 58
    return-void
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v0, "android.content.pm.PackageParser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->b:Ljava/lang/Class;

    .line 63
    const-string/jumbo v0, "android.content.pm.PackageParser$Activity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->c:Ljava/lang/Class;

    .line 64
    const-string/jumbo v0, "android.content.pm.PackageParser$Service"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->d:Ljava/lang/Class;

    .line 65
    const-string/jumbo v0, "android.content.pm.PackageParser$Provider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->e:Ljava/lang/Class;

    .line 66
    const-string/jumbo v0, "android.content.pm.PackageParser$Instrumentation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->f:Ljava/lang/Class;

    .line 67
    const-string/jumbo v0, "android.content.pm.PackageParser$Permission"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->g:Ljava/lang/Class;

    .line 68
    const-string/jumbo v0, "android.content.pm.PackageParser$PermissionGroup"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->h:Ljava/lang/Class;

    .line 70
    :try_start_0
    const-string/jumbo v0, "android.util.ArraySet"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->i:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 75
    const-string/jumbo v0, "android.content.pm.PackageUserState"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lsc;->a:Ljava/lang/Class;

    .line 76
    iget-object v0, p0, Lsc;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsc;->k:Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/UserHandleCompat;->getCallingUserId()I

    move-result v0

    iput v0, p0, Lsc;->l:I

    .line 79
    :cond_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public collectCertificates(I)V
    .locals 8
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "collectCertificates"

    new-array v3, v7, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->j:Ljava/lang/Object;

    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    .line 92
    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lsc;->mPackageParser:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lsc;->j:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public generateActivityInfo(Ljava/lang/Object;I)Landroid/content/pm/ActivityInfo;
    .locals 10
    .param p1, "activity"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generateActivityInfo"

    new-array v3, v9, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->c:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    iget-object v4, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v3, v2, v7

    iget v3, p0, Lsc;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    return-object v1
.end method

.method public generateApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 10
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generateApplicationInfo"

    new-array v3, v9, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->j:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    iget-object v4, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 138
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lsc;->j:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v3, v2, v7

    iget v3, p0, Lsc;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    return-object v1
.end method

.method public generateInstrumentationInfo(Ljava/lang/Object;I)Landroid/content/pm/InstrumentationInfo;
    .locals 8
    .param p1, "instrumentation"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generateInstrumentationInfo"

    new-array v3, v7, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->f:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 130
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/InstrumentationInfo;

    return-object v1
.end method

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
    .line 168
    .local p7, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v5, "generatePackageInfo"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Lsc;->j:Ljava/lang/Object;

    .line 169
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

    const-class v8, Ljava/util/Set;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 168
    invoke-static {v4, v5, v6}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 171
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lsc;->j:Ljava/lang/Object;

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

    aput-object p7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lsc;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v4

    .line 172
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lsc;->m:Ljava/lang/String;

    const-string/jumbo v5, "get generatePackageInfo 1 fail"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_1
    iget-object v4, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v5, "generatePackageInfo"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Lsc;->j:Ljava/lang/Object;

    .line 178
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

    const-class v8, Ljava/util/HashSet;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 177
    invoke-static {v4, v5, v6}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 180
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lsc;->j:Ljava/lang/Object;

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

    aput-object p7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lsc;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 181
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 182
    sget-object v4, Lsc;->m:Ljava/lang/String;

    const-string/jumbo v5, "get generatePackageInfo 2 fail"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_2
    iget-object v4, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v5, "generatePackageInfo"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Lsc;->j:Ljava/lang/Object;

    .line 187
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

    iget-object v8, p0, Lsc;->i:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 186
    invoke-static {v4, v5, v6}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 190
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 191
    .local v2, "grantedPermissionsArray":Ljava/lang/Object;
    iget-object v4, p0, Lsc;->i:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Collection;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 192
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p7, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    if-nez v2, :cond_0

    .line 194
    move-object/from16 v2, p7

    .line 196
    .end local v2    # "grantedPermissionsArray":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lsc;->j:Ljava/lang/Object;

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

    iget-object v7, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lsc;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 197
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lsc;->m:Ljava/lang/String;

    const-string/jumbo v5, "get generatePackageInfo 3 fail"

    invoke-static {v4, v5, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    new-instance v4, Ljava/lang/NoSuchMethodException;

    const-string/jumbo v5, "Can not found method generatePackageInfo"

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public generatePermissionGroupInfo(Ljava/lang/Object;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 8
    .param p1, "permissionGroup"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generatePermissionGroupInfo"

    new-array v3, v7, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->h:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;

    return-object v1
.end method

.method public generatePermissionInfo(Ljava/lang/Object;I)Landroid/content/pm/PermissionInfo;
    .locals 8
    .param p1, "permission"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generatePermissionInfo"

    new-array v3, v7, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->g:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 157
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    return-object v1
.end method

.method public generateProviderInfo(Ljava/lang/Object;I)Landroid/content/pm/ProviderInfo;
    .locals 10
    .param p1, "provider"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generateProviderInfo"

    new-array v3, v9, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->e:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    iget-object v4, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v3, v2, v7

    iget v3, p0, Lsc;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    return-object v1
.end method

.method public generateServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/ServiceInfo;
    .locals 10
    .param p1, "service"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v1, p0, Lsc;->b:Ljava/lang/Class;

    const-string/jumbo v2, "generateServiceInfo"

    new-array v3, v9, [Ljava/lang/Class;

    iget-object v4, p0, Lsc;->d:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    iget-object v4, p0, Lsc;->a:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lsc;->k:Ljava/lang/Object;

    aput-object v3, v2, v7

    iget v3, p0, Lsc;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    return-object v1
.end method

.method public getActivities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "activities"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "instrumentation"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "packageName"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "permissionGroups"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "permissions"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "providers"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "receivers"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "requestedPermissions"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "services"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;I)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lsc;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsc;->mPackageParser:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lsc;->mPackageParser:Ljava/lang/Object;

    const-string/jumbo v1, "parsePackage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsc;->j:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public readIntentFilterFromComponent(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    const-string/jumbo v0, "intents"

    invoke-static {p1, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readNameFromComponent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    const-string/jumbo v0, "className"

    invoke-static {p1, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public writeSignature([Landroid/content/pm/Signature;)V
    .locals 2
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lsc;->j:Ljava/lang/Object;

    const-string/jumbo v1, "mSignatures"

    invoke-static {v0, v1, p1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    return-void
.end method
