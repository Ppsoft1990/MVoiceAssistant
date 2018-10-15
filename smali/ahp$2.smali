.class Lahp$2;
.super Ljava/lang/Object;
.source "HomeSpeechHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahp;


# direct methods
.method constructor <init>(Lahp;)V
    .locals 0
    .param p1, "this$0"    # Lahp;

    .prologue
    .line 699
    iput-object p1, p0, Lahp$2;->a:Lahp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lahp$2;->a:Lahp;

    invoke-virtual {v0}, Lahp;->u()Lqr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lahp$2;->a:Lahp;

    invoke-static {v0}, Lahp;->b(Lahp;)Lqr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lahp$2;->a:Lahp;

    invoke-static {v0}, Lahp;->b(Lahp;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->g()Z

    .line 706
    iget-object v0, p0, Lahp$2;->a:Lahp;

    invoke-static {v0}, Lahp;->b(Lahp;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->c()V

    .line 708
    iget-object v0, p0, Lahp$2;->a:Lahp;

    invoke-static {v0}, Lahp;->b(Lahp;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e()V

    .line 711
    :cond_0
    return-void
.end method
