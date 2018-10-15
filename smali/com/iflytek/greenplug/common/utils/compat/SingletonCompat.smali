.class public Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;
.super Ljava/lang/Object;
.source "SingletonCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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
    .line 15
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 16
    const-string/jumbo v0, "android.util.Singleton"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->sClass:Ljava/lang/Class;

    .line 18
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "targetSingleton"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 36
    const-string/jumbo v0, "get"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isSingleton(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return v2

    .line 26
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/SingletonCompat;->Class()Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 28
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method
