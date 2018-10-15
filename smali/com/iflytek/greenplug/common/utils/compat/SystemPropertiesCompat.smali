.class public Lcom/iflytek/greenplug/common/utils/compat/SystemPropertiesCompat;
.super Ljava/lang/Object;
.source "SystemPropertiesCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/utils/compat/SystemPropertiesCompat;->getInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 32
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 30
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/SystemPropertiesCompat;->getMyClass()Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private static getMyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/SystemPropertiesCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 17
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/SystemPropertiesCompat;->sClass:Ljava/lang/Class;

    .line 19
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/SystemPropertiesCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method
