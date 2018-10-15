.class Lcom/iflytek/viafly/account/ui/BindActivity$4;
.super Ljava/util/TimerTask;
.source "BindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/account/ui/BindActivity;->c()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/account/ui/BindActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    const-string/jumbo v0, "BindActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/account/ui/BindActivity;->e(Lcom/iflytek/viafly/account/ui/BindActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->e(Lcom/iflytek/viafly/account/ui/BindActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->e(Lcom/iflytek/viafly/account/ui/BindActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Lcom/iflytek/viafly/account/ui/BindActivity;I)I

    .line 268
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->f(Lcom/iflytek/viafly/account/ui/BindActivity;)Lcom/iflytek/viafly/account/ui/BindActivity$a;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->g(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity$4;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->f(Lcom/iflytek/viafly/account/ui/BindActivity;)Lcom/iflytek/viafly/account/ui/BindActivity$a;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
