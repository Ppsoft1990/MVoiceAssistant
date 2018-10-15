.class Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;
.super Ljava/lang/Object;
.source "HotWordUpLoadingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

.field final synthetic val$upLoadButton:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Lcom/iflytek/base/skin/customView/XTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;->val$upLoadButton:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;->val$upLoadButton:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#d5e4fc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;->val$upLoadButton:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
