.class public Lcom/iflytek/greenplug/common/utils/compat/ITelephonyCompat;
.super Ljava/lang/Object;
.source "ITelephonyCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Class()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ITelephonyCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 18
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ITelephonyCompat;->sClass:Ljava/lang/Class;

    .line 20
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ITelephonyCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 24
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v1, "asInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
