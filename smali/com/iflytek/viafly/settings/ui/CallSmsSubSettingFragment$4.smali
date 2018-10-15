.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$4;
.super Lpb$a;
.source "CallSmsSubSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkCallDrawOverLayPm()V
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
    .line 1501
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Lpb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreed()V
    .locals 1

    .prologue
    .line 1511
    invoke-super {p0}, Lpb$a;->onAgreed()V

    .line 1512
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->c()V

    .line 1513
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$402(Z)Z

    .line 1514
    return-void
.end method

.method public onDenied()V
    .locals 2

    .prologue
    .line 1504
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$402(Z)Z

    .line 1505
    invoke-super {p0}, Lpb$a;->onDenied()V

    .line 1506
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb;->a(Landroid/app/Activity;)V

    .line 1507
    return-void
.end method
