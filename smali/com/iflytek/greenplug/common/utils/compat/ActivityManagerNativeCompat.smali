.class public Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;
.super Ljava/lang/Object;
.source "ActivityManagerNativeCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 16
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 17
    const-string/jumbo v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->sClass:Ljava/lang/Class;

    .line 19
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getDefault()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityManagerNativeCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
