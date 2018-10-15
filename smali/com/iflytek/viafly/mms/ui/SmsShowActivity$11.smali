.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Lod$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
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
    .line 1676
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->t(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    .line 1681
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1682
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onCompleted unfinished, start another"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->w(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lod$a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V

    .line 1693
    :goto_0
    return-void

    .line 1690
    :cond_0
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onCompleted finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b()V

    .line 1704
    return-void
.end method
