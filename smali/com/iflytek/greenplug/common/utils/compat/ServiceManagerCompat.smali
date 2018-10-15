.class public Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;
.super Ljava/lang/Object;
.source "ServiceManagerCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->sClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Class()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 18
    const-string/jumbo v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->sClass:Ljava/lang/Class;

    .line 20
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ServiceManagerCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method
