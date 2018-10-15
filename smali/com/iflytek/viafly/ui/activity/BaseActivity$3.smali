.class Lcom/iflytek/viafly/ui/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/BaseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/BaseActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity$3;->this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity$3;->this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->setTitleLeftButtonHigh()V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity$3;->this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->setTitleLeftButtonNormal()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
