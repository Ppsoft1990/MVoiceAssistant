.class Lcom/iflytek/viafly/Home$3;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/Home;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/iflytek/viafly/Home$3;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1197
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ViaFlyApp;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Lmv;

    iget-object v1, p0, Lcom/iflytek/viafly/Home$3;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1}, Lmv;-><init>(Landroid/content/Context;)V

    sget v1, Lmx;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmv;->a(ILmw;)V

    .line 1202
    :goto_0
    return-void

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/Home$3;->a:Lcom/iflytek/viafly/Home;

    const-string/jumbo v1, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u76f4\u63a5\u70b9\u51fb\u542f\u52a8"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
