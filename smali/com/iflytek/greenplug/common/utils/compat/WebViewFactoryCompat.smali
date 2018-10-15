.class public Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;
.super Ljava/lang/Object;
.source "WebViewFactoryCompat.java"


# static fields
.field private static sClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 14
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 15
    const-string/jumbo v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->sClass:Ljava/lang/Class;

    .line 17
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getProvider()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->Class()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getProvider"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 22
    .local v0, "getProvider":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    :cond_0
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
