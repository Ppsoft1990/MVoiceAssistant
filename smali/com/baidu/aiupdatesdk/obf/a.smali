.class public Lcom/baidu/aiupdatesdk/obf/a;
.super Ljava/lang/Object;
.source "ActionFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<",
            "Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;>;"
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/protocol/coder/a;

    move-result-object v1

    .line 32
    .local v1, "coder":Lcom/baidu/aiupdatesdk/protocol/coder/a;
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/l;->a()Lcom/baidu/aiupdatesdk/obf/l;

    move-result-object v0

    .line 33
    .local v0, "action":Lcom/baidu/aiupdatesdk/obf/l;
    invoke-virtual {v0, v1, p1}, Lcom/baidu/aiupdatesdk/obf/l;->a(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 34
    return-void
.end method
