.class Lcom/iflytek/viafly/homepage/LxHomeDialogView$3$1;
.super Ljava/lang/Object;
.source "LxHomeDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;->onPlayCompletedCallBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3$1;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3$1;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u64ad\u653e\u51fa\u9519"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    return-void
.end method
