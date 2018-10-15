.class Lcom/baidu/aiupdatesdk/obf/h$1;
.super Ljava/lang/Object;
.source "AsUpdateFlow.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/h;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/CheckUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/aiupdatesdk/obf/n",
        "<",
        "Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/aiupdatesdk/obf/h;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/h;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/h;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/h$1;->b:Lcom/baidu/aiupdatesdk/obf/h;

    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/h$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "info":Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 52
    invoke-virtual {p3}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/h$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/w;->a(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$1;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/b;->a(I)Lcom/baidu/aiupdatesdk/obf/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V

    .line 55
    move-object v0, p3

    .line 56
    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/aiupdatesdk/obf/e;->a:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$1;->b:Lcom/baidu/aiupdatesdk/obf/h;

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/h;->a(Lcom/baidu/aiupdatesdk/obf/h;)Lcom/baidu/aiupdatesdk/CheckUpdateCallback;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;)Lcom/baidu/aiupdatesdk/UpdateInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/aiupdatesdk/CheckUpdateCallback;->onCheckUpdateCallback(Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    .line 62
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p3, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aiupdatesdk/obf/h$1;->a(ILjava/lang/String;Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;)V

    return-void
.end method
