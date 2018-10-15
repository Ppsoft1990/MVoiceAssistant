.class Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;
.super Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;
.source "INotificationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;->b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    .line 916
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    .line 917
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 923
    const/4 v0, 0x1

    .line 924
    .local v0, "index":I
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v0, :cond_1

    .line 925
    aget-object v2, p3, v0

    .line 926
    .local v2, "obj":Ljava/lang/Object;
    const-string/jumbo v4, "mView"

    invoke-static {v2, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 927
    .local v3, "view":Landroid/view/View;
    const-string/jumbo v4, "mNextView"

    invoke-static {v2, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 928
    .local v1, "nextView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 929
    const-string/jumbo v4, "mContext"

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;->mHostContext:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 931
    :cond_0
    if-eqz v3, :cond_1

    .line 932
    const-string/jumbo v4, "mContext"

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;->mHostContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    .end local v1    # "nextView":Landroid/view/View;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method
