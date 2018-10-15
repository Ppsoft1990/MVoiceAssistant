.class Layv$3$1;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv$3;->onPlayCompletedCallBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layv$3;


# direct methods
.method constructor <init>(Layv$3;)V
    .locals 0
    .param p1, "this$1"    # Layv$3;

    .prologue
    .line 311
    iput-object p1, p0, Layv$3$1;->a:Layv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Layv$3$1;->a:Layv$3;

    iget-object v0, v0, Layv$3;->a:Layv;

    invoke-static {v0}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u64ad\u653e\u51fa\u9519"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    return-void
.end method
