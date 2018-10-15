.class public Lcom/iflytek/greenplug/common/utils/compat/QueuedWorkCompat;
.super Ljava/lang/Object;
.source "QueuedWorkCompat.java"


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

.method private static Class()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/QueuedWorkCompat;->sClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 15
    const-string/jumbo v0, "android.app.QueuedWork"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/QueuedWorkCompat;->sClass:Ljava/lang/Class;

    .line 17
    :cond_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/compat/QueuedWorkCompat;->sClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static waitToFinish()V
    .locals 4

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/QueuedWorkCompat;->Class()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "waitToFinish"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 23
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 24
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
