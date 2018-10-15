.class public Lcom/migu/a/b/e;
.super Ljava/lang/Object;
.source "MtkDualModeSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/migu/a/b/f;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 19
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    const-string/jumbo v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 21
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "gsm.sim.operator.imsi"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 25
    if-ne p1, v5, :cond_1

    .line 27
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37
    :catch_1
    move-exception v0

    .line 39
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 40
    :catch_2
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 43
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 44
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 46
    :cond_2
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_3
    move-exception v0

    .line 49
    new-instance v1, Lcom/migu/a/b/f;

    invoke-direct {v1, v0}, Lcom/migu/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
