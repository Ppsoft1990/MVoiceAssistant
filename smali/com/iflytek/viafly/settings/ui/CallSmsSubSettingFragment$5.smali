.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$5;
.super Lpb$a;
.source "CallSmsSubSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkSmsDrawOverLayPm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Lpb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreed()V
    .locals 1

    .prologue
    .line 1532
    invoke-super {p0}, Lpb$a;->onAgreed()V

    .line 1533
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->c()V

    .line 1534
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$502(Z)Z

    .line 1535
    return-void
.end method

.method public onDenied()V
    .locals 2

    .prologue
    .line 1525
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$502(Z)Z

    .line 1526
    invoke-super {p0}, Lpb$a;->onDenied()V

    .line 1527
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$5;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb;->a(Landroid/app/Activity;)V

    .line 1528
    return-void
.end method
