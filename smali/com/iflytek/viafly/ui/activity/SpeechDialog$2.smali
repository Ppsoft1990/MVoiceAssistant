.class Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;
.super Ljava/lang/Object;
.source "SpeechDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 276
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v1, v1, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$000(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v0, v0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v0, v0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getMainTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    iget-object v0, v0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getMainTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->access$000(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;->this$0:Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->onPost()V

    .line 284
    return-void
.end method
