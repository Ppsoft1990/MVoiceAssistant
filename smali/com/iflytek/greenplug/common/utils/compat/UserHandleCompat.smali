.class public Lcom/iflytek/greenplug/common/utils/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallingUserId()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 18
    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string/jumbo v3, "getCallingUserId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 19
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 22
    goto :goto_0
.end method
