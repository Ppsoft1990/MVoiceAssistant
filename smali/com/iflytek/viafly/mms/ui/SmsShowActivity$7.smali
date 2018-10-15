.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;
.super Ljava/util/TimerTask;
.source "SmsShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Z)Z

    .line 759
    const-string/jumbo v0, "SmsShowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSmsComing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;->cancel()Z

    .line 761
    return-void
.end method
