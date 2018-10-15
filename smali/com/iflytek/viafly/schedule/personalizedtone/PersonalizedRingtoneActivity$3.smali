.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 241
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lawx;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->d(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lawx$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lawx;->a(Lawx$a;)V

    .line 245
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->e(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)Lawx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lawx;->a(Z)J

    move-result-wide v0

    .line 246
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;I)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity$3;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;->f(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneActivity;)V

    goto :goto_0
.end method
